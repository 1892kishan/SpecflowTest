Feature: CA - Update - View All Edit Selected View Row Filter Update

# Use Table UpdateCAEmployee14
# User - View All Edit Selected View Row Filter Simple Column
@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update a Link cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Ajax','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Orange','Name') FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test1 LastName Test1,Annie,Annie,HR with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable240.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update a Choice cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 8 and validate text result Employee TermCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 8 ORDER BY [Version],[Draft Version] and validate text result Employee TermCo-opCo-opCo-opCo-opCo-opCo-opPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update a MultiSelect Choice cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 9 and validate unordered text result Id,MSC\n9,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id],[Version],[Draft Version], [MSC] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 9 ORDER BY [Id],[Version],[Draft Version] and validate unordered text result Id,Version,Draft Version,MSC\n9,1,0,Dance, Jump, Play, Sleep\n9,1,1,Dance, Jump, Play, Sleep\n9,1,2,\n9,1,3,Dance, Jump, Play, Sleep\n9,2,0,Dance, Jump, Play, Sleep\n9,2,1,Dance, Jump, Play, Sleep\n9,2,2,Dance, Jump with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

#Ambiguous column name 'CinchyId'.Ambiguous column name 'CinchyId'.
@Rest @Bug @Ignore
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update a Hierarchy cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('viewonly12','Employee ID') FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee14] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update Simple Column cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee14] Where [Id] = 1 and validate text result Start Date,Emergency Contact Number,Salaried,678678768,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee14] Where [Id] = 1 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried,678678768,False,678678768,False,678678768,False,678678768,False2020-12-01 00:00:00,678678768,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update Link cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name') FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] BETWEEN 30 AND 33; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 30 AND 33; and validate unordered result resultCATable245.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 30 AND 33 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable241.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update Choice cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] BETWEEN 13 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 13 AND 17; and validate text result Employee TermPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id],[Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 13 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable242.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update MultiSelect Choice cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] BETWEEN 20 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 20 AND 24; and validate unordered text result Id,MSC\n22,Dance, Play with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id], [Version],[Draft Version],[MSC] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 20 AND 24 ORDER BY [Id],[Version],[Draft Version] and validate unordered result resultCATable243.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update Hierarchy cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('Edit Selected Edit Row Filter currentUsersGroups12','Employee ID') FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] BETWEEN 21 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 21 AND 24; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Version],[Draft Version]; and validate unordered result resultCATable47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit selected columns and view all columns with viewable row filter, Update Simple Column cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2018', [Salaried] = 'false' FROM [Mock].[UpdateCAEmployee14] t WHERE t.[Id] BETWEEN 25 AND 29; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 25 AND 29; and validate text result Start Date,Emergency Contact Number,Salaried2018-10-11 00:00:00,678678768,True2020-12-01 00:00:00,123213121,False2018-10-11 00:00:00,123213121,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee14] WHERE [Id] BETWEEN 25 AND 29 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable244.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |