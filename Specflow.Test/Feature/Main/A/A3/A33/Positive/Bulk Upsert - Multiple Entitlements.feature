Feature: Bulk Upsert - Multiple Entitlements

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into a Link Column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert29.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1  | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 1      | Ajax    | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 2      | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 3      | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		| 4      | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
		|        | Ajax    | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert11.txt and validate unordered result resultBulkUpsert39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into a Link Column that references simple column types
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert30.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert11.txt and validate unordered result resultBulkUpsert41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into a Multi Select Link Column
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert31.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
		| Value1 | Value2                |
		| 11     | Dec 6 2020,Mar 3 2020 |
		| 12     | Mar 3 2020            |
		|        | Dec 6 2020,Mar 3 2020 |
		|        | Mar 3 2020            |
		|        | Dec 6 2020,Mar 3 2020 |
		|        | Mar 3 2020            |
		|        | Dec 6 2020            |
		|        | Mar 3 2020            |
		|        | Dec 6 2020            |
		|        | Mar 3 2020            |
		|        | Dec 6 2020            |
		|        | Mar 3 2020            |
		|        | Dec 6 2020            |
		|        | Mar 3 2020            |
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert11.txt and validate unordered result resultBulkUpsert43.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into a Multi Select Choice Column
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert32.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
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
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert11.txt and validate unordered result resultBulkUpsert45.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert33.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
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
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert14.txt and validate unordered result resultBulkUpsert47.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: As User with multiple entitlements, Bulk Upsert into all column types
	Given Cleanup Run cql from file cleanupBulkUpsert5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertBulkUpsert34.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data18:MSH:Text
		| Value0 | Value1  | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value18                                                                                  |
		| 33     | Ajax    | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | viewonly12                                                                               |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | viewonly12                                                                               |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | viewonly12                                                                               |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
		|        | Toronto | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                                                               |
	Then As User Multiple Entitlements Run cql from file selectBulkUpsert11.txt and validate unordered result resultBulkUpsert49.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |