Feature: SQL All View Edit Row Filter Update

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update Choice Column with non-available option
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Employee Term] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update MultiSelect Choice Column with non-available option
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[MSC] = 'Test,Test1' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Created
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Created] = 'May 7, 2021 9:37:06 AM' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Created By
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Created By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created By

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Deleted By
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Deleted By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted By

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Deleted
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Deleted] = 'May 7, 2021 9:36:06 AM' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Draft Version
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Draft Version] = '1' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Draft Version

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Modified By
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Modified By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified By

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Modified
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Modified] = 'May 7, 2021 9:36:06 AM' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Rejection Comments
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Rejection Comments] = 'This is a Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Rejection Comments

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Version
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Version] = '14' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Version

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Change Summary
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Change Summary] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Can not update a system defined column

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Changeset
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Changeset] = '16' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Can not update a system defined column

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Cinchy Id
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Cinchy Id] = '123123' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Id

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update System Column Cinchy Record Type
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Cinchy Record Type] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Record Type

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update Number Column with Text
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Id] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update Yes/No Column with Text
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Salaried] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be Yes or No.

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update Date Column with Text
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Start Date] = 'Test' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a valid date.

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Simple Column Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Start Date] = '1 Dec 2020', t.[Emergency Contact Number] = '23123123', t.[Salaried] = 'true', t.[Name] = 'Test', t.[Id] = 5454 FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[Start Date], t.[Emergency Contact Number], t.[Salaried], t.[Name], t.[Id] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6; and validate text result Start Date,Emergency Contact Number,Salaried,Name,Id2020-05-02 00:00:00,4545654656,True,Automation6,6 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Link Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Job] = ResolveLink('Toronto','Location'), t.[Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), t.[Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), t.[Manager] = ResolveLink('Apple','Name'),t.[Person]= ResolveLink('Orange','Name'), t.[Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[Job], t.[Link Calculated Cache], t.[Manager], t.[Person], t.[Role] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6 and validate text result Job,Link Calculated Cache,Manager,Person,RoleAjax,FirstName Test2 LastName Test2,Apple,Apple,Dev with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Multi Select Link Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[MSL] = ResolveLink('Mar 03 2020','Date') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[MSL] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6 and validate text result MSL2020-12-06 00:00:00.0000000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Choice Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Employee Term] = 'Full Time' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[Employee Term] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6 and validate text result Employee TermPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Multi Select Choice Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[MSC] = 'Dance,Jump' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[MSC] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6 and validate text result MSC with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Hierarchy Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[Hlink] = ResolveLink('32','Id') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[Hlink] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6 and validate text result HlinkAll Edit View Row Filter12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: RT - User with edit all columns with editable row filter and view all columns with viewable row filter is not able to update read only Multi Select Hierarchy Cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET t.[MSH] = ResolveLink('12,32','Id') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select t.[MSH] FROM [Mock].[UpdateCAEmployee8] t Where t.[Id] = 6; and validate text result MSH12, All Edit View Row Filter12, Edit Selected Edit Row Filter currentUsersGroups12, viewonly12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |