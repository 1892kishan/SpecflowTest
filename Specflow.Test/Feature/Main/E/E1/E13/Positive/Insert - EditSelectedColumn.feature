Feature: Insert - EditSelectedColumn

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file VhSelectLinkColumn2.txt and validate unordered result VhResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User User with All Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |