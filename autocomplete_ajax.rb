AUTOCOMPLETE AJAX

<select name="classname" id="autocomplete_id">

SELECT2 CDN
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<script>
	$("#autocomplete_id").select2({
	    placeholder: "Search here",
	    minimumInputLength: 2,
	    tags: [],
	    ajax: {
	        url: '/path',
	        dataType: 'json',
	        type: "POST",
	        delay: 250,
	        data: function (params) {
	            return {
	                term: params.term
	            };
	        },
	        processResults: function (response) {
	            return {
	                results: response
	            };
	        }
	    }
	 });
</script>