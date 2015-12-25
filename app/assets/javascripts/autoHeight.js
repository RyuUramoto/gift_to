// $(function() {
//   $(window).on(“load orientationchange resize”,function(){
//     var nav = $('nav');
//     nav_width = parseFloat(nav.width());
//     nav_height = parseFloat(nav.height());
//     $('nav').height(nav_width * 0.3875);
//     $('nav img').height(nav_width * 0.3875);
//   });
// });

$(document).ready(function(){
  window.onresize = function(){
    var nav = $('nav');
    nav_width = parseFloat(nav.width());
    nav_height = parseFloat(nav.height());
    $('nav').height(nav_width * 0.3875);
    $('nav img').height(nav_width * 0.3875);
  };
});
