Feature: SQL ViewSelected EditSelected View Edit RF Update

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Choice Column with non-available option
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Employee Term] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update MultiSelect Choice Column with non-available option
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[MSC] = 'Test,Test1' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Created
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Created] = 'May 7, 2021 9:37:06 AM' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Created By
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Created By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created By

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Deleted By
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Deleted By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted By

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Deleted
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Deleted] = 'May 7, 2021 9:36:06 AM' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Draft Version
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Draft Version] = '1' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Draft Version

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Modified By
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Modified By] = ResolveLink('Ann','Username') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified By

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Modified
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Modified] = 'May 7, 2021 9:36:06 AM' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Rejection Comments
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Rejection Comments] = 'This is a Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Rejection Comments

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Version
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Version] = '14' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Version

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Change Summary
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Change Summary] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Change Summary

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Changeset
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Changeset] = '16' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Changeset

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Cinchy Id
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Cinchy Id] = '123123' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Id

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update System Column Cinchy Record Type
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Cinchy Record Type] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Record Type

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Number Column with Text
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Id] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Yes/No Column with Text
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Salaried] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be Yes or No.

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Date Column with Text
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Start Date] = 'Test' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a valid date.

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Non-accessible Number Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Emergency Contact Number] = 123123 FROM [Mock].[UpdateCAEmployee17] t WHERE [Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Emergency Contact Number

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update Non-accessible Link Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Person] = ResolveLink('Apple','Name') FROM [Mock].[UpdateCAEmployee17] t WHERE [Id] = 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Simple Column Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Start Date] = '1 Dec 2020', t.[Salaried] = 'true', t.[Name] = 'Test', t.[Id] = 5454 FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select t.[Start Date], t.[Emergency Contact Number], t.[Salaried], t.[Name], t.[Id] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8; and validate text result Start Date,Salaried,Name,Id2018-10-11 00:00:00,False,Automation8,8 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Link Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Job] = ResolveLink('Toronto','Location'), t.[Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), t.[Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), t.[Manager] = ResolveLink('Apple','Name') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select t.[Job], t.[Link Calculated Cache], t.[Manager], t.[Person], t.[Role] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8 and validate text result Job,Link Calculated Cache,Manager,RoleToronto,FirstNameTest LastNameTest,Orange,QA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Multi Select Link Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[MSL] = ResolveLink('Mar 03 2020','Date') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User Admin Run cql statement Select t.[MSL] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8 and validate text result MSL with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Choice Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User Admin Run cql statement Select t.[Employee Term] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8 and validate text result Employee TermCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |

@Rest
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Multi Select Choice Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[MSC] = 'Dance,Jump' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User Admin Run cql statement Select t.[MSC] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8 and validate text result MSCJump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |

@Rest 
Scenario: RT - User with edit selected columns with editable row filter and view selected columns with viewable row filter is not able to update read only Multi Select Hierarchy Cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET t.[MSH] = ResolveLink('12,32','Id') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name   | Value |
	Then As User Admin Run cql statement Select t.[MSH] FROM [Mock].[UpdateCAEmployee17] t Where t.[Id] = 8; and validate text result MSH4, 5 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 110 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) MSH