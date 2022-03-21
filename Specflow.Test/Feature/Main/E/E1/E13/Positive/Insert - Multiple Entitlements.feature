Feature: Insert - Multiple Entitlements

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn2.txt and validate unordered result VhResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn3.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value          |
		| value1 | AutomationTest |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectLinkColumn3.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest78 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest91 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest90 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest92 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn1.txt and validate unordered result VhResultCommon1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest80 |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result DdResultCommon1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn1.txt and validate unordered result AdResultCommon1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest87 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, using parameters, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Jason |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest79 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest88 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest86 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into table of columns types : Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertSimpleColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into table of columns types using parameters: Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertSimpleColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
		| value2 | Yes              |
		| value3 | 324224           |
		| value4 | 15 Mar 2020      |
		| value5 | Co-op            |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest85 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, using parameters, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value       |
		| value1 | Jason,Annie |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest84 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest83 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert into multi select hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn2.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As user with Multiple Entitlements, Insert multiple rows
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultipleRow1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file VhSelectColumn3.txt and validate unordered result VhResultCommon2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result DdResultCommon3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file selectColumn2.txt and validate unordered result AdResultCommon3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Cleanup Run cql from file ChangeApprovalCleanup3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
	Then Cleanup Run cql from file ChangeApprovalCleanup4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
	Then Cleanup Run cql from file ChangeApprovalCleanup3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds