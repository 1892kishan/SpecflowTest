Feature: Insert - ViewAllEditSelected

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	When As User ViewAllEditSelected Run cql from file insertLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Link CalculatedLink Cache, Link Calculated Cache, Link Calculated UDF Cache

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	When As User ViewAllEditSelected Run cql from file insertLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Link Calculated Live, Link CalculatedLink Live, Link CalLink Live

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into hierarchy link column using ResolveLink
	When As User ViewAllEditSelected Run cql from file insertHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into hierarchy link column using ResolveLink
	When As User ViewAllEditSelected Run cql from file insertHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Jason  |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into hierarchy link column using Cinchy id, Version syntax
	When As User ViewAllEditSelected Run cql from file insertHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into hierarchy link column using square brackets syntax
	When As User ViewAllEditSelected Run cql from file insertHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into table of columns types : Text, Number, Date, Yes/No, Single select choice columns
	When As User ViewAllEditSelected Run cql from file insertSimpleColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Salaried, Annual Base Compensation

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into table of columns types using parameters: Text, Number, Date, Yes/No, Single select choice columns
	When As User ViewAllEditSelected Run cql from file insertSimpleColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
		| value2 | Yes              |
		| value3 | 324224           |
		| value4 | 15 Mar 2020      |
		| value5 | Co-op            |
	Then Run cql result failed with exception Access denied on column(s) Salaried, Annual Base Compensation

@Rest
Scenario: As user with edit selected columns and view all columns, Insert multiple rows
	When As User ViewAllEditSelected Run cql from file insertMultipleRow1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Link CalculatedLink Cache, Link Calculated Cache, Link Calculated UDF Cache

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Choice Column with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Square Bracket with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Version with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into a Multi Select Choice Column with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into a Link Column using ResolveLink with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using ResolveLink with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertLinkColumn12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using square bracket syntax with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertLinkColumn11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using Cinchy Version syntax with no permission to that column
	When As User ViewAllEditSelected1 Run cql from file insertLinkColumn10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person