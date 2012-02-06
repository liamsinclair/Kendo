package kendo

class LiveGridController {

	def list(){
		render(view: "/livegrid")
	}

	def listAll() {

		List personList = Person.list(max: params.pageSize, offset:params.skip)
		Long personCount = Person.count()

		render(contentType: "text/json") {
			count = personCount
			data = array {
				personList.each{
					person id:it.id, firstName: it.firstName, surName:it.surName
				}
			}
		}
	}
}
