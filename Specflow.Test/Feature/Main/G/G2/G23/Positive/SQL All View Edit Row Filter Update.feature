Feature: SQL All View Edit Row Filter Update

# Use Table UpdateEmployee8
# User - All View Edit Row Filter Simple Column
@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Link cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee8] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test3 LastName Test3,Apple,Orange,QA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee8] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Choice cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee8] Where [Id] = 7 and validate text result Employee TermPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee8] Where [Id] = 7 ORDER BY [Version],[Draft Version] and validate text result Employee TermCo-opCo-opCo-opPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a MultiSelect Choice cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [MSC] FROM [Mock].[UpdateEmployee8] Where [Id] = 4 and validate unordered text result MSC\nDance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [MSC] FROM [Mock].[UpdateEmployee8] Where [Id] = 4 ORDER BY [Version],[Draft Version] and validate text result MSC\nDance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

#Ambiguous column name 'CinchyId'.Ambiguous column name 'CinchyId'.
@Rest @Bug @Ignore
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Hierarchy cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('viewonly12','Employee ID') FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee8] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee8] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Simple Column cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] = 11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee8] Where [Id] = 11 and validate text result Start Date,Emergency Contact Number,Salaried2020-12-01 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee8] Where [Id] = 11 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried2019-04-09 00:00:00,123213121,False2019-04-09 00:00:00,123213121,False2019-04-09 00:00:00,123213121,False2020-12-01 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Link cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] BETWEEN 12 AND 14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 12 AND 14; and validate unordered text result Job,Link Calculated Cache,Manager,Person,Role\nToronto,FirstName Test3 LastName Test3,Apple,Orange,QA\nToronto,FirstName Test2 LastName Test2,Apple,Apple,QA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Choice cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] BETWEEN 15 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 15 AND 17; and validate text result Employee TermPart TimePart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update MultiSelect Choice cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] BETWEEN 18 AND 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 18 AND 20; and validate unordered text result Id,MSC\n18,Dance, Jump, Play, Sleep\n19,Sleep, Jump, Dance, Play with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[MSC] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Hierarchy cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('Edit Selected Edit Row Filter currentUsersGroups12','Employee ID') FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] BETWEEN 21 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 21 AND 24; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Version],[Draft Version]; and validate unordered result resultRegularTable47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Simple Column cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateEmployee8] t WHERE t.[Id] BETWEEN 24 AND 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 24 AND 26; and validate unordered text result Start Date,Emergency Contact Number,Salaried\n2020-12-01 00:00:00,23123123,True\n2020-05-02 00:00:00,4545654656,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee8] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |