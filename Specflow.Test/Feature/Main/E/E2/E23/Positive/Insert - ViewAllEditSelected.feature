Feature: Insert - ViewAllEditSelected

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest92 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest90 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest83 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest85 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest80 |

@Rest
Scenario: RT - As user with edit selected columns and view all columns, using parameters, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value       |
		| value1 | Jason,Annie |
	Then As User ViewAllEditSelected Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest84 |