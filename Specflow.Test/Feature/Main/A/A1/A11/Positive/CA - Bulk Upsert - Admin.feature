Feature: CA - Bulk Upsert - Admin

# Users : Access : Description of Test
# Admin : EmployeeChangeApproval24 : Admin
@Rest
Scenario: CA - As Admin, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert13.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data9:Id:Number
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                                | Value9 |
		| 34     | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                              | 134    |
		| 35     | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter              | 135    |
		| 36     | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | EditAll Edit Row Filter currentUserID | 136    |
		| 37     | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                              | 137    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                                       | 138    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter              | 139    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter              | 140    |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                              | 141    |
	Then As User Admin Run cql statement Select [Job], [Link Calculated Cache],[Link CalculatedLink Cache],[Manager],[Person],[Role],[User],[Id] from [Mock].[EmployeeChangeApproval24] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert119.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 34    |
		| to   | 37    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert59.txt and validate unordered result resultChangeApprovalBulkUpsert120.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 34    |
		| to   | 37    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval24] ([Cinchy Id], [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data5,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 38     | Automation99 | 142    | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 39     | Automation98 | 143    | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 40     | Automation97 | 144    | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 41     | Automation96 | 145    | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 146    | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 147    | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 148    | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 149    | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User Admin Run cql statement Select [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval24] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert121.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 38    |
		| to   | 41    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert60.txt and validate unordered result resultChangeApprovalBulkUpsert122.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 38    |
		| to   | 41    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval24] ([Cinchy Id], [MSL],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data9:Id:Number
		| Value1 | Value2     | Value9 |
		| 42     | Dec 6 2020 | 34     |
		| 43     | Mar 3 2020 | 35     |
		|        | Dec 6 2020 | 36     |
		|        | Mar 3 2020 | 37     |
		|        | Dec 6 2020 | 38     |
		|        | Mar 3 2020 | 39     |
		|        | Dec 6 2020 | 40     |
		|        | Mar 3 2020 | 41     |
		|        | Dec 6 2020 | 42     |
		|        | Mar 3 2020 | 43     |
		|        | Dec 6 2020 | 44     |
		|        | Mar 3 2020 | 45     |
		|        | Dec 6 2020 | 46     |
		|        | Mar 3 2020 | 47     |
	Then As User Admin Run cql statement Select [MSL],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert123.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 42    |
		| to   | 43    |
	Then As User Admin Run cql statement SELECT DISTINCT [Version],[Draft Version],[MSL],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)) ORDER BY [Id] DESC, [Version] DESC , [Draft Version] DESC and validate unordered result resultChangeApprovalBulkUpsert124.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 42    |
		| to   | 43    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval24] ([Cinchy Id], [MSC],[Id]) VALUES (@data1,@data2,@data9) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data9:Id:Number
		| Value1 | Value2                | Value9 |
		| 44     | Dance,Play            | 48     |
		| 45     | Jump,Sleep            | 49     |
		|        | Dance,Jump,Play,Sleep | 50     |
		|        | Dance,Play            | 51     |
		|        | Dance,Play            | 52     |
		|        | Jump,Sleep            | 53     |
		|        | Dance,Jump,Play,Sleep | 54     |
		|        | Dance,Play            | 55     |
		|        | Dance,Play            | 56     |
		|        | Jump,Sleep            | 57     |
	Then As User Admin Run cql statement Select [MSC],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert125.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 44    |
		| to   | 45    |
	Then As User Admin Run cql statement SELECT DISTINCT [Version],[Draft Version],[MSC],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)) ORDER BY [Id] DESC, [Version] DESC , [Draft Version] DESC and validate unordered result resultChangeApprovalBulkUpsert126.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 44    |
		| to   | 45    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval24] ([Cinchy Id], [Hlink], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data9:Id:Number
		| Value1 | Value2                                             | Value9 |
		| 46     | Edit Selected Edit Row Filter currentUsersGroups12 | 58     |
		| 47     | viewonly12                                         | 59     |
		|        | All Edit View Row Filter12                         | 60     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | 61     |
		|        | viewonly12                                         | 62     |
		|        | All Edit View Row Filter12                         | 63     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | 64     |
		|        | viewonly12                                         | 65     |
		|        | All Edit View Row Filter12                         | 66     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | 67     |
		|        | viewonly12                                         | 68     |
		|        | All Edit View Row Filter12                         | 69     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | 70     |
		|        | viewonly12                                         | 71     |
		|        | viewonly12                                         | 72     |
	Then As User Admin Run cql statement Select [Hlink],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert127.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 46    |
		| to   | 47    |
	Then As User Admin Run cql statement SELECT DISTINCT [Version],[Draft Version],[Hlink], [Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)) ORDER BY [Id] DESC, [Version] DESC , [Draft Version] DESC and validate unordered result resultChangeApprovalBulkUpsert128.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 46    |
		| to   | 47    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval24] ([Cinchy Id], [MSH], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data9:Id:Number
		| Value1 | Value2                                                                                   | Value9 |
		| 48     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 73     |
		| 49     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 74     |
		|        | viewonly12                                                                               | 75     |
		|        | All Edit View Row Filter12,viewonly12                                                    | 76     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 77     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 78     |
		|        | viewonly12                                                                               | 79     |
		|        | All Edit View Row Filter12,viewonly12                                                    | 80     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 81     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 82     |
		|        | viewonly12                                                                               | 83     |
		|        | All Edit View Row Filter12,viewonly12                                                    | 84     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 85     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 86     |
		|        | viewonly12                                                                               | 87     |
		|        | All Edit View Row Filter12,viewonly12                                                    | 88     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 89     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 90     |
	Then As User Admin Run cql statement Select [MSH],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert129.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 48    |
		| to   | 49    |
	Then As User Admin Run cql statement SELECT DISTINCT [Version],[Draft Version],[MSH],[Id] from [Mock].[EmployeeChangeApproval24] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)) ORDER BY [Id] DESC, [Version] DESC , [Draft Version] DESC and validate unordered result resultChangeApprovalBulkUpsert130.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 48    |
		| to   | 49    |

@Rest
Scenario: CA - As Admin, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval24] where [Cinchy Id] > 66; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval24] SET [Approval State] = 'Approved' where [Cinchy Id] > 66 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert14.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 50     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 91     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 92     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 93     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 94     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 96     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 97     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 98     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 99     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 100    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 101    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 102    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 103    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 104    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 105    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 106    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 107    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 108    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 109    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 110    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 111    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 112    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 113    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 114    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 115    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 116    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 117    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 118    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 119    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 120    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 121    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 122    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 123    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 124    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 125    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 126    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 127    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Toronto | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 128    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Ajax    | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 129    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | Toronto |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 130    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 131    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 132    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 133    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert61.txt and validate unordered result resultChangeApprovalBulkUpsert131.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 50    |
		| to   | 50    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert62.txt and validate unordered result resultChangeApprovalBulkUpsert132.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 50    |
		| to   | 50    |