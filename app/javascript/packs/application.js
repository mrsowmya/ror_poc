// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "bootstrap"
import "../stylesheets/application";
import "@fortawesome/fontawesome-free/js/all";

import $ from 'jquery';
global.$ = jQuery;

window.sortData = function(obj) {
	$("#users-list-data th").on("click", function() {
    var sortOrder = $(this).attr('sort-order') == "asc" ? "desc" : "asc";
    var sortColumn = $(this).attr('sort-column');
    var search = $('#search').val();

    $(this).attr('sort-order', sortOrder);

    $.ajax({
      url: `/users?sort_order=${sortOrder}&sort_column=${sortColumn }&search=${search}`,
      method: 'GET',
      dataType: 'script'
    });
  });
}

