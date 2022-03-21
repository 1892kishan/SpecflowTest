Feature: Bulk Upsert - EditAll

@Rest
Scenario: As User with edit all columns, Bulk Upsert into a Link Column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert15.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 34     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 35     | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 36     | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		| 37     | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User EditAll Run cql from file selectBulkUpsert7.txt and validate unordered result resultBulkUpsert60.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 34    |
		| to   | 37    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into a Link Column that references simple column types
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert16.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 38     | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | Yes    |
		| 39     | Automation98 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | No     |
		| 40     | Automation97 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | Yes    |
		| 41     | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | No     |
		|        | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | Yes    |
		|        | Automation94 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | No     |
		|        | Automation93 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | Yes    |
		|        | Automation92 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | No     |
	Then As User EditAll Run cql from file selectBulkUpsert7.txt and validate unordered result resultBulkUpsert59.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 38    |
		| to   | 41    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into a Multi Select Link Column
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert17.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
		| Value1 | Value2     |
		| 42     | Dec 6 2020 |
		| 43     | Mar 3 2020 |
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
	Then As User EditAll Run cql from file selectBulkUpsert7.txt and validate unordered result resultBulkUpsert62.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 42    |
		| to   | 43    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into a Multi Select Choice Column
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert18.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
		| Value1 | Value2                |
		| 64     | Dance,Play            |
		| 65     | Jump,Sleep            |
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
	Then As User EditAll Run cql from file selectBulkUpsert7.txt and validate unordered result resultBulkUpsert61.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 64    |
		| to   | 65    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert19.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text
		| Value1 | Value2                                             |
		| 44     | Edit Selected Edit Row Filter currentUsersGroups12 |
		| 45     | viewonly12                                         |
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
	Then As User EditAll Run cql from file selectBulkUpsert8.txt and validate unordered result resultBulkUpsert63.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 44    |
		| to   | 45    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert20.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
		| Value1 | Value2                                                                                   |
		| 46     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| 47     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
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
	Then As User EditAll Run cql from file selectBulkUpsert9.txt and validate unordered result resultBulkUpsert29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 46    |
		| to   | 47    |

@Rest
Scenario: As User with edit all columns, Bulk Upsert into all column types
	Given Cleanup Run cql from file cleanupBulkUpsert3.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertBulkUpsert21.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 66     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | Yes     | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User EditAll Run cql from file selectBulkUpsert9.txt and validate unordered result resultBulkUpsert30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 66    |
		| to   | 66    |