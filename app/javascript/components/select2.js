import $ from 'jquery';
import 'select2';


$('.select-sectors').select2({
  multiple: true
});

$(".js-example-tags").select2({
  tags: true
});

// Requiring CSS! Path is relative to ./node_modules
import 'select2/dist/css/select2.css';
