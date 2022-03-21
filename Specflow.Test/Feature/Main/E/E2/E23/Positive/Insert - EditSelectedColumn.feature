Feature: Insert - EditSelectedColumn

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User User with All Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |