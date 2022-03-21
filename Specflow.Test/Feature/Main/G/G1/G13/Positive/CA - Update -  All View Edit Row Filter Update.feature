Feature: CA - Update -  All View Edit Row Filter Update

# Use Table UpdateCAEmployee8
# User - All View Edit Row Filter Simple Column
@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Link cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test1 LastName Test1,Annie,Annie,HR with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Choice cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 7 and validate text result Employee TermCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 7 ORDER BY [Version],[Draft Version] and validate text result Employee TermCo-opCo-opCo-opCo-opCo-opCo-op with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest 
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a MultiSelect Choice cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [MSC] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 4 and validate text result MSCDance, Play with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [MSC] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 4 ORDER BY [Version],[Draft Version] and validate text result MSCDance, PlayDance, PlayDance, PlayDance, Play with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

#Ambiguous column name 'CinchyId'.Ambiguous column name 'CinchyId'.
@Rest @Bug @Ignore
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update a Hierarchy cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('12','Id') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee8] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Simple Column cell
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] = 11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee8] Where [Id] = 11 and validate text result Start Date,Emergency Contact Number,Salaried2020-05-02 00:00:00,678678768,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee8] Where [Id] = 11 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried2020-05-02 00:00:00,678678768,False2020-05-02 00:00:00,678678768,False2020-05-02 00:00:00,678678768,False2020-05-02 00:00:00,678678768,False2020-12-01 00:00:00,4545654656,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Link cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] BETWEEN 12 AND 14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Id]; and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test3 LastName Test3,Orange,Orange,HRAjax,FirstName Test1 LastName Test1,Annie,Annie,All Users with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Choice cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] BETWEEN 15 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Id]; and validate text result Employee TermFull TimePart TimeFull Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update MultiSelect Choice cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] BETWEEN 18 AND 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Id]; and validate unordered text result Id,MSC\n18,Dance, Jump, Play, Sleep\n19,Play\n20,Jump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Id], [Version],[Draft Version],[MSC] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Cinchy Id],[Version],[Draft Version] and validate unordered result resultCATable46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Hierarchy cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('12','Id') FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] BETWEEN 21 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Id]; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Version],[Draft Version]; and validate unordered result resultCATable47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns with editable row filter and view all columns with viewable row filter, Update Simple Column cells
	When As User All View Edit Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee8] t WHERE t.[Id] BETWEEN 24 AND 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Id]; and validate text result Start Date,Emergency Contact Number,Salaried2020-05-02 00:00:00,123213121,False2019-04-09 00:00:00,4545654656,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Edit Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee8] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |