import kendo.Address
import kendo.Country
import kendo.Person

import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONElement

import org.apache.commons.lang.RandomStringUtils;

class BootStrap {

	def fixtureLoader

	def init = { servletContext ->

		URL url = new URL("http://www.geognos.com/api/en/countries/info/all.json")
		JSONElement countries = JSON.parse(url.getText())
		countries.Results.each{
			Country country = new Country(name:it.value.Name).save(flush:true)
		}
		int i = 1
		List countryList = Country.list()
		200.times{
			Country country = countryList[i]
			Address address = new Address(streetName:RandomStringUtils.randomAlphabetic(7).toLowerCase().capitalize(), streetNumber:RandomStringUtils.randomNumeric(2), city:RandomStringUtils.randomAlphabetic(6).toLowerCase().capitalize(), zipCode:RandomStringUtils.randomNumeric(2)+"-"+RandomStringUtils.randomNumeric(3), country:country).save(flush:true)
			new Person(firstName:RandomStringUtils.randomAlphabetic(5).toLowerCase().capitalize(), surName:RandomStringUtils.randomAlphabetic(8).toLowerCase().capitalize(), address:address).save()
			i++
		}
	}

	def destroy = {
	}
}