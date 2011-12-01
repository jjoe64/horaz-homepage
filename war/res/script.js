$(function() {
	// highlight selected navi
	var path = location.pathname
	var top_path = path
	if (path == '/') {
		path = '/about/intro.html';
	}
	top_path = path.substring(0, path.indexOf('/', 2))
	
	// top nav
	$('#top-menu li a[href^="'+top_path+'"]').parent().addClass('selected')
	
	// sub nav
	$('#sub-menu li a[href="'+path+'"]').addClass('selected')
})