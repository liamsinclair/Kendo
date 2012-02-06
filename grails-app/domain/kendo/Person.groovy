package kendo

class Person {

	String firstName
	String surName
	Address address

	static constraints = { address(nullable:true) }
}
