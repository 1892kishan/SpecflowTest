Feature: Bulk Upsert - EditSelectedColumn

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into a Link Column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert22.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1  | Value5 | Value6 | Value7                   |
		| 34     | Ajax    | Plum   | Select | viewonly                 |
		| 35     | Toronto | Mango2 | Select | All Edit View Row Filter |
		| 36     | Ajax    | Mango  | QA     | All Edit View Row Filter |
		| 37     | Toronto |        | HR     | viewonly                 |
		|        | Ajax    | Plum   |        |                          |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter |
		|        | Toronto |        | HR     | viewonly                 |
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert10.txt and validate unordered result resultBulkUpsert31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 34    |
		| to   | 37    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into a Link Column that references simple column types
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert23.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value7    | Value8 |
		| 38     | Automation99 | 99     | 15 Mar 2020 | Co-op     | Yes    |
		| 39     | Automation98 | 98     | Dec 2 2020  | Full Time | No     |
		| 40     | Automation97 | 97     | Dec 3 2020  | Part Time | Yes    |
		| 41     | Automation96 | 96     | Dec 4 2020  | Co-op     | No     |
		|        | Automation95 | 95     | Dec 5 2020  | Full Time | Yes    |
		|        | Automation94 | 94     | Dec 6 2020  | Part Time | No     |
		|        | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes    |
		|        | Automation92 | 92     | Dec 8 2020  | Full Time | No     |
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert10.txt and validate unordered result resultBulkUpsert32.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 38    |
		| to   | 41    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into a Multi Select Link Column
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert24.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
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
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert10.txt and validate unordered result resultBulkUpsert33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 42    |
		| to   | 43    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into a Multi Select Choice Column
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert25.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
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
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert10.txt and validate unordered result resultBulkUpsert34.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 64    |
		| to   | 65    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert26.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text
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
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert12.txt and validate unordered result resultBulkUpsert35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 44    |
		| to   | 45    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert27.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
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
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert13.txt and validate unordered result resultBulkUpsert36.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 46    |
		| to   | 47    |

@Rest
Scenario: As User with edit selected columns, Bulk Upsert into all column types
	Given Cleanup Run cql from file cleanupBulkUpsert4.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertBulkUpsert28.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 66     | Ajax    | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | Co-op     | Yes     | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | Full Time | No      | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | Part Time | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | Co-op     | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | Yes     | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | Part Time | No      | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | Co-op     | Yes     | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | Full Time | No      | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User EditSelectedColumn Run cql from file selectBulkUpsert10.txt and validate unordered result resultBulkUpsert37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 66    |
		| to   | 66    |