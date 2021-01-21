jQuery ($) ->
  $('#product_category_title').autocomplete
    source: $('#product_category_title').data('autocomplete-source')