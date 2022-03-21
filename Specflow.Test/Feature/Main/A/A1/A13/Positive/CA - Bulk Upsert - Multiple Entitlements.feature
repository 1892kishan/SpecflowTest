Feature: CA - Bulk Upsert - Multiple Entitlements

# Users : Access : Description of Test
# EditAll : EmployeeChangeApproval20 : User with multiple entitlements
@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert7.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data6:Role:Text,data7:User:Text,data9:Id:Number
		| Value0 | Value2                         | Value6 | Value7                                | Value9 |
		| 1      | FirstName Test2 LastName Test2 | Select | viewonly                              | 134    |
		| 2      | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter              | 135    |
		| 3      | FirstName Test2 LastName Test2 | QA     | EditAll Edit Row Filter currentUserID | 136    |
		| 4      | FirstName Test3 LastName Test3 | HR     | viewonly                              | 137    |
		|        |                                |        |                                       | 138    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter              | 139    |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter              | 140    |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                              | 141    |
	Then As User Multiple Entitlements Run cql statement Select [Job], [Link Calculated Cache],[Link CalculatedLink Cache],[Manager],[Person],[Role],[User],[Id] from [Mock].[EmployeeChangeApproval20] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert79.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert39.txt and validate unordered result resultChangeApprovalBulkUpsert80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval20] ([Cinchy Id], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data3,@data4,@data5,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | 142    | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | 143    | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | 144    | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | 145    | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | 146    | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | 147    | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | 148    | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | 149    | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User Multiple Entitlements Run cql statement Select [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval20] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert81.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert40.txt and validate unordered result resultChangeApprovalBulkUpsert82.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval20] ([Cinchy Id], [MSL],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data9:Id:Number
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
	Then As User Multiple Entitlements Run cql statement Select [MSL],[Id] from [Mock].[EmployeeChangeApproval20] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert83.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert41.txt and validate unordered result resultChangeApprovalBulkUpsert84.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval20] ([Cinchy Id], [MSC],[Id]) VALUES (@data1,@data2,@data9) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data9:Id:Number
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
	Then As User Multiple Entitlements Run cql statement Select [MSC],[Id] from [Mock].[EmployeeChangeApproval20] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert85.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert42.txt and validate unordered result resultChangeApprovalBulkUpsert86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval20] ([Cinchy Id], [Hlink], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data9:Id:Number
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
	Then As User Multiple Entitlements Run cql statement Select [Hlink],[Id] from [Mock].[EmployeeChangeApproval20] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert87.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert43.txt and validate unordered result resultChangeApprovalBulkUpsert88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval20] ([Cinchy Id], [MSH], [Id]) VALUES (@data1,ResolveLink(@data2,'Name'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data9:Id:Number
		| Value1 | Value2                  | Value9 |
		| 13     | Automation1,Automation2 | 73     |
		| 14     | Automation1,Automation2 | 74     |
		|        | Automation1,Automation2 | 75     |
		|        | Automation1,Automation2 | 76     |
		|        | Automation1,Automation2 | 77     |
		|        | Automation1,Automation2 | 78     |
		|        | Automation1,Automation2 | 79     |
		|        | Automation1,Automation2 | 80     |
		|        | Automation1,Automation2 | 81     |
		|        | Automation1,Automation2 | 82     |
		|        | Automation1,Automation2 | 83     |
		|        | Automation1,Automation2 | 84     |
		|        | Automation1,Automation2 | 85     |
		|        | Automation1,Automation2 | 86     |
		|        | Automation1,Automation2 | 87     |
		|        | Automation1,Automation2 | 88     |
		|        | Automation1,Automation2 | 89     |
		|        | Automation1,Automation2 | 90     |
	Then As User Multiple Entitlements Run cql statement Select [MSH],[Id] from [Mock].[EmployeeChangeApproval20] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert89.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert44.txt and validate unordered result resultChangeApprovalBulkUpsert90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with multiple entitlements, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval20] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval20] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert8.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data6:Role:Text,data7:User:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value6 | Value7                   | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 33     | FirstName Test2 LastName Test2 | Select | viewonly                 | 91     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 92     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 93     | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 94     | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        |                                |        |                          | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 96     | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 97     | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 98     | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 99     | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 100    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 101    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                |        |                          | 102    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 103    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 104    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 105    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 106    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 107    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 108    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                |        |                          | 109    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 110    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 111    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 112    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 113    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 114    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 115    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                |        |                          | 116    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 117    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 118    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 119    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 120    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 121    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 122    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                |        |                          | 123    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 124    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 125    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 126    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 127    | Dec 2 2020  | 778878    | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 128    | Dec 3 2020  | 433543    | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 129    | Dec 4 2020  | 6786786   | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                |        |                          | 130    | Dec 5 2020  | 2342342   | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Select | All Edit View Row Filter | 131    | Dec 6 2020  | 564645    | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | QA     | All Edit View Row Filter | 132    | Dec 7 2020  | 89089     | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | HR     | viewonly                 | 133    | Dec 8 2020  | 12312     | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert45.txt and validate unordered result resultChangeApprovalBulkUpsert77.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |
	Then As User Multiple Entitlements Run cql from file selectChangeApprovalBulkUpsert46.txt and validate unordered result resultChangeApprovalBulkUpsert78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |