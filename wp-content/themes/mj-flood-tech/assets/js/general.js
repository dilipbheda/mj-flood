var $ = jQuery;
$(document).ready(function () {
  $(".navbar-toggle").click(function (e) {
    $("html").toggleClass("overflow-hidden");
  });
  headerscroll();
});


/*** Header Sticky Js ***/
function headerscroll() {
  var headerheight = $("header").height();
  var scroll = $(window).scrollTop();
  if (scroll >= headerheight) {
    $("header").addClass("sticky");
  } else {
    $("header").removeClass("sticky");
  }
};
$(window).scroll(function () {
  headerscroll();
});


/*** Hero Slider Js ***/
// var swiper = new Swiper('.hero-swiper', {
//   loop: true,
//   autoplay: {
//     delay: 5000,
//     disableOnInteraction: false,
//   },
//   effect: 'fade',
//   speed: 2000,
//   autoplayDisableOnInteraction: true,
//   slidesPerView: 1,
//   pagination: {
//     el: '.swiper-pagination',
//     clickable: true,
//   },
// });

