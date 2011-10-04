$(function(){
  $('.page_status label').click(function(event){
    $('.page_status label').show();
    $('.page_status select').hide();
    $(this).next().show().click();
    $(this).hide();
  });
  $('.page_status select').change(function(event){
    $(this).prev().show().removeAttr("class").addClass($(this).val());
    $(this).hide();    
  });
  
  $('form').bind('ajax:error', function(event) {
    alert("There was an error! Changes could not be saved.");
  });
  $('.delete_page').bind('ajax:success', function(event) {
    $(this).parents("li").first().remove();
  });

});

