Feature: CA - Bulk Upsert - EditAll

# Users : Access : Description of Test
# EditAll : EmployeeChangeApproval21 : User have access to edit all columns
@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert9.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data9:Id:Number
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                                | Value9 |
		| 1      | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                              | 134    |
		| 2      | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter              | 135    |
		| 3      | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | EditAll Edit Row Filter currentUserID | 136    |
		| 4      | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                              | 137    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                                       | 138    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter              | 139    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter              | 140    |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                              | 141    |
	Then As User EditAll Run cql statement Select [Job], [Link Calculated Cache],[Link CalculatedLink Cache],[Manager],[Person],[Role],[User],[Id] from [Mock].[EmployeeChangeApproval21] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert91.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert47.txt and validate unordered result resultChangeApprovalBulkUpsert92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval21] ([Cinchy Id], [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data5,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 142    | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 143    | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 144    | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 145    | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 146    | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 147    | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 148    | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 149    | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User EditAll Run cql statement Select [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval21] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert93.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert48.txt and validate unordered result resultChangeApprovalBulkUpsert94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval21] ([Cinchy Id], [MSL],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data9:Id:Number
		| Value1 | Value2     | Value9 |
		| 9      | Dec 6 2020 | 34     |
		| 10     | Mar 3 2020 | 35     |
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
	Then As User EditAll Run cql statement Select [MSL],[Id] from [Mock].[EmployeeChangeApproval21] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert95.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert49.txt and validate unordered result resultChangeApprovalBulkUpsert96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval21] ([Cinchy Id], [MSC],[Id]) VALUES (@data1,@data2,@data9) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data9:Id:Number
		| Value1 | Value2                | Value9 |
		| 31     | Dance,Play            | 48     |
		| 32     | Jump,Sleep            | 49     |
		|        | Dance,Jump,Play,Sleep | 50     |
		|        | Dance,Play            | 51     |
		|        | Dance,Play            | 52     |
		|        | Jump,Sleep            | 53     |
		|        | Dance,Jump,Play,Sleep | 54     |
		|        | Dance,Play            | 55     |
		|        | Dance,Play            | 56     |
		|        | Jump,Sleep            | 57     |
	Then As User EditAll Run cql statement Select [MSC],[Id] from [Mock].[EmployeeChangeApproval21] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert97.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert50.txt and validate unordered result resultChangeApprovalBulkUpsert98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval21] ([Cinchy Id], [Hlink], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data9:Id:Number
		| Value1 | Value2                                             | Value9 |
		| 11     | Edit Selected Edit Row Filter currentUsersGroups12 | 58     |
		| 12     | viewonly12                                         | 59     |
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
	Then As User EditAll Run cql statement Select [Hlink],[Id] from [Mock].[EmployeeChangeApproval21] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert51.txt and validate unordered result resultChangeApprovalBulkUpsert100.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval21] ([Cinchy Id], [MSH], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data9:Id:Number
		| Value1 | Value2                                                                                   | Value9 |
		| 13     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 73     |
		| 14     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 74     |
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
	Then As User EditAll Run cql statement Select [MSH],[Id] from [Mock].[EmployeeChangeApproval21] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert101.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert52.txt and validate unordered result resultChangeApprovalBulkUpsert102.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with edit all columns, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval21] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval21] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditAll Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert10.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 33     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 91     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
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
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert53.txt and validate unordered result resultChangeApprovalBulkUpsert103.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |
	Then As User EditAll Run cql from file selectChangeApprovalBulkUpsert54.txt and validate unordered result resultChangeApprovalBulkUpsert104.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |