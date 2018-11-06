document.addEventListener("turbolinks:load", function () {
	$input = $("[data-behavior='autocomplete']")

	var options = {
		getValue: function(element){
			return element.nom_reel + '\u2002' +  element.code_postal;
		},

		url: function(phrase){
			return "/search.json?q=" + phrase;
		},
		categories : [
		{
			listLocation: "info",
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
