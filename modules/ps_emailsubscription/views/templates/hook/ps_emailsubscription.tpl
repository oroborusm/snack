{**
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
 *}

<div class="block_newsletter col-lg-12 col-md-12 col-sm-12">
  <div class="row">
    <!-- <p id="block-newsletter-label" class="col-md-5 col-xs-12">{l s='Get our latest news and special sales' d='Shop.Theme'}</p> -->
    <p id="block-newsletter-label" class="col-md-12 col-xs-12 block-newsletter-label">Suscribete y obten las últimas novedades y promociones.</p>
    <div class="col-md-12 col-xs-12 newsletter">
      <form action="{$urls.pages.index}#footer" method="post">
        <div class="newsletter-input">
          <div class="input-wrapper">
            <input
            name="email"
            type="text"
            value="{$value}"
            placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
            aria-labelledby="block-newsletter-label"
            >
          </div>
          <input
            class="btn btn-primary newsletter-button"
            name="submitNewsletter"
            type="submit"
            value="{l s='Subscribe' d='Shop.Theme.Actions'}"
          >
          <!-- <input
            class="btn btn-primary hidden-sm-up"
            name="submitNewsletter"
            type="submit"
            value="{l s='OK' d='Shop.Theme.Actions'}"
          > -->
          <input type="hidden" name="action" value="0">
        </div>
        <div class="col-xs-12">
            {if $conditions}
              <p>{$conditions}</p>
            {/if}
            {if $msg}
              <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                {$msg}
              </p>
            {/if}
        </div>
      </form>
    </div>
  </div>
</div>