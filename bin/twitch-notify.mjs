#!/usr/bin/env zx
$.verbose = false;

const clientId = process.env['TWITCH_SELECT_CLIENT_ID'];
const clientSecret = process.env['TWITCH_SELECT_CLIENT_SECRET'];

async function refreshToken() {
	const token = await getAuthToken();
	return await getTokenData(token);
}

async function getTokenData(token) {
	const result = await fetch(`https://id.twitch.tv/oauth2/validate`, {
		headers: {
			"Authorization": `OAuth ${token}`
		}
	}).then(res => res.json());

	const currentTime = Date.now();
	const expiryTime = currentTime + (result['expires_in'] * 1000);

	return {
		userId: result['user_id'],
		expiry: expiryTime,
		token
	};
}

async function getAuthToken() {
	const result = await $`twid ${clientId} ${clientSecret}`;
	return result.toString().trim();
}

async function getFollowedStreams(token, userId) {
	const result = await fetch(`https://api.twitch.tv/helix/users/follows?from_id=${userId}&first=100`, {
		headers: {
			"Client-ID": clientId,
			"Authorization": `Bearer ${token}`
		}
	}).then(res => res.json());

	return result.data.map(follow => follow.to_id);
}

async function getOnlineStreams(followed, token) {
	const idList = followed.join('&user_id=');
	return await fetch(`https://api.twitch.tv/helix/streams?first=100&user_id=${idList}`, {
		headers: {
			"Client-ID": clientId,
			"Authorization": `Bearer ${token}`
		}
	}).then(res => res.json()).then(res => res.data);
}

function notifyAbout(stream) {
	console.log(`Notifying about stream ${stream.user_name} being online.`);
	$`notify-send "Twitch Notify" "${stream.user_name} is now online playing ${stream.game_name}:\n${stream.title}"`;
}



let online = [];
let tokenData = null;

async function checkOnline() {
	if(tokenData == null || tokenData.expiry <= (Date.now() - 60000)) {
		tokenData = await refreshToken();
	}

	const followed = await getFollowedStreams(tokenData.token, tokenData.userId);
	const currentlyOnline = await getOnlineStreams(followed, tokenData.token);
	const nowOnline = [];
	currentlyOnline.forEach(stream => {
		if(!online.some(oldStream => oldStream.user_id === stream.user_id)) {
			notifyAbout(stream);
		}
		nowOnline.push(stream);
	});

	online = nowOnline;
}

checkOnline();
setInterval(checkOnline, 60 * 1000);
