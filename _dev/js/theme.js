
import 'expose-loader?Tether!tether';
import 'bootstrap/dist/js/bootstrap.min';
import 'flexibility';
import 'bootstrap-touchspin';

import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';

import DropDown from './components/drop-down';
import Form from './components/form';
import ProductMinitature from './components/product-miniature';
import ProductSelect from './components/product-select';
import TopMenu from './components/top-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';
import './lib/classie';

import './components/block-cart';
import Search from './components/search';

// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}

$(document).on("ready", () => {
  let dropDownEl = $('.js-dropdown');
  const form = new Form();
  let topMenuEl = $('.js-top-menu ul[data-depth="0"]');
  let dropDown = new DropDown(dropDownEl);
  let topMenu = new TopMenu(topMenuEl);
  let productMinitature = new ProductMinitature();
  let productSelect  = new ProductSelect();
  dropDown.init();
  form.init();
  topMenu.init();
  productMinitature.init();
  productSelect.init();

  // mis estilos

  //scroll viewer
  var revealClass = '.animated';
  var targetClass = '.has-scroll-reveal:not(' + revealClass + ')';
  var offset = 50;
  var winHeight = $(window).height();

  $(window).on('resizeEnd', function() {
    winHeight = $(window).height();
  });

  triggerAnimation(revealClass, targetClass, offset, winHeight);

  $(window).on('scroll', function() {
    triggerAnimation(revealClass, targetClass, offset, winHeight);

    var wScroll = $(this).scrollTop();
    var pixels= (wScroll/4)

    // if (wScroll <= winHeight){
    //   $('.steps').css("top", stepDistance - pixels + "px")
    // }
    //console.log(wScroll)
    stepAnimated()
  });

  function triggerAnimation(revealClass, targetClass, offset, winHeight) {

    var trigger = $(window).scrollTop() + winHeight - offset;

    $(targetClass).each(function() {
      var elementOffset = $(this).offset().top;
      if( elementOffset < trigger ) {
        $(this).addClass( revealClass.replace('.','') );
      }
    });
  }
  $(window).resize(function() {
    if(this.resizeTO) clearTimeout(this.resizeTO);
    this.resizeTO = setTimeout(function() {
        $(this).trigger('resizeEnd');
    }, 500);
  });

  //$('.steps').css('top', stepDistance)

  // if (window.innerWidth <= 425) {
  //   console.log('pequeño')
  //   var stepDistance = -340
  // }else{
  //   var stepDistance = -240
  // }


  function stepAnimated(){
    $('.stepAp.animated').each(function(i){
      setTimeout(function(){
        $('.stepAp.animated').eq(i).addClass('bounceIn');
      }, 200 * i);
    });
  }
  stepAnimated()


  var boton = $(".stepAp");
  var i=0;
  $('.stepAp:not(:nth-child(3))').addClass('inactivo')
  $(boton).each(function(i) {
    i++;
    $(this).on("mouseenter", function() {
      //$(boton).addClass('triggerActivo')
      if($(this).hasClass('inactivo')){
        //no hagas nada
        $(boton).addClass('inactivo')
        $(boton).removeClass('active')
        $(this).removeClass('inactivo')
      }
      //$(boton).removeClass('triggerActivo')
      $(this).addClass('active')
    })
  });

  $('#user_setting').on('click', function() {
    $('.user-logged').addClass('user_setting_active');
  });

  $('.user__close').on('click', function() {
    $('.user-logged').removeClass('user_setting_active');
  });


  $('.cart__button').on("click", function(){
    $('.cart').addClass('cart--active');
  });
  $('.cart__cancel').on("click", function(){
    $('.cart').removeClass('cart--active');
  });
});
