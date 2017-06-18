/**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */
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

import './components/block-cart';
import Search from './components/search';

// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}

$(document).ready(() => {
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

    if (wScroll <= winHeight){
      $('.steps').css("top", stepDistance - pixels + "px")
    }
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

  $('.steps').css('top', stepDistance)
  var stepDistance = -240


  function stepAnimated(){
    $('.stepAp.animated').each(function(i){
      setTimeout(function(){
        $('.stepAp.animated').eq(i).addClass('bounceIn');
      }, 200 * i);
    });
  }
  stepAnimated()

  new UISearch( document.getElementById( 'search_widget' ) );

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
});
