$(function(){
  $('.page_status label').click(function(event){
    console.log("click");
    $('.page_status label').show();
    $('.page_status select').hide();
    $(this).next().show().click();
    $(this).hide();
  });
  $('.field input').bind("keypress, change", function(event){
    $(this).parents("form").find(".actions input").show();
  });
  $('.page_status select').change(function(event){
    console.log("change");
    $(this).prev().show().removeAttr("class").addClass($(this).val());
    $(this).hide();    
    $(this).parents("form").find(".pagesubmit input").show();
  });
});
