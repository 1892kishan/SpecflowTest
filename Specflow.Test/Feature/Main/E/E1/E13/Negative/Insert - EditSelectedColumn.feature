Feature: Insert - EditSelectedColumn

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Choice Column
	When As User EditSelectedColumn Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column By Square Bracket
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column By Version
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: As user with edit selected columns, Insert into multi select hierarchy link column using Cinchy id, Version syntax with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: As user with edit selected columns, Insert into multi select hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: As user with edit selected columns, Insert into multi select hierarchy link column using square brackets syntax with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into a Multi Select Choice Column
	When As User EditSelectedColumn Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into multi select hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value       |
		| value1 | Jason,Annie |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Choice Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column By Square Bracket with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns, Insert into a Multi Select Link Column By Version with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into a Multi Select Choice Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into a Link Column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using square bracket syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using Cinchy Version syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: As user with edit selected columns, Insert into hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Jason |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns, Insert into hierarchy link column using Cinchy id, Version syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: As user with edit selected columns, Insert into hierarchy link column using square brackets syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink