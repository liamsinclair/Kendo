package kendo

class Address {

	static belongsTo = [person : Person]

	String streetName
	String streetNumber
	String zipCode
	String city
	Country country

	static constraints = {
	}
}
