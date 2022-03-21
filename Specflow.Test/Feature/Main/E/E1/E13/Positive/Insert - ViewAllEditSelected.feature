Feature: Insert - ViewAllEditSelected

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectLinkColumn2.txt and validate unordered result VhResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest92 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest90 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest83 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest85 |

@Rest
Scenario: As user with edit selected columns and view all columns, Insert into multi select hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User ViewAllEditSelected Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest80 |

@Rest
Scenario: As user with edit selected columns and view all columns, using parameters, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewAllEditSelected Run cql from file insertMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value       |
		| value1 | Jason,Annie |
	Then As User ViewAllEditSelected Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest84 |