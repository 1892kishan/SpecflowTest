Feature: CA - Bulk Upsert - EditSelectedColumn

# Users : Access : Description of Test
# EditSelectedColumn : EmployeeChangeApproval22 : User have access to edit selected columns
@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert101.txt with Parameter:Column:Type as data0:Job:Text,data1:Person:Text,data2:Role:Text,data3:User:Text,data4:Id:Number
		| Value0  | Value1 | Value2 | Value3                                | Value4 |
		| Toronto | Plum   | Select | viewonly                              | 134    |
		| Ajax    | Mango2 | Select | All Edit View Row Filter              | 135    |
		| Toronto | Mango  | QA     | EditAll Edit Row Filter currentUserID | 136    |
		| Toronto |        | HR     | viewonly                              | 137    |
		| Ajax    | Plum   |        |                                       | 138    |
		| Toronto | Mango2 | Select | All Edit View Row Filter              | 139    |
		| Ajax    | Mango  | QA     | All Edit View Row Filter              | 140    |
		| Toronto |        | HR     | viewonly                              | 141    |
	Then As User EditSelectedColumn Run cql statement Select [Job],[Person],[Role],[User],[Id] from [Mock].[EmployeeChangeApproval22] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert201.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert101.txt and validate unordered result resultChangeApprovalBulkUpsert202.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval22] ([Name], [Id], [Start Date], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data5); with Parameter:Column:Type as data1:Name:Text,data2:Id:Number,data3:Start Date:DateTime,data4:Employee Term:Text,data5:Salaried:Boolean
		| Value1       | Value2 | Value3      | Value4    | Value5 |
		| Automation99 | 142    | 15 Mar 2020 | Co-op     | true   |
		| Automation98 | 143    | Dec 2 2020  | Full Time | false  |
		| Automation97 | 144    | Dec 3 2020  | Part Time | true   |
		| Automation96 | 145    | Dec 4 2020  | Co-op     | false  |
		| Automation95 | 146    | Dec 5 2020  | Full Time | true   |
		| Automation94 | 147    | Dec 6 2020  | Part Time | false  |
		| Automation93 | 148    | Dec 7 2020  | Co-op     | true   |
		| Automation92 | 149    | Dec 8 2020  | Full Time | false  |
	Then As User EditSelectedColumn Run cql statement Select [Name], [Id], [Start Date], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval22] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert203.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert102.txt and validate unordered result resultChangeApprovalBulkUpsert204.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval22] ([MSL],[Id]) VALUES (ResolveLink(@data2,'Date'),@data9); with Parameter:Column:Type as data2:MSL:Text,data9:Id:Number
		| Value2     | Value9 |
		| Dec 6 2020 | 34     |
		| Mar 3 2020 | 35     |
		| Dec 6 2020 | 36     |
		| Mar 3 2020 | 37     |
		| Dec 6 2020 | 38     |
		| Mar 3 2020 | 39     |
		| Dec 6 2020 | 40     |
		| Mar 3 2020 | 41     |
		| Dec 6 2020 | 42     |
		| Mar 3 2020 | 43     |
		| Dec 6 2020 | 44     |
		| Mar 3 2020 | 45     |
		| Dec 6 2020 | 46     |
		| Mar 3 2020 | 47     |
	Then As User EditSelectedColumn Run cql statement Select [MSL],[Id] from [Mock].[EmployeeChangeApproval22] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert209.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert106.txt and validate unordered result resultChangeApprovalBulkUpsert210.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval22] ([MSC],[Id]) VALUES (@data1,@data2) with Parameter:Column:Type as data1:MSC:Text,data2:Id:Number
		| Value1                | Value2 |
		| Dance,Play            | 48     |
		| Jump,Sleep            | 49     |
		| Dance,Jump,Play,Sleep | 50     |
		| Dance,Play            | 51     |
		| Dance,Play            | 52     |
		| Jump,Sleep            | 53     |
		| Dance,Jump,Play,Sleep | 54     |
		| Dance,Play            | 55     |
		| Dance,Play            | 56     |
		| Jump,Sleep            | 57     |

	Then As User EditSelectedColumn Run cql statement Select [MSC],[Id] from [Mock].[EmployeeChangeApproval22] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert207.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert105.txt and validate unordered result resultChangeApprovalBulkUpsert208.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval22] ([Hlink], [Id]) VALUES (ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data2:Hlink:Text,data9:Id:Number
		| Value2                                             | Value9 |
		| Edit Selected Edit Row Filter currentUsersGroups12 | 58     |
		| viewonly12                                         | 59     |
		| All Edit View Row Filter12                         | 60     |
		| Edit Selected Edit Row Filter currentUsersGroups12 | 61     |
		| viewonly12                                         | 62     |
		| All Edit View Row Filter12                         | 63     |
		| Edit Selected Edit Row Filter currentUsersGroups12 | 64     |
		| viewonly12                                         | 65     |
		| All Edit View Row Filter12                         | 66     |
		| Edit Selected Edit Row Filter currentUsersGroups12 | 67     |
		| viewonly12                                         | 68     |
		| All Edit View Row Filter12                         | 69     |
		| Edit Selected Edit Row Filter currentUsersGroups12 | 70     |
		| viewonly12                                         | 71     |
		| viewonly12                                         | 72     |
	Then As User EditSelectedColumn Run cql statement Select [Hlink],[Id] from [Mock].[EmployeeChangeApproval22] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert211.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert107.txt and validate unordered result resultChangeApprovalBulkUpsert212.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval22] ([MSH], [Id]) VALUES (ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data2:MSH:Text,data9:Id:Number
		| Value2                                                                                   | Value9 |
		| Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 73     |
		| All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 74     |
		| viewonly12                                                                               | 75     |
		| All Edit View Row Filter12,viewonly12                                                    | 76     |
		| Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 77     |
		| All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 78     |
		| viewonly12                                                                               | 79     |
		| All Edit View Row Filter12,viewonly12                                                    | 80     |
		| Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 81     |
		| All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 82     |
		| viewonly12                                                                               | 83     |
		| All Edit View Row Filter12,viewonly12                                                    | 84     |
		| Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 85     |
		| All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 86     |
		| viewonly12                                                                               | 87     |
		| All Edit View Row Filter12,viewonly12                                                    | 88     |
		| Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | 89     |
		| All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | 90     |
	Then As User EditSelectedColumn Run cql statement Select [MSH],[Id] from [Mock].[EmployeeChangeApproval22] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert213.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert108.txt and validate unordered result resultChangeApprovalBulkUpsert214.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with edit selected columns, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval22] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval22] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User EditSelectedColumn Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert102.txt with Parameter:Column:Type as data0:Job:Text,data1:Person:Text,data2:Role:Text,data3:User:Text,data4:Name:Text,data5:Id:Number,data6:Start Date:DateTime,data7:Employee Term:Text,data8:Salaried:Boolean,data9:MSL:Text,data10:MSC:Text,data11:Hlink:Text,data12:MSH:Text
		| Value0  | Value1 | Value2 | Value3                   | Value4       | Value5 | Value6      | Value7    | Value8  | Value9     | Value10               | Value11                                            | Value12                                                                                  |
		| Ajax    | Plum   | Select | viewonly                 | Automation99 | 91     | 15 Mar 2020 | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 92     | Dec 2 2020  | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 93     | Dec 3 2020  | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		| Toronto |        | HR     | viewonly                 | Automation96 | 94     | Dec 4 2020  | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 96     | Dec 6 2020  | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 97     | Dec 7 2020  | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		| Toronto |        | HR     | viewonly                 | Automation92 | 98     | Dec 8 2020  | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 99     | Dec 2 2020  | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 100    | Dec 3 2020  | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    |        | HR     | viewonly                 | Automation96 | 101    | Dec 4 2020  | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		| Toronto | Plum   |        |                          | Automation95 | 102    | Dec 5 2020  | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango2 | Select | All Edit View Row Filter | Automation94 | 103    | Dec 6 2020  | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango  | QA     | All Edit View Row Filter | Automation93 | 104    | Dec 7 2020  | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    |        | HR     | viewonly                 | Automation92 | 105    | Dec 8 2020  | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 106    | Dec 2 2020  | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 107    | Dec 3 2020  | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto |        | HR     | viewonly                 | Automation96 | 108    | Dec 4 2020  | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Plum   |        |                          | Automation95 | 109    | Dec 5 2020  | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 110    | Dec 6 2020  | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 111    | Dec 7 2020  | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		| Toronto |        | HR     | viewonly                 | Automation92 | 112    | Dec 8 2020  | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 113    | Dec 2 2020  | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 114    | Dec 3 2020  | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    |        | HR     | viewonly                 | Automation96 | 115    | Dec 4 2020  | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		| Toronto | Plum   |        |                          | Automation95 | 116    | Dec 5 2020  | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango2 | Select | All Edit View Row Filter | Automation94 | 117    | Dec 6 2020  | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango  | QA     | All Edit View Row Filter | Automation93 | 118    | Dec 7 2020  | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    |        | HR     | viewonly                 | Automation92 | 119    | Dec 8 2020  | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation98 | 120    | Dec 2 2020  | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation97 | 121    | Dec 3 2020  | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto |        | HR     | viewonly                 | Automation96 | 122    | Dec 4 2020  | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Plum   |        |                          | Automation95 | 123    | Dec 5 2020  | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 124    | Dec 6 2020  | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 125    | Dec 7 2020  | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto |        | HR     | viewonly                 | Automation92 | 126    | Dec 8 2020  | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    | Mango2 | Select | All Edit View Row Filter | Automation98 | 127    | Dec 2 2020  | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Toronto | Mango  | QA     | All Edit View Row Filter | Automation97 | 128    | Dec 3 2020  | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Ajax    |        | HR     | viewonly                 | Automation96 | 129    | Dec 4 2020  | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		| Toronto | Plum   |        |                          | Automation95 | 130    | Dec 5 2020  | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		| Toronto | Mango2 | Select | All Edit View Row Filter | Automation94 | 131    | Dec 6 2020  | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| Ajax    | Mango  | QA     | All Edit View Row Filter | Automation93 | 132    | Dec 7 2020  | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| Toronto |        | HR     | viewonly                 | Automation92 | 133    | Dec 8 2020  | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert103.txt and validate unordered result resultChangeApprovalBulkUpsert205.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |
	Then As User EditSelectedColumn Run cql from file selectChangeApprovalBulkUpsert104.txt and validate unordered result resultChangeApprovalBulkUpsert206.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |