// dotjs File for github enhancements
$(function() {
	// Re-Add explore link at the top
	var elem = $('<li class="header-nav-item"><a data-selected-links="/trending /explore" data-hotkey="g p" data-ga-click="Header, click, Nav menu - item:explore context:user" class="js-selected-navigation-item header-nav-link" href="/explore">Explore</a></li>');
	$('html body.logged_in.env-production.windows.page-dashboard div.header.header-logged-in.true div.container.clearfix ul.header-nav.left').prepend(elem);

	// Remove "Repositories you contributed to"
	if(window.location.pathname === "/") {
		$(".dashboard-sidebar").children()[0].remove();
	}

	//Hide starred repositories
	if(window.location.pathname === "/trending") {
		$(".repo-list-item").each(function() {
			var elem = $(this);
			if($($(elem.children()[0]).children()[0]).hasClass("on")){
				elem.remove();
			}
		});
	}
});
