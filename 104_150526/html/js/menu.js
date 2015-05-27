$('.menuSwitch').click(function(e) {
	if($('#menu').css('display') == "none")
	{
		$('#menu').stop().slideDown('fast');
		$(this).addClass('active');
	}else{
		$('#menu').stop().slideUp('fast');
		$(this).removeClass('active');
		$('#menu li').removeClass('active');
		$('#menu li ul').stop().slideUp('fast');
	}
});

$( "#menu" ).menu();

function menuReset()
{
	$('#menu > li').unbind("click");
	$('#menu > li').unbind("hover");
	var w = $(window).width();
	if(w > 768)
	{
		$('#menu > li').children('ul').hide();
		$('#menu li').removeClass('active');
		//
		
		$('#menu').show();
		//
		$('#menu > li').hover(
		function(e){
			$(this).children('ul').stop().slideDown('fast');
			$(this).addClass('active');
			},
		function(e){
			$(this).children('ul').stop().slideUp('fast');
			$(this).removeClass('active');
			}
			)
	}else{
		$('#menu').hide();
		//$('#menu > li').bind("click", function(){menuSwitchFunc($(this))});
		$('#menu > li').click(function(e) {
			if($(this).children('ul').css('display') == "none")
			{
				$(this).children('ul').slideDown('fast');
				$(this).addClass('active');
			}else{
				$(this).children('ul').slideUp('fast');
				$(this).removeClass('active');
			}
		});
	}
}