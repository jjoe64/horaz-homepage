$(function() {
	// highlight selected navi
	var path = location.pathname
	var top_path = path
	var sub_path = path
	
	if (path == '/') {
		path = '/about/intro.html';
	}
	top_path = path.substring(0, path.indexOf('/', 2))
	if (path.indexOf('/', path.indexOf('/', 2)+1) != -1) {
		sub_path = path.substring(0, path.indexOf('/', path.indexOf('/', 2)+1))
	}
	
	
	// top nav
	$('#top-menu li a[href^="'+top_path+'"]').parent().addClass('selected')
	
	// sub nav
	$('#sub-menu li a[href^="'+sub_path+'"]').addClass('selected')
	
	// sub2 nav
	$('#sub2-menu a[href="'+path+'"]').addClass('selected')
})