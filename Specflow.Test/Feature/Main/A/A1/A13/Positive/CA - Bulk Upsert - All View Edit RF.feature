Feature: CA - Bulk Upsert - All View Edit RF

# Users : Access : Description of Test
# All View Edit RF : EmployeeChangeApproval18 : User have access to all rows, with some readonly and some editable and validates that user is able to update editable rows only
# All View Edit RF : EmployeeChangeApproval119 : User have access to resticted rows, with some readonly and some editable and validates that user is able to update editable rows only
# All View Edit RF1 : EmployeeChangeApproval19 : User have access to restricted rows, with some readonly and some editable and validates that user is able to update editable rows that are visible
@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert2.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data9:Id:Number
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                                | Value9 |
		| 1      | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                              | 134    |
		| 2      | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter              | 135    |
		| 3      | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | EditAll Edit Row Filter currentUserID | 136    |
		| 4      | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                              | 137    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                                       | 138    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter              | 139    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter              | 140    |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                              | 141    |
	Then As User All View Edit RF Run cql statement Select [Job], [Link Calculated Cache],[Link CalculatedLink Cache],[Manager],[Person],[Role],[User],[Id] from [Mock].[EmployeeChangeApproval18] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert16.txt and validate unordered result resultChangeApprovalBulkUpsert18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval18] ([Cinchy Id], [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data5,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 142    | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 143    | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 144    | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 145    | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 146    | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 147    | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 148    | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 149    | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User All View Edit RF Run cql statement Select [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval18] Where [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert17.txt and validate unordered result resultChangeApprovalBulkUpsert20.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval18] ([Cinchy Id], [MSL],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data9:Id:Number
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
	Then As User All View Edit RF Run cql statement Select [MSL],[Id] from [Mock].[EmployeeChangeApproval18] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert18.txt and validate unordered result resultChangeApprovalBulkUpsert22.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval18] ([Cinchy Id], [MSC],[Id]) VALUES (@data1,@data2,@data9) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data9:Id:Number
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
	Then As User All View Edit RF Run cql statement Select [MSC],[Id] from [Mock].[EmployeeChangeApproval18] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert19.txt and validate unordered result resultChangeApprovalBulkUpsert24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval18] ([Cinchy Id], [Hlink], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data9:Id:Number
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
	Then As User All View Edit RF Run cql statement Select [Hlink],[Id] from [Mock].[EmployeeChangeApproval18] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert20.txt and validate unordered result resultChangeApprovalBulkUpsert26.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval18] ([Cinchy Id], [MSH], [Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data9:Id:Number
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
	Then As User All View Edit RF Run cql statement Select [MSH],[Id] from [Mock].[EmployeeChangeApproval18] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert21.txt and validate unordered result resultChangeApprovalBulkUpsert28.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval18] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval18] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert3.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
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
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert22.txt and validate unordered result resultChangeApprovalBulkUpsert29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert23.txt and validate unordered result resultChangeApprovalBulkUpsert30.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |

###################################NEW TABLE#############################
@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert4.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data9:Id:Number
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value9 |
		| 1      | Toronto | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | 134    |
		| 2      | Ajax    | FirstName Test1 LastName Test1 | Albania AutomationDomain | Mango2 | Mango2 | Select | All Edit View Row Filter | 135    |
		| 3      | Toronto | FirstName Test2 LastName Test2 |                          |        | Mango  | QA     | All Edit View Row Filter | 136    |
		| 4      | Toronto | FirstName Test3 LastName Test3 | Canada Automation        | Fruit6 |        | HR     | viewonly                 | 137    |
		|        | Ajax    |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | 138    |
		|        | Toronto | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | 139    |
		|        | Ajax    | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | 140    |
		|        | Toronto | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | 141    |
	Then As User All View Edit RF Run cql statement Select [Job], [Link Calculated Cache], [Link CalculatedLink Cache], [Manager], [Person], [Role], [User], [Id] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert63.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert24.txt and validate unordered result resultChangeApprovalBulkUpsert64.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval19] ([Cinchy Id], [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data5,@data6,@data7,@data8) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 142    | 15 Mar 2020 | 545455545 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 143    | Dec 2 2020  | 778878    | 67000  | Full Time | false  |
		| 7      | Automation97 | 144    | Dec 3 2020  | 433543    | 68000  | Part Time | true   |
		| 8      | Automation96 | 145    | Dec 4 2020  | 6786786   | 69000  | Co-op     | false  |
		|        | Automation95 | 146    | Dec 5 2020  | 2342342   | 70000  | Full Time | true   |
		|        | Automation94 | 147    | Dec 6 2020  | 564645    | 71000  | Part Time | false  |
		|        | Automation93 | 148    | Dec 7 2020  | 89089     | 72000  | Co-op     | true   |
		|        | Automation92 | 149    | Dec 8 2020  | 12312     | 71000  | Full Time | false  |
	Then As User All View Edit RF Run cql statement Select [Name], [Id], [Start Date], [Emergency Contact Number], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 142 AND 149)); and validate unordered result resultChangeApprovalBulkUpsert65.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert25.txt and validate unordered result resultChangeApprovalBulkUpsert66.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval19] ([Cinchy Id], [MSL],[Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'),@data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2     | Value8 | Value9 |
		| 9      | Dec 6 2020 | true   | 34     |
		| 10     | Mar 3 2020 | true   | 35     |
		|        | Dec 6 2020 | true   | 36     |
		|        | Mar 3 2020 | true   | 37     |
		|        | Dec 6 2020 | true   | 38     |
		|        | Mar 3 2020 | true   | 39     |
		|        | Dec 6 2020 | true   | 40     |
		|        | Mar 3 2020 | true   | 41     |
		|        | Dec 6 2020 | true   | 42     |
		|        | Mar 3 2020 | true   | 43     |
		|        | Dec 6 2020 | true   | 44     |
		|        | Mar 3 2020 | true   | 45     |
		|        | Dec 6 2020 | true   | 46     |
		|        | Mar 3 2020 | true   | 47     |
	Then As User All View Edit RF Run cql statement Select [MSL],[Salaried],[Id] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert67.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert26.txt and validate unordered result resultChangeApprovalBulkUpsert68.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval19] ([Cinchy Id], [MSC], [Salaried],[Id]) VALUES (@data1,@data2, @data8,@data9) with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                | Value8 | Value9 |
		| 31     | Dance,Play            | true   | 48     |
		| 32     | Jump,Sleep            | true   | 49     |
		|        | Dance,Jump,Play,Sleep | true   | 50     |
		|        | Dance,Play            | true   | 51     |
		|        | Dance,Play            | true   | 52     |
		|        | Jump,Sleep            | true   | 53     |
		|        | Dance,Jump,Play,Sleep | true   | 54     |
		|        | Dance,Play            | true   | 55     |
		|        | Dance,Play            | true   | 56     |
		|        | Jump,Sleep            | true   | 57     |
	Then As User All View Edit RF Run cql statement Select [MSC], [Salaried],[Id] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert69.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert27.txt and validate unordered result resultChangeApprovalBulkUpsert70.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval19] ([Cinchy Id], [Hlink],[Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'),@data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                                             | Value8 | Value9 |
		| 11     | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 58     |
		| 12     | viewonly12                                         | true   | 59     |
		|        | All Edit View Row Filter12                         | true   | 60     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 61     |
		|        | viewonly12                                         | true   | 62     |
		|        | All Edit View Row Filter12                         | true   | 63     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 64     |
		|        | viewonly12                                         | true   | 65     |
		|        | All Edit View Row Filter12                         | true   | 66     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 67     |
		|        | viewonly12                                         | true   | 68     |
		|        | All Edit View Row Filter12                         | true   | 69     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 70     |
		|        | viewonly12                                         | true   | 71     |
		|        | viewonly12                                         | true   | 72     |
	Then As User All View Edit RF Run cql statement Select [Hlink],[Salaried],[Id] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert71.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert28.txt and validate unordered result resultChangeApprovalBulkUpsert72.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

# When Datacontrols are removed after running the following scenario selectChangeApprovalBulkUpsert29.txt shows different result w.r.t resultChangeApprovalBulkUpsert74.txt. Some values of MSH shows empty
# Findings : Value2 : MSH refers to different cinchy id when suite is ran vs when individual test case is run
#Expected result referes to when you run scenario as suite
@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval19] ([Cinchy Id], [MSH], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Id'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2  | Value8 | Value9 |
		| 15     | 1,2,3,4 | true   | 73     |
		| 16     | 1,2,3,4 | true   | 74     |
		|        | 1,2,3,4 | true   | 75     |
		|        | 1,2,3,4 | true   | 76     |
		|        | 1,2,3,4 | true   | 77     |
		|        | 1,2,3,4 | true   | 78     |
		|        | 1,2,3,4 | true   | 79     |
		|        | 1,2,3,4 | true   | 80     |
		|        | 1,2,3,4 | true   | 81     |
		|        | 1,2,3,4 | true   | 82     |
		|        | 1,2,3,4 | true   | 83     |
		|        | 1,2,3,4 | true   | 84     |
		|        | 1,2,3,4 | true   | 85     |
		|        | 1,2,3,4 | true   | 86     |
		|        | 1,2,3,4 | true   | 87     |
		|        | 1,2,3,4 | true   | 88     |
		|        | 1,2,3,4 | true   | 89     |
		|        | 1,2,3,4 | true   | 90     |
	Then As User All View Edit RF Run cql statement Select [MSH], [Salaried],[Id] from [Mock].[EmployeeChangeApproval19] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert73.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert29.txt and validate unordered result resultChangeApprovalBulkUpsert74.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |

@Rest
Scenario: CA - As User with edit all columns with editable row filter and view all columns with viewable row filter, Bulk Upsert into all column types where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval19] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval19] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User All View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert5.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1  | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 21     | Ajax    | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 91     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
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
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert30.txt and validate unordered result resultChangeApprovalBulkUpsert75.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 21    |
		| to   | 21    |
	Then As User All View Edit RF Run cql from file selectChangeApprovalBulkUpsert31.txt and validate unordered result resultChangeApprovalBulkUpsert76.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 21    |
		| to   | 21    |