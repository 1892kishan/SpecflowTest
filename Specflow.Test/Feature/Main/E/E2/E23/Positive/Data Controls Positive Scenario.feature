Feature: Data Controls Positive Scenario

@Rest
Scenario: Insert into a Link Column using ResolveLink as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Link Column using square bracket syntax as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column insertCQL4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Link Column using ResolveLink and square bracket syntax as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column insertCQL5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Link Column using Cinchy Version syntax as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column insertCQL6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Link Column, resolve based on simple column types as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Resolve Link With Simple Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Simple Type insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Simple Type selectCQL.txt and validate unordered result Link Column Simple Type insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
#Scenario: Insert into a Link Column, resolve based on calculated column types as a user with Insert Rows and Edit All columns permission
Scenario: Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	Given Cleanup Run cql from file Resolve Link With Calculated Column Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Resolve Calculated Column Cache insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Resolve Calculated Column Cache selectCQL.txt and validate unordered result Link Column Resolve Calculated Column Cache insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
#Scenario: Insert into a Link Column, resolve based on live calculated column types as a user with Insert Rows and Edit All columns permission (Note: Resolve based on UDF fails)
Scenario: Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	Given Cleanup Run cql from file Resolve Link With Calculated Column Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Resolve Calculated Column Live insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Resolve Calculated Column Live selectCQL.txt and validate unordered result Link Column Resolve Calculated Column Live insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Link Column as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Multi insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Link Column By Square Bracket as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Multi Square Bracket insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Link Column By Version as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column Multi Version insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Hierarchy Column By Square Bracket as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Hierarchy Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Hierarchy Column Multi Square Bracket insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Hierarchy Column Multi selectCQL.txt and validate unordered result Hierarchy Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Hierarchy Column By Version as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Hierarchy Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Hierarchy Column Multi Version insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Hierarchy Column Multi selectCQL.txt and validate unordered result Hierarchy Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Single Select Hierarchy Column By Square Bracket as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Hierarchy Column.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Hierarchy Column Square Bracket insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Hierarchy Column selectCQL.txt and validate unordered result Hierarchy Column CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Single Select Hierarchy Column By Version as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Hierarchy Column.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Hierarchy Column Version insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Hierarchy Column selectCQL.txt and validate unordered result Hierarchy Column CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into a Multi Select Choice Column as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Choice Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Choice Column Multi insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Choice Column Multi selectCQL.txt and validate unordered result Choice Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert multiple rows as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Multiple Row.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Multiple Row insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file Multiple Row selectCQL.txt and validate unordered result Multiple Row CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

#getdate is not resolved inside insert query
@Rest @Ignore
Scenario: Insert using GetDate function as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file GetDate Function.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file GetDate Function insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql from file GetDate Function selectCQL.txt and validate function getdate with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Access cinchy row id as a user with Insert Rows and Edit All columns permission
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Access Cinchy Row Id insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then User is able to access cinchy row id

#Table Team 1) Name (Text) 2) League (Link to Table League Column Name)
#Table League 1) Name
#Requires Insert + Edit for Table team
#Requires Direct Query and View All Columns for Table League
@Rest
Scenario: Insert into table and validate viewable rows as a user with viewable and editable row filter
	Given Cleanup Run cql from file Row Filter.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ann Run cql from file Row Filter insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ann Run cql from file Row Filter selectCQL.txt and validate unordered result Row Filter CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as simple type
	Given Cleanup Run cql from file VRFSimpleType.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFInsertSimpleType Run cql from file VRFSimpleType insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFInsertSimpleType Run cql from file VRFSimpleType selectCQL.txt and validate unordered result VRFSimpleType CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as Link type
	Given Cleanup Run cql from file VRFLinkType.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFInsertLinkType Run cql from file VRFLinkType insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFInsertLinkType Run cql from file VRFLinkType selectCQL.txt and validate unordered result VRFLinkType CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as NestedLink type
	Given Cleanup Run cql from file VRFNestedLinkType.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFInsertNestedLinkType Run cql from file VRFNestedLinkType insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFInsertNestedLinkType Run cql from file VRFNestedLinkType selectCQL.txt and validate unordered result VRFNestedLinkType CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as combination of AND/OR
	Given Cleanup Run cql from file VRFAndOrType.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFAndOrInsert Run cql from file VRFAndOrType insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFAndOrInsert Run cql from file VRFAndOrType selectCQL.txt and validate unordered result VRFAndOrType CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as ExecuteSavedQuery
	Given Cleanup Run cql from file VRFExecuteSavedQueryCurrentUserIdUserGroups.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFExecuteQueryInsert Run cql from file VRFExecuteSavedQuery insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFExecuteQueryInsert Run cql from file VRFExecuteSavedQuery selectCQL.txt and validate unordered result VRFExecuteSavedQuery CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as CurrentUserId()
	Given Cleanup Run cql from file VRFExecuteSavedQueryCurrentUserIdUserGroups.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFCurrentUserIdInsert Run cql from file VRFCurrentUserId insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFCurrentUserIdInsert Run cql from file VRFCurrentUserId selectCQL.txt and validate unordered result VRFCurrentUserId CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as CurrentUserGroups()
	Given Cleanup Run cql from file VRFExecuteSavedQueryCurrentUserIdUserGroups.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFCurrentUserGroupInsert Run cql from file VRFCurrentUserGroup insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFCurrentUserGroupInsert Run cql from file VRFCurrentUserGroup selectCQL.txt and validate unordered result VRFCurrentUserGroup CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table and view result as a user with Row Level Access on Editable and Viewable Row Filter as SubQuery
	Given Cleanup Run cql from file VRFExecuteSavedQueryCurrentUserIdUserGroups.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFSubQueryInsert Run cql from file VRFSubQuery insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User VRFSubQueryInsert Run cql from file VRFSubQuery selectCQL.txt and validate unordered result VRFSubQuery CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Using parameters, Insert into a Link Column using ResolveLink as a user
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Link Column insertCQL Param.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                                |
		| text  | 93b55872-cbf7-4b54-80f3-14ecb7f65059 |
		| value | 4                                    |
	Then As User Ben Run cql from file Link Column selectCQL Param.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name      | Value                                |
		| textvalue | 93b55872-cbf7-4b54-80f3-14ecb7f65059 |

@Rest
Scenario: Using parameters, Insert into a Multi Select Choice Column as a user
	Given Cleanup Run cql from file Choice Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ben Run cql from file Choice Column Multi insertCQL Param.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                |
		| value4 | Blue,Green,Red,White |
	Then As User Ben Run cql from file Choice Column Multi selectCQL Param.txt and validate unordered result Choice Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value  | Blue  |
		| value1 | Green |
		| value2 | Red   |
		| value3 | White |

@Rest
Scenario: Insert into editable columns and view result as a user with Edit Selected Column permissions
	Given Cleanup Run cql from file EditSelectedColumn.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run cql from file Edit Selected Column insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User EditSelectedColumn Run cql from file Edit Selected Column selectCQL.txt and validate unordered result Edit Selected Column CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value|