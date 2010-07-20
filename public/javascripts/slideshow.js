var i=0;
function cyclicCaption() {
	$('#img_caption').html(captions[i]);
	i = (i+1) % captions.length;
	t=setTimeout("cyclicCaption()",4000);
}

function showImgs() {
	$('.slideshow').children().css('visibility','visible');
}

$(document).ready(function() {
		cyclicCaption();
		showImgs();
});


