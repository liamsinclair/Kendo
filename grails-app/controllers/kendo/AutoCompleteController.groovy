package kendo


class AutoCompleteController {

	def list(){
		render(view: "/autocomplete")
	}

	def listData(){

		def results = Country.createCriteria().list {
			like("name", "${params.q}%")
		}

		render(contentType: "text/json") {
			data = array {
				results.each{ countryItem name:it.name }
			}
		}
	}
}

