<div class="cart" id="_desktop_cart">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="cart-int">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}
        <div class="svg">
          <svg width="18px" height="18px" viewBox="0 0 34 34" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g id="Desktop-HD-Copy" transform="translate(-1338.000000, -62.000000)" fill-rule="nonzero" fill="#3C3B3B">
                      <g id="shopping-cart" transform="translate(1338.000000, 62.000000)">
                          <path d="M10.2,27.2 C8.33,27.2 6.8,28.73 6.8,30.6 C6.8,32.47 8.33,34 10.2,34 C12.07,34 13.6,32.47 13.6,30.6 C13.6,28.73 12.07,27.2 10.2,27.2 Z M0,0 L0,3.4 L3.4,3.4 L9.52,16.32 L7.14,20.4 C6.97,20.91 6.8,21.59 6.8,22.1 C6.8,23.97 8.33,25.5 10.2,25.5 L30.6,25.5 L30.6,22.1 L10.88,22.1 C10.71,22.1 10.54,21.93 10.54,21.76 L10.54,21.5899333 L12.07,18.6999333 L24.65,18.6999333 C26.01,18.6999333 27.03,18.0199333 27.54,16.9999333 L33.66,5.95 C34,5.61 34,5.44 34,5.1 C34,4.08 33.32,3.4 32.3,3.4 L7.14,3.4 L5.61,0 L0,0 Z M27.2,27.2 C25.33,27.2 23.8,28.73 23.8,30.6 C23.8,32.47 25.33,34 27.2,34 C29.07,34 30.6,32.47 30.6,30.6 C30.6,28.73 29.07,27.2 27.2,27.2 Z" id="Shape"></path>
                      </g>
                  </g>
              </g>
          </svg>
        </div>
        <!-- <span class="cart-txt">{l s='Cart' d='Shop.Theme.Checkout'}</span> -->
        <span class="cart-products-count">{$cart.products_count}</span>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
