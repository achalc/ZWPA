// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require jquery_nested_form
//= require foundation
//= require turbolinks

//= require_tree .

$(function(){ $(document).foundation(); });

// Datepicker code
$(function() {
  $(".datepicker").datepicker({
  	changeMonth: true,
    changeYear: true,
    //format: 'mm/dd/YYYY'
    dateFormat: "yy-mm-dd"
  });

  //FOR WALKTHROUGH
  //check which checkboxes/radio boxes need to be checked on load, then add css
  $( document ).ready(function(){

  	//checks that client is selected before submit on
  	//'new request' page
  	$('.reqForm').on("submit", function(){
  		if ($('#request_customer_id').val()==''){
  			alert("Please select valid client.");
  			return false;
  		}
		
	});

  	//for TABLES
  	//Clicking row redirects to link of first anchor tag in table row
  	$('tr').click(function(){

  		//the first link inside the row
  		anchorObj = $(this).find('a')[0];

  		//ensure the link isn't undefined before redirecting
  		if (typeof anchorObj !='undefined'){
  			anchorObj.click();
  		}
  		
  	})


  	//option buttons on home page hover
  	$('.option').hover(function(){
  		$(this).toggleClass('option_hover');
  	})

  	//iterate through radio boxes first
  	$('input:radio').each(function() {
  		
  		if(this.checked==true){

  			if($(this).val()=="Yes"){

				$(this).parent().addClass('radio-checked-yes');
			}
			else if($(this).val()=="No"){
				$(this).parent().addClass('radio-checked-no');
			}
			else{
				$(this).parent().addClass('radio-checked-dk');
			}
  		}

  	})

  	//iterate checkboxes
  	$('input:checkbox').each(function() {
  		if(this.checked==true){
  			
  			$(this).parent().addClass('boxed-checked');
  		}
  		

  	})

  });


  	// alternate css checkbox groups

	$('.checkbox').change(function(){
		$(this).toggleClass('boxed-checked');
	})

	
	// alternate css radio groups

	$('input:radio').change(function(){
		var theName = this.name;

		//Iterate through all other radio buttons with the same name
		//attribute to toggle their selection css.

		$('input:radio').each(function() {
			if(this.name==theName){
				if($(this).is(':checked')){
					if($(this).val()=="Yes"){
						
						$(this).parent().addClass('radio-checked-yes');
					}
					else if($(this).val()=="No"){
						$(this).parent().addClass('radio-checked-no');
						
					}
					else{
						$(this).parent().addClass('radio-checked-dk');
					}



				} 
				else{
					if($(this).val()=="Yes"){
						$(this).parent().removeClass('radio-checked-yes');
					}
					else if($(this).val()=="No"){
						$(this).parent().removeClass('radio-checked-no');
					}
					else{
						$(this).parent().removeClass('radio-checked-dk');
					}
					
				}

			};
		
		});

	});
	


});



//bottom nav bar

//save form on click
$(document).ready(function(){

    $('.save-button').click(function(){
    	$('.form-sub').submit();
    });
});



