Feature: Insert - Admin

@Rest
Scenario: As Admin, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User Admin Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn1.txt and validate unordered result VhResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn2.txt and validate unordered result VhResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn3.txt and validate unordered result VhResultLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value          |
		| value1 | AutomationTest |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectLinkColumn3.txt and validate unordered result VhResultLinkColumn4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest78 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultLinkColumn4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest91 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest90 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiLinkColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest89 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultMultiLinkColumn3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultMultiLinkColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest92 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiChoiceColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then As User Admin Run cql from file VhSelectColumn1.txt and validate unordered result VhResultMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest80 |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result DdResultMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn1.txt and validate unordered result AdResultMultiChoiceColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest87 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, using parameters, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Jason |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest79 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest88 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest86 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Insert into table of columns types : Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertSimpleColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultSimpleColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultSimpleColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultSimpleColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Insert into table of columns types using parameters: Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertSimpleColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
		| value2 | Yes              |
		| value3 | 324224           |
		| value4 | 15 Mar 2020      |
		| value5 | Co-op            |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultSimpleColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest81 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultSimpleColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultSimpleColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# Ordering of MSH
# TSQL - Annie,Jason
# PGSQL - Jason,Annie
@Rest
Scenario: As Admin, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest85 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# Ordering of MSH
# TSQL - Annie,Jason
# PGSQL - Jason,Annie
@Rest
Scenario: As Admin, using parameters, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value       |
		| value1 | Jason,Annie |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest84 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultMultiHierarchyColumn2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest83 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultMultiHierarchyColumn3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# Ordering of MSH
# TSQL - Annie,Jason
# PGSQL - Jason,Annie
@Rest
Scenario: As Admin, Insert into multi select hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn2.txt and validate unordered result VhResultMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultMultiHierarchyColumn4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# Ordering of MSH
# TSQL - Annie,Jason
# PGSQL - Jason,Annie
@Rest
Scenario: As Admin, Insert multiple rows
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	Given Cleanup Run cql from file ChangeApprovalCleanup1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run cql from file insertMultipleRow1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file VhSelectColumn3.txt and validate unordered result VhResultMultipleRow1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result DdResultMultipleRow1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectColumn2.txt and validate unordered result AdResultMultiHierarchyColumn1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Cleanup Run cql from file ChangeApprovalCleanup3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
	Then Cleanup Run cql from file ChangeApprovalCleanup4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
	Then Cleanup Run cql from file ChangeApprovalCleanup3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds