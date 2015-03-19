$(window).ready(function(){

  var submitSearch = function(){
    $("#new_search").submit();
  }

  var lazySearch = _.debounce(submitSearch, 300);
  
  $("#new_search input[type=text]").on("keyup", lazySearch);
  $("#new_search select").on("change", lazySearch);

});
