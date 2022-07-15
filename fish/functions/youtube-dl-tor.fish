function youtube-dl-tor --wraps=yt-dlp --description "Runs youtube-dl/yt-dlp behind a socks proxy" 
  yt-dlp --proxy 'socks5://localhost:9050' $argv; 
end
