document.addEventListener("turbolinks:load", function () {
	$input = $("[data-behavior='autocomplete']")

	var options = {
		getValue: "nom_reel",
		url: function(phrase){
			return "/search.json?q=" + phrase;
		},
		categories : [
		{
			listLocation: "nom_reel",
		},
		{
			listLocation: "code_postal",
		}
		],
		list: {
			onChooseEvent: function() {
				var url = $input.getSelectedItemData().url
				//$input.val("")
				//Turbolinks.visit(url)
			}
		}
	}
	$input.easyAutocomplete(options)
});
