MULTIPLE UPLOAD - RAILS

create a separate model for storing all images 

$(document).ready(function(){
	$('.add_more').click(function(e){
	  e.preventDefault();
	  $(this).before("<input name='images[]' type='file' style='padding-left: 38px;'/>");
	});
});

<%= file_field_tag "images[]", type: :file , id: 'postedImage', multiple: true, style: 'padding-left: 38px' %>
<div class="add_more btn btn-sm btn-default">+</div>