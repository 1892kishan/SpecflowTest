Feature: CA - Bulk Upsert - ViewSelected EditSelected View Edit RF

# Users : Access : Description of Test
# ViewSelected EditSelected View Edit RF : EmployeeChangeApproval17 : User have access to all rows, with some readonly and some editable and validates that user is able to update editable rows only
# ViewSelected EditSelected View Edit RF : EmployeeChangeApproval16 : User have access to resticted rows, with some readonly and some editable and validates that user is able to update editable rows only
@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [Link Calculated Cache], [Manager],[Salaried],[Id]) VALUES (@data0,ResolveLink(@data2,'Calculated Cache'),ResolveLink(@data4,'Name'),@data8,@data9) with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value0 | Value2                         | Value4 | Value8 | Value9 |
		| 1      | FirstName Test2 LastName Test2 | Plum   | true   | 134    |
		| 2      | FirstName Test1 LastName Test1 | Mango2 | false  | 135    |
		| 3      | FirstName Test2 LastName Test2 |        | true   | 136    |
		| 4      | FirstName Test3 LastName Test3 | Fruit6 | true   | 137    |
		|        |                                | Plum   | true   | 138    |
		|        | FirstName Test2 LastName Test2 | Mango2 | true   | 139    |
		|        | FirstName Test2 LastName Test2 |        | true   | 140    |
		|        | FirstName Test3 LastName Test3 | Fruit6 | true   | 141    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Link Calculated Cache], [Manager],[Salaried],[Id] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert1.txt and validate unordered result resultChangeApprovalBulkUpsert2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert1.txt and validate unordered result resultChangeApprovalBulkUpsert37.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 142     | 15 Mar 2020 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 143     | Dec 2 2020  | 67000  | Full Time | false  |
		| 7      | Automation97 | 144     | Dec 3 2020  | 68000  | Part Time | true   |
		| 8      | Automation96 | 145     | Dec 4 2020  | 69000  | Co-op     | false  |
		|        | Automation95 | 146     | Dec 5 2020  | 70000  | Full Time | true   |
		|        | Automation94 | 147     | Dec 6 2020  | 71000  | Part Time | false  |
		|        | Automation93 | 148     | Dec 7 2020  | 72000  | Co-op     | true   |
		|        | Automation92 | 149     | Dec 8 2020  | 71000  | Full Time | false  |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR [Name] = 'Automation95' OR [Name] = 'Automation94' OR [Name] = 'Automation93' OR [Name] = 'Automation92'); and validate unordered result resultChangeApprovalBulkUpsert3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert2.txt and validate unordered result resultChangeApprovalBulkUpsert4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert2.txt and validate unordered result resultChangeApprovalBulkUpsert31.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [MSL], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'), @data8, @data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2     | Value8 | Value9 |
		| 9      | Mar 3 2020 | true   | 34     |
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
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSL], [Salaried],[Id] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert60.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert3.txt and validate unordered result resultChangeApprovalBulkUpsert6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert3.txt and validate unordered result resultChangeApprovalBulkUpsert32.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [MSC], [Salaried],[Id]) VALUES (@data1,@data2,@data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                | Value8 | Value9 |
		| 31     | Dance,Play            | true   | 48     |
		| 32     | Jump,Sleep            | false  | 49     |
		|        | Dance,Jump,Play,Sleep | true   | 50     |
		|        | Dance,Play            | true   | 51     |
		|        | Dance,Play            | true   | 52     |
		|        | Jump,Sleep            | true   | 53     |
		|        | Dance,Jump,Play,Sleep | true   | 54     |
		|        | Dance,Play            | true   | 55     |
		|        | Dance,Play            | true   | 56     |
		|        | Jump,Sleep            | true   | 57     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSC], [Salaried],[Id] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert4.txt and validate unordered result resultChangeApprovalBulkUpsert8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert4.txt and validate unordered result resultChangeApprovalBulkUpsert33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [Hlink], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean,data9:Id:Number
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
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Hlink], [Salaried],[Id] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert5.txt and validate unordered result resultChangeApprovalBulkUpsert10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert5.txt and validate unordered result resultChangeApprovalBulkUpsert34.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval17] ([Cinchy Id], [MSH], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                                                                                   | Value8 | Value9 |
		| 13     | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   | 73     |
		| 14     | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   | 74     |
		|        | viewonly12                                                                               | true   | 75     |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   | 76     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   | 77     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   | 78     |
		|        | viewonly12                                                                               | true   | 79     |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   | 80     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   | 81     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   | 82     |
		|        | viewonly12                                                                               | true   | 83     |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   | 84     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   | 85     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   | 86     |
		|        | viewonly12                                                                               | true   | 87     |
		|        | All Edit View Row Filter12,viewonly12                                                    | true   | 88     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            | true   | 89     |
		|        | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 | true   | 90     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSH], [Salaried],[Id] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert6.txt and validate unordered result resultChangeApprovalBulkUpsert13.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert6.txt and validate unordered result resultChangeApprovalBulkUpsert35.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into all column types where User is able to view all rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval17] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval17] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value4 | Value8       | Value9 | Value10     | Value12 | Value13   | Value14 | Value15    | Value16               | Value17                                            | Value18                                                                                  |
		| 15     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 91     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		| 16     | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 92     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 93     | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 94     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,viewonly12                                                    |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 96     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 97     | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 98     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 99     | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 100    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 101    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 102    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 103    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 104    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 105    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 106    | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 107    | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 108    | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                | Plum   | Automation95 | 109    | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 110    | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 111    | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 112    | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 113    | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 114    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 115    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 116    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 117    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 118    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 119    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 120    | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | viewonly12                                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 121    | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 122    | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        |                                | Plum   | Automation95 | 123    | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 124    | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 125    | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 126    | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 127    | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | All Edit View Row Filter12                         | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 128    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | Edit Selected Edit Row Filter currentUsersGroups12 | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 129    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
		|        |                                | Plum   | Automation95 | 130    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | All Edit View Row Filter12                         | All Edit View Row Filter12,viewonly12                                                    |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 131    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | Edit Selected Edit Row Filter currentUsersGroups12 | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                            |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 132    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | viewonly12                                         | All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 133    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | viewonly12                                         | viewonly12                                                                               |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Link Calculated Cache], [Manager], [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried], [MSL],[MSC], [Hlink],[MSH] from [Mock].[EmployeeChangeApproval17] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 91 AND 133)); and validate unordered result resultChangeApprovalBulkUpsert15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert7.txt and validate unordered result resultChangeApprovalBulkUpsert16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert7.txt and validate unordered result resultChangeApprovalBulkUpsert36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |

####################################NEW TABLE#############################
@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [Link Calculated Cache], [Manager],[Salaried],[Id]) VALUES (@data0,ResolveLink(@data2,'Calculated Cache'),ResolveLink(@data4,'Name'),@data8,@data9) with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value0 | Value2                         | Value4 | Value8 | Value9 |
		| 1      | FirstName Test2 LastName Test2 | Plum   | true   | 134    |
		| 2      | FirstName Test2 LastName Test2 | Mango2 | false  | 135    |
		| 3      | FirstName Test2 LastName Test2 |        | true   | 136    |
		| 4      | FirstName Test3 LastName Test3 | Fruit6 | true   | 137    |
		|        |                                | Plum   | true   | 138    |
		|        | FirstName Test2 LastName Test2 | Mango2 | true   | 139    |
		|        | FirstName Test2 LastName Test2 |        | true   | 140    |
		|        | FirstName Test3 LastName Test3 | Fruit6 | true   | 141    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Link Calculated Cache], [Manager],[Salaried],[Id] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 134 AND 141)); and validate unordered result resultChangeApprovalBulkUpsert38.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert32.txt and validate unordered result resultChangeApprovalBulkUpsert39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert32.txt and validate unordered result resultChangeApprovalBulkUpsert40.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Link Column that references simple column types where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried]) VALUES (@data1,@data2,@data3,@data4,@data6,@data7,@data8); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 142     | 15 Mar 2020 | 66000  | Co-op     | true   |
		| 6      | Automation98 | 143     | Dec 2 2020  | 67000  | Full Time | false  |
		| 7      | Automation97 | 144     | Dec 3 2020  | 68000  | Part Time | true   |
		| 8      | Automation96 | 145     | Dec 4 2020  | 69000  | Co-op     | false  |
		|        | Automation95 | 146     | Dec 5 2020  | 70000  | Full Time | true   |
		|        | Automation94 | 147     | Dec 6 2020  | 71000  | Part Time | false  |
		|        | Automation93 | 148     | Dec 7 2020  | 72000  | Co-op     | true   |
		|        | Automation92 | 149     | Dec 8 2020  | 71000  | Full Time | false  |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR [Name] = 'Automation95' OR [Name] = 'Automation94' OR [Name] = 'Automation93' OR [Name] = 'Automation92'); and validate unordered result resultChangeApprovalBulkUpsert41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert33.txt and validate unordered result resultChangeApprovalBulkUpsert42.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert33.txt and validate unordered result resultChangeApprovalBulkUpsert43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Link Column where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [MSL], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Date'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                | Value8 | Value9 |
		| 9      | Mar 3 2020,Dec 6 2020 | true   | 34     |
		| 10     | Mar 3 2020            | false  | 35     |
		|        | Dec 6 2020            | true   | 36     |
		|        | Mar 3 2020            | true   | 37     |
		|        | Mar 3 2020,Dec 6 2020 | true   | 38     |
		|        | Mar 3 2020            | true   | 39     |
		|        | Mar 3 2020,Dec 6 2020 | true   | 40     |
		|        | Mar 3 2020            | true   | 41     |
		|        | Dec 6 2020            | true   | 42     |
		|        | Mar 3 2020,Dec 6 2020 | true   | 43     |
		|        | Dec 6 2020            | true   | 44     |
		|        | Mar 3 2020            | true   | 45     |
		|        | Mar 3 2020,Dec 6 2020 | true   | 46     |
		|        | Mar 3 2020            | true   | 47     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSL], [Salaried],[Id] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 34 AND 47)); and validate unordered result resultChangeApprovalBulkUpsert62.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert34.txt and validate unordered result resultChangeApprovalBulkUpsert44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert34.txt and validate unordered result resultChangeApprovalBulkUpsert45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into a Multi Select Choice Column where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [MSC], [Salaried],[Id]) VALUES (@data1,@data2,@data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                | Value8 | Value9 |
		| 31     | Play,Sleep            | true   | 48     |
		| 32     | Dance,Play            | true   | 49     |
		|        | Dance,Jump,Play,Sleep | true   | 50     |
		|        | Dance,Play            | true   | 51     |
		|        | Dance,Play            | true   | 52     |
		|        | Jump,Sleep            | true   | 53     |
		|        | Dance,Jump,Play,Sleep | true   | 54     |
		|        | Dance,Play            | true   | 55     |
		|        | Dance,Play            | true   | 56     |
		|        | Jump,Sleep            | true   | 57     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSC], [Salaried],[Id] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 48 AND 57)); and validate unordered result resultChangeApprovalBulkUpsert59.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert35.txt and validate unordered result resultChangeApprovalBulkUpsert46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert35.txt and validate unordered result resultChangeApprovalBulkUpsert47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [Hlink], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                                             | Value8 | Value9 |
		| 11     | viewonly12                                         | true   | 58     |
		| 12     | viewonly12                                         | true   | 59     |
		|        | 12                                                 | true   | 60     |
		|        | Edit Selected Edit Row Filter currentUsersGroups12 | true   | 61     |
		|        | viewonly12                                         | true   | 62     |
		|        | All Edit View Row Filter12                         | true   | 63     |
		|        | viewonly12                                         | true   | 64     |
		|        | viewonly12                                         | true   | 65     |
		|        | All Edit View Row Filter12                         | true   | 66     |
		|        | viewonly12                                         | true   | 67     |
		|        | viewonly12                                         | true   | 68     |
		|        | All Edit View Row Filter12                         | true   | 69     |
		|        | viewonly12                                         | true   | 70     |
		|        | viewonly12                                         | true   | 71     |
		|        | viewonly12                                         | true   | 72     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Hlink], [Salaried],[Id] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 58 AND 72)); and validate unordered result resultChangeApprovalBulkUpsert61.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert36.txt and validate unordered result resultChangeApprovalBulkUpsert48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert36.txt and validate unordered result resultChangeApprovalBulkUpsert49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into multi select hierarchy link column using ResolveLink where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql statement INSERT INTO [Mock].[EmployeeChangeApproval16] ([Cinchy Id], [MSH], [Salaried],[Id]) VALUES (@data1,ResolveLink(@data2,'Employee ID'), @data8,@data9); with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text,data8:Salaried:Boolean,data9:Id:Number
		| Value1 | Value2                                   | Value8 | Value9 |
		| 20     | 12,viewonly12                            | true   | 73     |
		| 21     | All Edit View Row Filter12,12,viewonly12 | false  | 74     |
		|        | viewonly12                               | true   | 75     |
		|        | All Edit View Row Filter12,viewonly12    | true   | 76     |
		|        | 12,viewonly12                            | true   | 77     |
		|        | All Edit View Row Filter12,12,viewonly12 | true   | 78     |
		|        | viewonly12                               | true   | 79     |
		|        | All Edit View Row Filter12,viewonly12    | true   | 80     |
		|        | 12,viewonly12                            | true   | 81     |
		|        | All Edit View Row Filter12,12,viewonly12 | true   | 82     |
		|        | viewonly12                               | true   | 83     |
		|        | All Edit View Row Filter12,viewonly12    | true   | 84     |
		|        | 12,viewonly12                            | true   | 85     |
		|        | All Edit View Row Filter12,12,viewonly12 | true   | 86     |
		|        | viewonly12                               | true   | 87     |
		|        | All Edit View Row Filter12,viewonly12    | true   | 88     |
		|        | 12,viewonly12                            | true   | 89     |
		|        | All Edit View Row Filter12,12,viewonly12 | true   | 90     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [MSH], [Salaried],[Id] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 73 AND 90)); and validate unordered result resultChangeApprovalBulkUpsert57.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 20    |
		| to   | 21    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert37.txt and validate unordered result resultChangeApprovalBulkUpsert50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 20    |
		| to   | 21    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert37.txt and validate unordered result resultChangeApprovalBulkUpsert52.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

@Rest
Scenario: CA - As User with edit selected columns with editable row filter and view selected columns with viewable row filter, Bulk Upsert into all column types where User is able to view restricted rows
	Given Cleanup Run cql statement Delete from [Mock].[EmployeeChangeApproval16] where [Cinchy Id] > 33; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	And Cleanup Run cql statement UPDATE [Mock].[EmployeeChangeApproval16] SET [Approval State] = 'Approved' where [Cinchy Id] > 33 with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertChangeApprovalBulkUpsert6.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data2:Link Calculated Cache:Text,data4:Manager:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value2                         | Value4 | Value8       | Value9 | Value10     | Value12 | Value13   | Value14 | Value15    | Value16               | Value17 | Value18 |
		| 15     | FirstName Test2 LastName Test2 | Plum   | Automation99 | 91     | 15 Mar 2020 | 66000   | Co-op     | true    | Dec 6 2020 | Dance,Play            | 25      | 25, 27  |
		| 16     | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 92     | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | 25      | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 93     | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 94     | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 95     | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 96     | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 97     | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 98     | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 99     | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 100    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 101    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 102    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 103    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 104    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 105    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 106    | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 107    | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 108    | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 109    | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 110    | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 111    | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 112    | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 113    | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 114    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 115    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 116    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 117    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 118    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 119    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 120    | Dec 2 2020  | 67000   | Full Time | false   | Mar 3 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 121    | Dec 3 2020  | 68000   | Part Time | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 122    | Dec 4 2020  | 69000   | Co-op     | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 123    | Dec 5 2020  | 70000   | Full Time | true    | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 124    | Dec 6 2020  | 71000   | Part Time | false   | Mar 3 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 125    | Dec 7 2020  | 72000   | Co-op     | true    | Dec 6 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 126    | Dec 8 2020  | 71000   | Full Time | false   | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation98 | 127    | Dec 2 2020  | 67000   | Full Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation97 | 128    | Dec 3 2020  | 68000   | Part Time | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation96 | 129    | Dec 4 2020  | 69000   | Co-op     | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
		|        |                                | Plum   | Automation95 | 130    | Dec 5 2020  | 70000   | Full Time | true    | Mar 3 2020 | Dance,Play            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 | Mango2 | Automation94 | 131    | Dec 6 2020  | 71000   | Part Time | false   | Dec 6 2020 | Jump,Sleep            | 5       | 25, 27  |
		|        | FirstName Test2 LastName Test2 |        | Automation93 | 132    | Dec 7 2020  | 72000   | Co-op     | true    | Mar 3 2020 | Dance,Jump,Play,Sleep | 5       | 25, 27  |
		|        | FirstName Test3 LastName Test3 | Fruit6 | Automation92 | 133    | Dec 8 2020  | 71000   | Full Time | false   | Dec 6 2020 | Dance,Play            | 5       | 25, 27  |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Link Calculated Cache], [Manager], [Name], [Id], [Start Date], [Annual Base Compensation], [Employee Term],[Salaried], [MSL],[MSC], [Hlink],[MSH] from [Mock].[EmployeeChangeApproval16] WHERE [Deleted] IS NULL AND (([Cinchy Id] BETWEEN @from AND @to) OR ([Id] BETWEEN 91 AND 133)); and validate unordered result resultChangeApprovalBulkUpsert56.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User ViewSelected EditSelected View Edit RF Run cql from file selectChangeApprovalBulkUpsert38.txt and validate unordered result resultChangeApprovalBulkUpsert54.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |
	Then As User Admin Run cql from file selectChangeApprovalBulkUpsert38.txt and validate unordered result resultChangeApprovalBulkUpsert55.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 16    |