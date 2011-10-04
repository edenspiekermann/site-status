$(function(){
  $('.page_status label').click(function(event){
    $('.page_status label').show();
    $('.page_status select').hide();
    $(this).next().show().focus();
    $(this).hide();
  });
  $('.page_status select').bind("change, blur", function(event){
    $(this).prev().show().removeAttr("class").addClass($(this).val());
    $(this).hide();    
  });
  
  $('form').bind('ajax:error', function(event) {
    alert("There was an error! Changes could not be saved.");
  });
  $('form').bind('ajax:success', function(event) {
    $(this).parents(".wrapper").first().addClass("noform");
  });
  $('form').bind('keydown', function(event) {
    if (event.keyCode == 27) {
      $(this).find(":focus").blur();
      $(this).parents(".wrapper").first().addClass("noform");
    }
  });
  $('.delete_page').bind('ajax:success', function(event, html, orig) {
    $(this).parents("li").first().remove();
    $('.nav').each(function(){
      $(this).attr("class", "nav col" + ($(this).find("> *").length - 1));
    });
  });

  $('.noform input, .page_status select').focus(function(){ 
    $(this).parents(".wrapper").first().removeClass("noform");
  });

});

