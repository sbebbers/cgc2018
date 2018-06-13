/**
 * This script handles page load events on all pages
 */
$(function(){
	$(".flash").fadeOut(2e3);
	$("ul#nav-items > li").on("click touch",function(){
		let link = $(this).html().split("\"");
		let i = 0;
		for(i; i < link.length; i++){
			if(link[i].substr(0,4) == 'http'){
				window.location.href = link[i];
			}
		}
	});
});