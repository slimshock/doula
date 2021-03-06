
$(function(){

	/*
	Owl
	--------------------------------------------------
	*/
	$("#owl-demo").owlCarousel({
		 
		items : 4,
		itemsDesktop : [1199,3],
		itemsDesktopSmall : [979,3]
		 
	});

	/*
	Tabs
	--------------------------------------------------
	*/
	$('.tab-nav').find('a').on('click', function(evt) {

		evt.preventDefault();
		$('.tab-nav').find('li').removeClass('active');
		$(this).closest('li').addClass('active');

		$('#tabs-content').find('.tab-content').removeClass('active');
		var href = $(this).attr('href').replace('#', '');
		$('#tabs-content').find('.tab-content[rel="'+href+'"]').addClass('active');

	});

	/*
	Amount
	--------------------------------------------------
	*/
	$( "#amt" ).keyup(function() {
	  
	  if ( $(this).val() !== "" ) {
	  	$('#js-TotalAmount .amount-text').text($(this).val());
	  } else {
	  	$('#js-TotalAmount .amount-text').text('0');
	  }

	});

    /*
	NEW ADDED CODE October 10, 2014
	*/

	/*
	Toggle
	--------------------------------------------------
	*/
	$('.js-toggle').on('click', function() {

		$('.mobile-menu').slideToggle(400, 'easeInOutExpo');

	});

	/*
	Resize
	--------------------------------------------------
	*/
	function mobileMenu() {
		if ( $(window).width() > 768 ) {
			$('.mobile-menu').css('display', 'none');
		}
	}
	mobileMenu();
	$(window).resize(function() {
		mobileMenu();
	});


    function hashState() {

        var hash = window.location.hash,
            k = hash.split('&'),
            hash2 = k[0],
            h = hash2.replace('#', '');

            console.log(k[0]);



        if ( hash2 === "" ) {

            $('.tab-nav').find('li').first().addClass('active');
            $('.tab-content[rel="details"]').addClass('active');

        } else {

            $('.tab-content').removeClass('active');
	        $('.tab-content[rel="'+h+'"]').addClass('active');
	        $('.tab-nav li').removeClass('active');
	        $('.tab-nav a[href="'+hash2+'"]').closest('li').addClass('active');

	    }

	    $('html, body').animate({
            scrollTop: $('#' + k[1]).offset().top
        }, 500);

	    //$('#' + k[1]).scrollTop();
    };

    hashState();
	$(window).on('hashchange', function(){
	    hashState();
	});

});

function validateDoulaForm() {
    var isError
    var amount = document.forms["createDoula"]["funding_amount"].value;


    if( document.forms["createDoula"]["title"].value == "" || document.forms["createDoula"]["title"].value == null )
       {
         //document.forms["createDoula"]["title"].focus() ;
         document.getElementById("title_error").innerHTML="<p style='color:#D81F1F;'>Please provide a title</>";
         isError= true;
       }else{
        document.getElementById("title_error").innerHTML="";
        isError= false;
       }

    if( document.forms["createDoula"]["our_story"].value == "" || document.forms["createDoula"]["our_story"].value == null )
       {
         //document.forms["createDoula"]["our_story"].focus() ;
         document.getElementById("our_story_error").innerHTML="<p style='color:#D81F1F;'>Please describe your Story</>";
         isError= true;
       }else{
        document.getElementById("our_story_error").innerHTML="";
        isError= false;
       }

    if( document.forms["createDoula"]["img_link"].value == "" || document.forms["createDoula"]["img_link"].value == null )
       {
         //document.forms["createDoula"]["img_link"].focus() ;
         document.getElementById("img_link_error").innerHTML="<p style='color:#D81F1F;'>Please select a photo</>";
         isError= true;
       }else{
        document.getElementById("img_link_error").innerHTML="";
        isError= false;
       }

    if( document.forms["createDoula"]["why_want_doula"].value == "" || document.forms["createDoula"]["why_want_doula"].value == null )
       {
         //document.forms["createDoula"]["why_want_doula"].focus() ;
         document.getElementById("why_want_doula_error").innerHTML="<p style='color:#D81F1F;'>Please describe why you want a doula</>";
         isError= true;
       }else{
        document.getElementById("why_want_doula_error").innerHTML="";
        isError= false;
       }

    if( document.forms["createDoula"]["our_doula"].value == "" || document.forms["createDoula"]["our_doula"].value == null )
       {
         //document.forms["createDoula"]["our_doula"].focus() ;
         document.getElementById("our_doula_error").innerHTML="<p style='color:#D81F1F;'>Please describe your doula</>";
         isError= true;
       }else{
        document.getElementById("our_doula_error").innerHTML="";
        isError= false;
       }

    if( document.forms["createDoula"]["funding_amount"].value == "" || document.forms["createDoula"]["funding_amount"].value == null )
       {
         //document.forms["createDoula"]["funding_amount"].focus() ;
         document.getElementById("funding_amount_error").innerHTML="<p style='color:#D81F1F;'>Input your funding amount needed</>";
         isError= true;
       }else{
        document.getElementById("funding_amount_error").innerHTML="";
        isError= false;
       }

    //if( document.forms["createDoula"]["misc"].value == "" || document.forms["createDoula"]["misc"].value == null )
      // {
         //document.forms["createDoula"]["misc"].focus() ;
         //document.getElementById("misc_error").innerHTML="<p style='color:#D81F1F;'>Tell us about more</>";
         //isError= true;
       //}else{
        //document.getElementById("misc_error").innerHTML="";
        //isError= false;
       //}

    if(amount < 500){
         document.getElementById("funding_amount_error").innerHTML="<p style='color:#D81F1F;'>Amount must have a minimum of 500 USD</>";
         isError= true;
    }

    if (isError){
        return false;
        }

    }