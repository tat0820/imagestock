var ytData = [
  {
      id:'movie01',
      movie:'mdxYu3j8xCc'
  }
];

var ytPlayer = [], ytPlaying, ytStop, ytPlay;

var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

function onYouTubeIframeAPIReady() {
  ytPlayer[thisIndex] = new YT.Player(ytData[thisIndex]['id'], {
      controls: 0,
      disablekb: 0,
      iv_load_policy: 3,
      modestbranding: 1,
      rel: 0,
      showinfo: 0,
      videoId: ytData[thisIndex]['movie'],
      playerVars: {
          autoplay: 1,
          playsinline: 1
      },
      events: {
          "onReady": onPlayerReady,
      }
  });
}

function onPlayerReady(event) {
  event.target.mute();
  event.target.playVideo();
}

$(function(){
  $('.movielist a').on('click', function(){
      var self = $(this),
      thisId = self.attr('id');
      thisIndex = self.attr('data-mvnum') - 1;
      onYouTubeIframeAPIReady()
  });
});