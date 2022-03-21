Feature: CA - Update - ViewSelected EditSelected View Edit RF

# Use Table UpdateCAEmployee17
# User - ViewSelected EditSelected View Edit RF Simple Column
@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update a Link cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test1 LastName Test1','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Orange','Name') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 3; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 3 and validate text result Job,Link Calculated Cache,Manager,RoleAjax,FirstName Test3 LastName Test3,Grape,Select with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 3 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable253.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update a Choice cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 1 and validate text result Employee TermCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 1 ORDER BY [Version],[Draft Version] and validate text result Employee TermCo-opCo-opPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update a MultiSelect Choice cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 2 and validate unordered text result Id,MSC\n2,Jump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id], [Version],[Draft Version] ,[MSC] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 2 ORDER BY [Id], [Version],[Draft Version] and validate unordered text result Id,Version,Draft Version,MSC\n2,1,0,Jump, Sleep\n2,1,1,Jump, Sleep\n2,1,2,\n2,2,0,Jump, Sleep\n2,2,1,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

##Ambiguous column name 'CinchyId'.Ambiguous column name 'CinchyId'.
#@Rest @Bug @Ignore
#Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update a Hierarchy cell
#	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('viewonly12','Employee ID') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value |
#	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee17] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update Simple Column cell
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2018', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee17] Where [Id] = 4 and validate text result Start Date,Salaried2020-05-02 00:00:00,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee17] Where [Id] = 4 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable254.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update Link cells
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test1 LastName Test1','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Grape','Name') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] BETWEEN 7 AND 10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 7 AND 10; and validate unordered result resultCATable255.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id],[Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 7 AND 10 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable256.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update Choice cells
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Employee Term] = 'Full Time' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] BETWEEN 11 AND 16; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id],[Employee Term] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 11 AND 16; and validate unordered result resultCATable257.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id],[Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 11 AND 16 ORDER BY [Id],[Version],[Draft Version] and validate unordered result resultCATable258.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update MultiSelect Choice cells
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [MSC] = 'Jump,Play' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] BETWEEN 18 AND 19; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [MSC] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 18 AND 19; and validate text result MSC with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Version],[Draft Version],[MSC] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 18 AND 19 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable259.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

#@Rest @Bug @Ignore
#Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update Hierarchy cells
#	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Hlink] = ResolveLink('Edit Selected Edit Row Filter currentUsersGroups12','Employee ID') FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] BETWEEN 21 AND 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value |
#	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 21 AND 24; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 21 AND 24 ORDER BY [Version],[Draft Version]; and validate unordered result resultCATable47.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |

@Rest
Scenario: RT - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Update Simple Column cells
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2016', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee17] t WHERE t.[Id] BETWEEN 20 AND 23; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 20 AND 23; and validate text result Start Date,Salaried2020-05-02 00:00:00,False2020-05-02 00:00:00,True2020-05-02 00:00:00,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Id],[Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee17] WHERE [Id] BETWEEN 20 AND 23 ORDER BY [Id],[Version],[Draft Version] and validate unordered result resultCATable260.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |