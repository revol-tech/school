$(function(){

	$('#slider').bxSlider({
							mode		:'horizontal',
							infiniteLoop:'true',		
							speed		:30000,	
							auto		:true,
							autoStart	:true,
							autoHover	:true,
							//autoDirection:'prev',
							autoDirection:'next',
							pause		:0,
							easing: 'linear', 
							autoHover: true,		
							displaySlideQty: 3	
							
						});
/*

  $('#slider').hover(
    function(){
      
      $(this).stop();
      
    },function(){
          
      	$(this).bxSlider({
							  mode		:'horizontal',
							  infiniteLoop:'true',		
							  speed		:5000,	
							  auto		:true,
							  autoStart	:true,
							  autoHover	:true,
							  autoDirection:'prev',
							  //autoDirection:'next',
							  pause		:0,
							  easing: 'linear', 
							  autoHover: true,		
							  displaySlideQty: 3	
							
						  });
      
      }
  )
*/
})


