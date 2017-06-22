<div id="_desktop_user_info" class="desktop_user_info">
  <div class="user-info">
    {if $logged}
      <div class="user-logged">
        <div class="nombre" id="user_setting">
          <span>{$customerName}</span>
          <span>
            <svg width="10px" height="6px" viewBox="0 0 10 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Desktop-HD-Copy" transform="translate(-1275.000000, -79.000000)" fill-rule="nonzero" fill="#666666">
                        <g id="downwards-arrow-key" transform="translate(1275.000000, 79.000000)">
                            <polygon id="Shape" points="1.12716638 0 4.83071307 3.66016311 8.53425975 0 9.66142613 1.11398439 4.83071307 5.88803828 0 1.11398439"></polygon>
                        </g>
                    </g>
                </g>
            </svg>
          </span>
        </div>
        <div class="user-dropdown">
          <div class="user__order-inner">
            <div class="user-dropdown-int">
              <a class="account" href="{$my_account_url}" title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow">
                Mi cuenta
              </a>
            </div>
            <div class="user-dropdown-int">
              <a class="logout" href="{$logout_url}" rel="nofollow">
                {l s='Sign out' d='Shop.Theme.Actions'}
              </a>
            </div>

            <button class="user__close">
              <svg width="13px" height="13px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs></defs>
                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g transform="translate(-1243.000000, -203.000000)" fill-rule="nonzero" fill="#FFFFFF">
                        <g id="close-button" transform="translate(1243.000000, 203.000000)">
                            <polygon id="Shape" points="24 2.4 21.6 0 12 9.6 2.4 0 0 2.4 9.6 12 0 21.6 2.4 24 12 14.4 21.6 24 24 21.6 14.4 12"></polygon>
                        </g>
                    </g>
                </g>
              </svg>
            </button>
          </div>
        </div>
      </div>
    {else}
      <a href="{$my_account_url}" title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow">
        <i class="material-icons">&#xE7FD;</i>
        <span class="hidden-sm-down">{l s='Sign in' d='Shop.Theme.Actions'}</span>
      </a>
    {/if}
  </div>
</div>
