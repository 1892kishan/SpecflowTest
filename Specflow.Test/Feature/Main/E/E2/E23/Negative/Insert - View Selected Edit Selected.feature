Feature: Insert - View Selected Edit Selected

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into a Link Column using ResolveLink with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertLinkColumn13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	When As User View Selected Edit Selected Run cql from file insertLinkColumn14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, Link Calculated Cache

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	When As User View Selected Edit Selected Run cql from file insertLinkColumn15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, Link Calculated Live, Link CalLink Live

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Multi Select Link Column with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertMultiLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSL

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Multi Select Link Column By Square Bracket with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertMultiLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSL

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Multi Select Link Column By Version with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertMultiLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSL

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Multi Select Choice Column with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertMultiChoiceColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSC

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into a Multi Select Choice Column with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then Run cql result failed with exception Access denied on column(s) Name, MSC

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into hierarchy link column using ResolveLink with no permission to that column
	When As User View Selected Edit Selected Run cql from file insertHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, HLink

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into hierarchy link column using ResolveLink
	When As User View Selected Edit Selected Run cql from file insertHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Mark  |
	Then Run cql result failed with exception Access denied on column(s) Name, HLink

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into hierarchy link column using Cinchy id, Version syntax
	When As User View Selected Edit Selected Run cql from file insertHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, HLink

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into hierarchy link column using square brackets syntax
	When As User View Selected Edit Selected Run cql from file insertHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, HLink

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into table of columns types : Text, Number, Date, Yes/No, Single select choice columns
	When As User View Selected Edit Selected Run cql from file insertSimpleColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, Salaried, Start Date, Employee Term

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into table of columns types using parameters: Text, Number, Date, Yes/No, Single select choice columns
	When As User View Selected Edit Selected Run cql from file insertSimpleColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
		| value2 | Yes              |
		| value3 | 324224           |
		| value4 | 15 Mar 2020      |
		| value5 | Co-op            |
	Then Run cql result failed with exception Access denied on column(s) Name, Salaried, Start Date, Employee Term

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into multi select hierarchy link column using ResolveLink
	When As User View Selected Edit Selected Run cql from file insertMultiHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, using parameters, Insert into multi select hierarchy link column using ResolveLink
	When As User View Selected Edit Selected Run cql from file insertMultiHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value      |
		| value1 | Mark,Annie |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	When As User View Selected Edit Selected Run cql from file insertMultiHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into multi select hierarchy link column using square brackets syntax
	When As User View Selected Edit Selected Run cql from file insertMultiHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, MSH

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert multiple rows
	When As User View Selected Edit Selected Run cql from file insertMultipleRow3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Name, User, Job, Manager, Person, Role

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column using ResolveLink
	When As User View Selected Edit Selected Run cql from file insertLinkColumn16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column using square bracket syntax
	When As User View Selected Edit Selected Run cql from file insertLinkColumn17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column using Cinchy Version syntax
	When As User View Selected Edit Selected Run cql from file insertLinkColumn18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - As user with edit selected columns and view selected columns, Insert into a Link Column that references simple column types
	When As User View Selected Edit Selected Run cql from file insertLinkColumn19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on column(s) User