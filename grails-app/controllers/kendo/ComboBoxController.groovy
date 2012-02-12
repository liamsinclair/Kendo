package kendo

class ComboBoxController {

	def show(){
		render(view: "/combobox")
	}

	def list(){

		def results = Country.createCriteria().list { order("name","asc") }

		render(contentType: "text/json") {
			data = array {
				results.each{ countryItem id:it.id, name:it.name }
			}
		}
	}
}

