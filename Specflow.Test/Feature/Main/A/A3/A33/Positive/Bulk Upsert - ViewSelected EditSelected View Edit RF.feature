Feature: Bulk Upsert - ViewSelected EditSelected View Edit RF

# Users : Access : Description of Test
# ViewSelected EditSelected View Edit RF : EmployeeChangeApproval15 : User have access to all rows, with some readonly and some editable and validates that user is able to update editable rows only
# ViewSelected EditSelected View Edit RF : EmployeeChangeApproval14 : User have access to resticted rows, with some readonly and some editable and validates that user is able to update editable rows only
@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert42.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Salaried:Boolean
		| Value0 | Value2                         | Value4 | Value8 |
		| 1      | FirstName Test2 LastName Test2 | Plum   | true   |
		| 2      | FirstName Test1 LastName Test1 | Mango2 | false  |
		| 3      | FirstName Test2 LastName Test2 |        | true   |
		| 4      | FirstName Test3 LastName Test3 | Fruit6 | false  |
		|        |                                | Plum   | true   |
		|        | FirstName Test2 LastName Test2 | Mango2 | true   |
		|        | FirstName Test2 LastName Test2 |        | true   |
		|        | FirstName Test3 LastName Test3 | Fruit6 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert40.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User Admin Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert81.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert43.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 98     | Dec 2 2020  | 67000  | Full Time | false  |
		| 7      | Automation97 | 97     | Dec 3 2020  | 68000  | Part Time | true   |
		| 8      | Automation96 | 96     | Dec 4 2020  | 69000  | Co-op     | false  |
		|        | Automation95 | 95     | Dec 5 2020  | 70000  | Full Time | true   |
		|        | Automation94 | 94     | Dec 6 2020  | 71000  | Part Time | false  |
		|        | Automation93 | 93     | Dec 7 2020  | 72000  | Co-op     | true   |
		|        | Automation92 | 92     | Dec 8 2020  | 71000  | Full Time | false  |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert42.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User Admin Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert82.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert44.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean
		| Value1 | Value2     | Value8 |
		| 9      | Mar 3 2020 | true   |
		| 10     | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert44.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User Admin Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert83.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval15] ([Cinchy Id], [MSC], [Salaried]) VALUES (@data1,@data2,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean
		| Value1 | Value2                | Value8 |
		| 31     | Dance,Play            | true   |
		| 32     | Jump                  | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Jump                  | true   |
		|        | Dance                 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert48.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User Admin Run cql from file selectBulkUpsert18.txt and validate unordered result resultBulkUpsert84.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert46.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean
		| Value1 | Value2                                             | Value8 |
		| 11     | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		| 12     | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert19.txt and validate unordered result resultBulkUpsert56.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User Admin Run cql from file selectBulkUpsert19.txt and validate unordered result resultBulkUpsert85.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert47.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean
		| Value1 | Value2                                                                                   | Value8 |
		| 13     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		| 14     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert20.txt and validate unordered result resultBulkUpsert57.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User Admin Run cql from file selectBulkUpsert20.txt and validate unordered result resultBulkUpsert86.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert7.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert48.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value4 | Value8       | Value9 | Value10     | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 15     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 99     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| 16     | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert20.txt and validate unordered result resultBulkUpsert58.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User Admin Run cql from file selectBulkUpsert20.txt and validate unordered result resultBulkUpsert87.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |

###################################NEW TABLE#############################
@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [Link Calculated Cache], [Manager],[Salaried]) VALUES (@data0,ResolveLink(@data2,'Calculated Cache'),ResolveLink(@data4,'Name'),@data8) with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Salaried:Boolean
		| Value0 | Value2                         | Value4 | Value8 |
		| 1      | FirstName Test2 LastName Test2 | Plum   | true   |
		| 2      | FirstName Test1 LastName Test1 | Mango2 | true   |
		| 3      | FirstName Test2 LastName Test2 |        | true   |
		| 4      | FirstName Test3 LastName Test3 | Fruit6 | true   |
		|        |                                | Plum   | true   |
		|        | FirstName Test2 LastName Test2 | Mango2 | true   |
		|        | FirstName Test2 LastName Test2 |        | true   |
		|        | FirstName Test3 LastName Test3 | Fruit6 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert72.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User Admin Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert73.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 98     | Dec 2 2020  | 67000  | Full Time | false  |
		| 7      | Automation97 | 97     | Dec 3 2020  | 68000  | Part Time | true   |
		| 8      | Automation96 | 96     | Dec 4 2020  | 69000  | Co-op     | false  |
		|        | Automation95 | 95     | Dec 5 2020  | 70000  | Full Time | true   |
		|        | Automation94 | 94     | Dec 6 2020  | 71000  | Part Time | false  |
		|        | Automation93 | 93     | Dec 7 2020  | 72000  | Co-op     | true   |
		|        | Automation92 | 92     | Dec 8 2020  | 71000  | Full Time | false  |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert65.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User Admin Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert74.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [MSL], [Salaried]) VALUES (@data1,ResolveLink(@data2,'Date'), @data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean
		| Value1 | Value2     | Value8 |
		| 23     | Dec 6 2020 | true   |
		| 24     | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
		|        | Dec 6 2020 | true   |
		|        | Mar 3 2020 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert66.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 23    |
		| to   | 24    |
	Then As User Admin Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert75.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 23    |
		| to   | 24    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [MSC], [Salaried]) VALUES (@data1,@data2,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean
		| Value1 | Value2                | Value8 |
		| 27     | Dance,Play            | true   |
		| 28     | Jump,Sleep            | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Dance,Jump,Play,Sleep | true   |
		|        | Dance,Play            | true   |
		|        | Dance,Play            | true   |
		|        | Jump,Sleep            | true   |
		|        | Jump                  | true   |
		|        | Dance                 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert67.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 27    |
		| to   | 28    |
	Then As User Admin Run cql from file selectBulkUpsert21.txt and validate unordered result resultBulkUpsert76.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 27    |
		| to   | 28    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [Hlink], [Salaried]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean
		| Value1 | Value2                                             | Value8 |
		| 11     | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		| 12     | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
		|        | All Edit View Row Filter12                         | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   |
		|        | viewonly12                                         | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert22.txt and validate unordered result resultBulkUpsert68.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User Admin Run cql from file selectBulkUpsert22.txt and validate unordered result resultBulkUpsert77.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval14] ([Cinchy Id], [MSH], [Salaried]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean
		| Value1 | Value2                                                                                   | Value8 |
		| 30     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		| 31     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
		|        | viewonly12                                                                               | true   |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert69.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 30    |
		| to   | 31    |
	Then As User Admin Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert78.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 30    |
		| to   | 31    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into all column types where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert49.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value4 | Value8       | Value9 | Value10     | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                       | Value18    |
		| 15     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 99     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 1 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        |                                | Plum   | Automation95 | 95     | Dec 1 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 1 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 1 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 1 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | 12         |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 1 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 1 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 1 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        |                                | Plum   | Automation95 | 95     | Dec 1 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 1 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 1 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | 12         |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | 12         |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 1 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | 12         |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 1 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 1 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 1 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | viewonly12 |
		|        |                                | Plum   | Automation95 | 95     | Dec 1 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 1 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 98     | Dec 1 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 1 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | viewonly12 |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 1 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12    | viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 93     | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 12,All Edit View Row Filter12 | viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 92     | Dec 1 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | All Edit View Row Filter12    | viewonly12 |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert71.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 15    |
	Then As User Admin Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert79.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 15    |

@Rest
Scenario: As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into all column types and validate view row filter precedence over edit row filter where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert8.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF1 Run Bulk Upsert cql from file insertBulkUpsert49.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value4 | Value8       | Value9 | Value10     | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                       | Value18 |
		| 20     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 99     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12      |
		| 19     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 99     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12      |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 97     | Dec 1 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12    | 12      |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 96     | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | 12,All Edit View Row Filter12 | 12      |
		|        |                                | Plum   | Automation95 | 95     | Dec 1 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12    | 12      |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 94     | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | 12,All Edit View Row Filter12 | 12      |
	Then As User ViewSelected EditSelected View Edit RF1 Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert88.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 19    |
		| to   | 20    |
	Then As User Admin Run cql from file selectBulkUpsert23.txt and validate unordered result resultBulkUpsert89.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 19    |
		| to   | 20    |