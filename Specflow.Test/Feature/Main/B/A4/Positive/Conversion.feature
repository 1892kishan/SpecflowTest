Feature: Conversion

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is able to TRY_PARSE valid input to date
	When Run cql from file Try Parse conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 23 Mar 2020 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is not able to TRY_PARSE invalid input to date
	When Run cql from file Try Parse conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | text  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CONVERT valid input to date
	When Run cql from file Try Convert conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 23 Mar 2020 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CONVERT invalid input to date
	When Run cql from file Try Convert conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | text  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CAST valid input to date
	When Run cql from file Try Cast conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 23 Mar 2020 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CAST invalid input to date
	When Run cql from file Try Cast conditionalCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | text  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CONVERT valid input to number
	When Run cql statement Select CASE WHEN TRY_CONVERT(numeric,@param) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 56789028484 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CONVERT invalid input to number
	When Run cql statement Select CASE WHEN TRY_CONVERT(numeric,@param) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is able to TRY_PARSE valid input to number
	When Run cql statement Select CASE WHEN TRY_PARSE(@param as numeric) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 56789028484 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is not able to TRY_PARSE invalid input to number
	When Run cql statement Select CASE WHEN TRY_PARSE(@param as numeric) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CAST valid input to number
	When Run cql statement Select CASE WHEN TRY_CAST(@param as numeric) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value       |
		| param | 56789028484 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CAST invalid input to number
	When Run cql statement Select CASE WHEN TRY_CAST(@param as numeric) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CONVERT valid input to real
	When Run cql statement Select CASE WHEN TRY_CONVERT(real,@param) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                   |
		| param | 56789028484.23423432423 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CONVERT invalid input to real
	When Run cql statement Select CASE WHEN TRY_CONVERT(real,@param) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is able to TRY_PARSE valid input to real
	When Run cql statement Select CASE WHEN TRY_PARSE(@param as real) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                |
		| param | 56789028484.23234234 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 @DEF001809
Scenario: User is not able to TRY_PARSE invalid input to real
	When Run cql statement Select CASE WHEN TRY_PARSE(@param as real) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CAST valid input to real
	When Run cql statement Select CASE WHEN TRY_CAST(@param as real) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                   |
		| param | 56789028484.23424324234 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is not able to TRY_CAST invalid input to real
	When Run cql statement Select CASE WHEN TRY_CAST(@param as real) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| param | Test  |
	Then Run cql result contains FALSE

	@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CONVERT valid input to text
	When Run cql statement Select CASE WHEN TRY_CONVERT(text,@param) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                   |
		| param | 56789028484.23423432423 |
	Then Run cql result contains TRUE

@Rest @MIN_VERSION_4.19 
Scenario: User is able to TRY_CAST valid input to text
	When Run cql statement Select CASE WHEN TRY_CAST(@param as text) IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END as Test; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                   |
		| param | 56789028484.23424324234 |
	Then Run cql result contains TRUE