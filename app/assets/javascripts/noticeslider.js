$(function(){
	$('#slider').bxSlider({
							mode		:'horizontal',
							infiniteLoop:'true',		
							speed		:50000,	
							auto		:true,
							autoStart	:true,
							autoHover	:true,
							autoDirection:'prev',
							//autoDirection:'next',
							pause		:10,
							easing: 'linear', 
							autoHover: true,		
							displaySlideQty: 3	
							
						});
})
