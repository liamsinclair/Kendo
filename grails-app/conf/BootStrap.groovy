import kendo.Person


class BootStrap {

	def fixtureLoader

	def init = { servletContext ->


		int i = 1
		50.times{
			new Person(firstName:"Jan${i}", surName:"Kowalski${i}").save()
			new Person(firstName:"Witold${i}", surName:"Nowak${i}").save()
			new Person(firstName:"Maria${i}", surName:"Storczyk${i}").save()
			i++
		}
	}

	def destroy = {
	}
}