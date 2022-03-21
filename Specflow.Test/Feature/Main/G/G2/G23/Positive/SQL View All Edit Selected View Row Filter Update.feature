Feature: SQL View All Edit Selected View Row Filter Update

# Use Table UpdateEmployee14
# User - View All Edit Selected View Row Filter Simple Column
@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update a Link cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Ajax','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Orange','Name') FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee14] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleAjax,FirstName Test3 LastName Test3,Orange,Annie,HR with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee14] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable240.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update a Choice cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee14] Where [Id] = 8 and validate text result Employee TermPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee14] Where [Id] = 8 ORDER BY [Version],[Draft Version] and validate text result Employee TermFull TimeFull TimeFull TimePart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update a MultiSelect Choice cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateEmployee14] Where [Id] = 4 and validate unordered text result Id,MSC\n4,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id],[Version],[Draft Version], [MSC] FROM [Mock].[UpdateEmployee14] Where [Id] = 4 ORDER BY [Version],[Draft Version] and validate unordered text result Id,Version,Draft Version,MSC\n4,1,0,Dance, Play\n4,2,0,\n4,3,0,\n4,4,0,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

##Ambiguous column name 'CinchyId'.Ambiguous column name 'CinchyId'.
#@Rest @Bug @Ignore
#Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update a Hierarchy cell
#	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('viewonly12','Employee ID') FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value |
#	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee14] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee14] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update Simple Column cell
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Salaried] = 'true' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] = 12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee14] Where [Id] = 12 and validate text result Start Date,Emergency Contact Number,Salaried2020-12-01 00:00:00,4545654656,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee14] Where [Id] = 12 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried2018-10-11 00:00:00,4545654656,False2018-10-11 00:00:00,4545654656,False2018-10-11 00:00:00,4545654656,False2020-12-01 00:00:00,4545654656,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update Link cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name') FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] BETWEEN 30 AND 33; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 30 AND 33; and validate unordered result resultRegularTable245.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 30 AND 33 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable241.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update Choice cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] BETWEEN 13 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 13 AND 17; and validate text result Employee TermPart TimePart TimePart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id],[Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 13 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable242.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update MultiSelect Choice cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] BETWEEN 20 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 20 AND 24; and validate unordered text result Id,MSC\n20,Dance, Jump, Play, Sleep\n21,Dance, Jump, Play, Sleep\n24,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Id],[Version],[Draft Version],[MSC] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 20 AND 24 ORDER BY [Id], [Version],[Draft Version] and validate unordered result resultRegularTable243.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

#@Rest @Bug @Ignore
#Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update Hierarchy cells
#	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('Edit Selected Edit Row Filter currentUsersGroups12','Employee ID') FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] BETWEEN 21 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value |
#	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 21 AND 24; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Version],[Draft Version]; and validate unordered result resultRegularTable47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns and view all columns with viewable row filter, Update Simple Column cells
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2018', [Salaried] = 'false' FROM [Mock].[UpdateEmployee14] t WHERE t.[Id] BETWEEN 25 AND 29; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 25 AND 29; and validate text result Start Date,Emergency Contact Number,Salaried2018-12-01 00:00:00,123213121,False2018-12-01 00:00:00,123213121,False2018-12-01 00:00:00,123213121,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User View All Edit Selected View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee14] WHERE [Id] BETWEEN 25 AND 29 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable244.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |