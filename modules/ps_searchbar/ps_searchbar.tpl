<!-- Block search module TOP -->
<div id="search_widget" class="sb-search" data-search-controller-url="{$search_controller_url}">
  <form method="get" action="{$search_controller_url}">
    <input type="hidden" name="controller" value="search">

    <input class="sb-search-input" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}" type="text" name="s" value="{$search_string}" name="search" aria-label="{l s='Search' d='Shop.Theme.Catalog'}" id="search">
    <input class="sb-search-submit" type="submit" value="">
    <span class="sb-icon-search">
      <i class="material-icons search">&#xE8B6;</i>
    </span>
  </form>
</div>

<!-- /Block search module TOP -->
