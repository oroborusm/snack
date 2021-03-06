<div class="product-line-grid">
  <!--  product left content: image-->
  <div class="product-line-grid-left product-line-img">
    <span class="product-image media-middle">
      <img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}">
    </span>
  </div>

  <!--  product left body: description -->
  <div class="product-line-grid-body col-md-4 col-xs-8 product-line-desc">
    <div class="product-line-info">
      <a class="label product-name-cart" href="{$product.url}" data-id_customization="{$product.id_customization|intval}">{$product.name}</a>
    </div>

    <div class="product-line-info product-price h5 {if $product.has_discount}has-discount{/if}">
      {if $product.has_discount}
        <div class="product-discount">
          <span class="regular-price">{$product.regular_price}</span>
          {if $product.discount_type === 'percentage'}
            <span class="discount discount-percentage">
                -{$product.discount_percentage_absolute}
              </span>
          {else}
            <span class="discount discount-amount">
                -{$product.discount_to_display}
              </span>
          {/if}
        </div>
      {/if}
      <div class="current-price">
        <span class="price">{$product.price}</span>
        {if $product.unit_price_full}
          <div class="unit-price-cart">{$product.unit_price_full}</div>
        {/if}
      </div>
    </div>

    <br/>

    <!-- {foreach from=$product.attributes key="attribute" item="value"}
      <div class="product-line-info">
        <span class="label">{$attribute}:</span>
        <span class="value">{$value}</span>
      </div>
    {/foreach} -->

    {if $product.customizations|count}
      <br>
      {block name='cart_detailed_product_line_customization'}
        {foreach from=$product.customizations item="customization"}
          <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
          <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                </div>
                <div class="modal-body">
                  {foreach from=$customization.fields item="field"}
                    <div class="product-customization-line row">
                      <div class="col-sm-3 col-xs-4 label">
                        {$field.label}
                      </div>
                      <div class="col-sm-9 col-xs-8 value">
                        {if $field.type == 'text'}
                          {if (int)$field.id_module}
                            {$field.text nofilter}
                          {else}
                            {$field.text}
                          {/if}
                        {elseif $field.type == 'image'}
                          <img src="{$field.image.small.url}">
                        {/if}
                      </div>
                    </div>
                  {/foreach}
                </div>
              </div>
            </div>
          </div>
        {/foreach}
      {/block}
    {/if}
  </div>

  <!--  product left body: description -->
  <div class="product-line-price">
    <div class="col-xs-4 hidden-md-up"></div>
    <div class="col-md-12 product-line-price-int">
      <div class="qty">
        {if isset($product.is_gift) && $product.is_gift}
          <span class="gift-quantity">{$product.quantity}</span>
        {else}
          <input
            class="js-cart-line-product-quantity"
            data-down-url="{$product.down_quantity_url}"
            data-up-url="{$product.up_quantity_url}"
            data-update-url="{$product.update_quantity_url}"
            data-product-id="{$product.id_product}"
            type="text"
            value="{$product.quantity}"
            name="product-quantity-spin"
            min="{$product.minimal_quantity}"
          />
        {/if}
      </div>
      <div class="col-md-6 col-xs-2 price">
        <span class="product-price">
          <strong>
            {if isset($product.is_gift) && $product.is_gift}
              <span class="gift">{l s='Gift' d='Shop.Theme.Checkout'}</span>
            {else}
              <span>Total</span> {$product.total}
            {/if}
          </strong>
        </span>
      </div>
    </div>
  </div>



  <div class="text-xsright">
    <div class="cart-line-product-actions">
      <a
      class                       = "remove-from-cart"
      rel                         = "nofollow"
      href                        = "{$product.remove_from_cart_url}"
      data-link-action            = "delete-from-cart"
      data-id-product             = "{$product.id_product|escape:'javascript'}"
      data-id-product-attribute   = "{$product.id_product_attribute|escape:'javascript'}"
      data-id-customization   	  = "{$product.id_customization|escape:'javascript'}"
      >
      {if !isset($product.is_gift) || !$product.is_gift}
      <div class="close">
        <svg width="11px" height="11px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
          <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <g transform="translate(-1243.000000, -203.000000)" fill-rule="nonzero" fill="#666">
              <g id="close-button" transform="translate(1243.000000, 203.000000)">
                <polygon id="Shape" points="24 2.4 21.6 0 12 9.6 2.4 0 0 2.4 9.6 12 0 21.6 2.4 24 12 14.4 21.6 24 24 21.6 14.4 12"></polygon>
              </g>
            </g>
          </g>
        </svg>
      </div>
      {/if}
    </a>

    {block name='hook_cart_extra_product_actions'}
    {hook h='displayCartExtraProductActions' product=$product}
    {/block}

    </div>
  </div>
</div>
