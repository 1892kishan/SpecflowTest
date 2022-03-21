Feature: Builder Valid Data Formats

@Rest
Scenario: As Builder, Exceeds the max length for default Value
	When As User Builder Run cql from file Max Length Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be less than 500 characters


	#PGSQL v5 -> Error 23505: duplicate key value violates unique constraint "IX_UNIQUE_Tbl204_Col3239"
	#TSQL v4.20 -> Error Cannot insert duplicate key row in object 'dbo.Tbl93' with unique index 'IX_UNIQUE_Tbl93_Col3239'. The duplicate key value is (Test1).The statement has been terminated.
@Rest
Scenario: As Builder, Unique Constraint Violation
	When As User Builder Run cql from file Unique Constraint Violation Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row

@Rest
Scenario: As Builder, Invalid Data Text for Data Type Number
	When As User Builder Run cql from file Data Violation Number insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be a number.

	#Data inserted in v5 -PGSQL
@Rest
Scenario: As Builder, Calculated Column formula failure
	When As User Builder Run cql from file Data Violation Calculated insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception String or binary data would be truncated
	Then Run cql result failed contains with exception The statement has been terminated.

@Rest
Scenario: As Builder, Mandatory Constraint Validation
	Given Cleanup Run cql from file Constraints.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Mandatory Constraints insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Columns Mandatory are mandatory and must be included in the insert

#Scenario: NUMBER : Invalid Format string, like thousand
#
#Scenario: NUMBER : Invalid Format '  '
#
#Scenario: DATE : Invalid Format, string like 'abc'
#
#Scenario: DATE : Invalid Format like '  ', 1234
#
##INSERT INTO [Cinchy Test].[Source Table] ([Text],[Date]) VALUES ('531e5bae-0a41-4483-a9b0-8158c8aa7401','1234');
##Error
##Value must be a valid date.
#Scenario: BOOLEAN : Invalid Format as '  '
#
#Scenario: BOOLEAN : Invalid Format as string
#
#Scenario: BOOLEAN : Invalid Format like -2, +2
#
#Scenario: LINK : column value that cannot be resolved
#
#Scenario: LINK : invalid column that cannot be resolved
#
#Scenario: HIERARCHY LINK : column value that cannot be resolved
#
#Scenario: HIERARCHY LINK : invalid column that cannot be resolved
#
#Scenario: MANDATORY COLUMN : VALUE NULL
#
#Scenario: MANDATORY COLUMN : VALUE NOT NULL
#
#Scenario: UNIQUE COLUMN : VALUE UNIQUE
#
#Scenario: UNIQUE COLUMN : VALUE NOT UNIQUE
#
#Scenario: UNIQUE AND MANDATORY Column: VALUE NOT NULL and UNIQUE
#
#Scenario: UNIQUE AND MANDATORY Column: VALUE NOT NULL and NOT UNIQUE
#
#Scenario: UNIQUE AND MANDATORY Column: VALUE NULL and NOT UNIQUE
#
#Scenario: UNIQUE AND MANDATORY Column: VALUE NULL and UNIQUE
#
#Scenario: MULTI COLUMN UNIQUE INDEX : UNIQUE
#
#Scenario: MULTI COLUMN UNIQUE INDEX : NON UNIQUE
#
#Scenario: Insert into a newly added column
#
#Scenario: Insert into a column that is deleted
#
#Scenario: Insert into a renamed column using the new name
#
#Scenario: Insert into a renamed column using the old name
#
#Scenario: Insert into a table that is deleted
#
#Scenario: Insert into a table that is restored
#
#Scenario: MAX LENGTH : TEXT value lesser than or equal to Maxlength
#
#Scenario: MAX LENGTH : TEXT value greater than Maxlength
#
#Scenario: DEFAULT VALUE, TEXT
#
#Scenario: DEFAULT VALUE, NUMBER
#
#Scenario: DEFAULT VALUE, DATE
#
#Scenario: DEFAULT VALUE, YESNO
#
#Scenario: SINGLE AND MULTI SELECT CHOICE options unavailable
#
#Scenario: Insert into table of columns types : Single and Multi select Link Hierarchy columns using ResolveLink
#
#Scenario: Insert into table of columns types : Nested single and multi select Link columns using ResolveLink
#
#Scenario: Insert into table of columns types : Nested single and multi select Hierarchy Link columns using ResolveLink
#
#Scenario: Insert into table of columns types : Single and Multi select Link Hierarchy columns using 'Cinchy Id','Version'
#
##When As User Builder Run cql statement Valid Format Column Data insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##And Run cql statement Valid Format Column Data insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##Then Run cql from file Valid Format Column Data selectCQL1.txt and validate unordered result Valid Format Column Data insertCQLResult1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name            | Value      |
#Scenario: Insert into table of columns types : Nested single and multi select Link columns using 'Cinchy Id','Version'
#
##When As User Builder Run cql statement Valid Format Column Data insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##Then Run cql from file Valid Format Column Data selectCQL2.txt and validate unordered result Valid Format Column Data insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name            | Value      |
#Scenario: Insert into table of columns types : Nested single and multi select Hierarchy Link columns using 'Cinchy Id','Version'
##When As User Builder Run cql statement Valid Format Column Data insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##And Run cql statement Valid Format Column Data insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##And Run cql statement Valid Format Column Data insertCQL3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name               | Value      |
##Then Run cql from file Valid Format Column Data selectCQL3.txt and validate unordered result Valid Format Column Data insertCQLResult3.txt; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
##	| Name            | Value      |