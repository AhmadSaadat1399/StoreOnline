  $(document).ready(function() {
	var posit;
	var pos;
	var div= 'html';
	var fl=true;
	var amount = 6;//amount of pages
	$("a").click(function () {
		if ($(this).attr("href").substr($(this).attr("href").indexOf('#'),6)=='#page_') {
		fl=false;
      	elementClick = $(this).attr("href");
      	destination = $(elementClick).offset().top;
		if ($.browser.webkit) {div='body'}
		$(div).animate({ scrollTop: destination-40}, 1500, function(){ fl=true});
     	return false;}
    });
	var doc=0;
	setInterval(SetActBut,150);
	
	function SetActBut(){
		new_doc=$(div).attr('scrollTop');
		if ((new_doc!=doc)&&(fl)){
			doc=new_doc;
			for (var i=1; i<=amount; i++) {
				elem=$('.menu'+i+' a').attr("href");
				pos=$(elem).offset().top;
				if ((pos-doc-40)<=300) {
					$('.menu').removeClass('menu_active');
					$('.menu :hover'+i).addClass('menu_active');
					Cufon.refresh();
				}
			}
		}
	}
  });
