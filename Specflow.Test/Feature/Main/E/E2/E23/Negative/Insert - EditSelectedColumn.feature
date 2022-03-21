Feature: Insert - EditSelectedColumn

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Choice Column
	When As User EditSelectedColumn Run cql from file insertMultiChoiceColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Link Column
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Link Column By Square Bracket
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Link Column By Version
	When As User EditSelectedColumn Run cql from file insertMultiLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - As user with edit selected columns, Insert into multi select hierarchy link column using Cinchy id, Version syntax with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns, Insert into multi select hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns, Insert into multi select hierarchy link column using square brackets syntax with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns, using parameters, Insert into a Multi Select Choice Column
	When As User EditSelectedColumn Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - As user with edit selected columns, using parameters, Insert into multi select hierarchy link column using ResolveLink with no permission to that column
	When As User EditSelectedColumn Run cql from file insertMultiHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value      |
		| value1 | Mark,Annie |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns, using parameters, Insert into a Multi Select Choice Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into hierarchy link column using ResolveLink
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into hierarchy link column using ResolveLink
	When As User EditSelectedColumn1 Run cql from file insertHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Mark  |
	Then Run cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Choice Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiChoiceColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: RT - As user with view selected columns, using parameters, Insert into a Multi Select Choice Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Link Column with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Multi Select Link Column By Square Bracket with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: RT - As user with view selected columns, Insert into a Multi Select Link Column By Version with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertMultiLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into a Link Column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using ResolveLink with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using square bracket syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using Cinchy Version syntax with no permission to that column
	When As User EditSelectedColumn1 Run cql from file insertLinkColumn18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person