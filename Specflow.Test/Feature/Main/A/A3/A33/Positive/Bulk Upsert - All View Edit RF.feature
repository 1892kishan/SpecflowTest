Feature: Bulk Upsert - All View Edit RF

# Users : Access : Description of Test
# All View Edit RF : EmployeeChangeApproval8 : User have access to all rows, with some readonly and some editable and validates that user is able to update editable rows only
# All View Edit RF : EmployeeChangeApproval12 : User have access to resticted rows, with some readonly and some editable and validates that user is able to update editable rows only
# All View Edit RF1 : EmployeeChangeApproval12 : User have access to restricted rows, with some readonly and some editable and validates that user is able to update editable rows that are visible
@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert8.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 1      | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 2      | Ajax    | FirstName Test1 LastName Test1 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 3      | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | All Edit View Row Filter |
		| 4      | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User All View Edit RF Run cql from file selectBulkUpsert4.txt and validate unordered result resultBulkUpsert15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert9.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User All View Edit RF Run cql from file selectBulkUpsert4.txt and validate unordered result resultBulkUpsert17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert10.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
		| Value1 | Value2     |
		| 9      | Dec 6 2020 |
		| 10     | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
		|        | Dec 6 2020 |
		|        | Mar 3 2020 |
	Then As User All View Edit RF Run cql from file selectBulkUpsert4.txt and validate unordered result resultBulkUpsert26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert11.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
		| Value1 | Value2                |
		| 31     | Dance,Play            |
		| 32     | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Jump                  |
		|        | Dance                 |
	Then As User All View Edit RF Run cql from file selectBulkUpsert4.txt and validate unordered result resultBulkUpsert20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert12.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text
		| Value1 | Value2                                             |
		| 11     | Edit Selected Edit Row Filter currentUsersGroups12 |
		| 12     | viewonly12                                         |
		|        | All Edit View Row Filter12                         |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 |
		|        | viewonly12                                         |
		|        | All Edit View Row Filter12                         |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 |
		|        | viewonly12                                         |
		|        | All Edit View Row Filter12                         |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 |
		|        | viewonly12                                         |
		|        | All Edit View Row Filter12                         |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 |
		|        | viewonly12                                         |
	Then As User All View Edit RF Run cql from file selectBulkUpsert5.txt and validate unordered result resultBulkUpsert22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert13.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
		| Value1 | Value2                                                                                   |
		| 13     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| 14     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | viewonly12                                                                               |
		|        | All Edit View Row Filter12,viewonly12                                                    |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | viewonly12                                                                               |
		|        | All Edit View Row Filter12,viewonly12                                                    |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | viewonly12                                                                               |
		|        | All Edit View Row Filter12,viewonly12                                                    |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | viewonly12                                                                               |
		|        | All Edit View Row Filter12,viewonly12                                                    |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
	Then As User All View Edit RF Run cql from file selectBulkUpsert6.txt and validate unordered result resultBulkUpsert24.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql from file cleanupBulkUpsert2.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert14.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 33     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User All View Edit RF Run cql from file selectBulkUpsert6.txt and validate unordered result resultBulkUpsert28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |

###################################NEW TABLE#############################
@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert35.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 1      | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 2      | Ajax    | FirstName Test1 LastName Test1 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 3      | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | All Edit View Row Filter |
		| 4      | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User All View Edit RF Run cql from file selectBulkUpsert15.txt and validate unordered result resultBulkUpsert14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert36.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User All View Edit RF Run cql from file selectBulkUpsert15.txt and validate unordered result resultBulkUpsert16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert37.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean
		| Value1 | Value2     | Value8 |
		| 9      | Dec 6 2020 | true   |
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
	Then As User All View Edit RF Run cql from file selectBulkUpsert15.txt and validate unordered result resultBulkUpsert25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert38.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean
		| Value1 | Value2                | Value8 |
		| 31     | Dance,Play            | true   |
		| 32     | Jump,Sleep            | true   |
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
	Then As User All View Edit RF Run cql from file selectBulkUpsert15.txt and validate unordered result resultBulkUpsert19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert39.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean
		| Value1 | Value2 | Value8 |
		| 11     | 2      | true   |
		| 12     | 5      | true   |
		|        | 7      | true   |
		|        | 2      | true   |
		|        | 5      | true   |
		|        | 7      | true   |
		|        | 2      | true   |
		|        | 5      | true   |
		|        | 7      | true   |
		|        | 2      | true   |
		|        | 5      | true   |
		|        | 7      | true   |
		|        | 2      | true   |
		|        | 5      | true   |
	Then As User All View Edit RF Run cql from file selectBulkUpsert16.txt and validate unordered result resultBulkUpsert27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert40.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean
		| Value1 | Value2 | Value8 |
		| 15     | 1,3    | true   |
		| 16     | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
		|        | 2,8    | true   |
	Then As User All View Edit RF Run cql from file selectBulkUpsert17.txt and validate unordered result resultBulkUpsert21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into all column types where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertBulkUpsert41.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 18     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User All View Edit RF Run cql from file selectBulkUpsert17.txt and validate unordered result resultBulkUpsert23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 18    |
		| to   | 18    |

@Rest
Scenario: As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into all column types and validate view row filter precedence over edit row filter where User is able to view restricted rows
	Given Cleanup Run cql from file cleanupBulkUpsert6.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF1 Run Bulk Upsert cql from file insertBulkUpsert41.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 19     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
	Then As User All View Edit RF1 Run cql from file selectBulkUpsert17.txt and validate unordered result resultBulkUpsert38.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 19    |
		| to   | 19    |