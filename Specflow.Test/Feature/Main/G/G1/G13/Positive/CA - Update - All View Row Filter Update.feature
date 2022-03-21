Feature: CA - Update - All View Row Filter Update

# Use Table UpdateCAEmployee9
# User - All View Row Filter Simple Column
@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update a Link cell
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test2 LastName Test2','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] = 3; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 3 and validate text result Job,Link Calculated Cache,Manager,Person,RoleAjax,FirstName Test3 LastName Test3,Grape,Grape,Select with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 3 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update a Choice cell
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 7 and validate unordered text result Employee Term\nCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 7 ORDER BY [Version],[Draft Version] and validate unordered text result Employee Term\nCo-op\nCo-op\nCo-op\nCo-op\nPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update a MultiSelect Choice cell
	When As User All View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 4 and validate unordered text result Id,MSC\n4,Dance, Play with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Id], [Version],[Draft Version], [MSC] FROM [Mock].[UpdateCAEmployee9] Where [Id] = 4 ORDER BY [Id], [Version],[Draft Version] and validate unordered text result Id,Version,Draft Version,MSC\n4,1,0,Dance, Play\n4,1,1,Dance, Play\n4,1,2,\n4,2,0,Dance, Play\n4,2,1,Dance, Play\n4,2,2,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update Simple Column cell
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] = 11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee9] Where [Id] = 11 and validate unordered text result Start Date,Emergency Contact Number,Salaried\n2020-05-02 00:00:00,678678768,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee9] Where [Id] = 11 ORDER BY [Version],[Draft Version] and validate unordered text result Start Date,Emergency Contact Number,Salaried\n2020-05-02 00:00:00,678678768,False\n2020-05-02 00:00:00,678678768,False\n2020-05-02 00:00:00,678678768,False\n2020-05-02 00:00:00,678678768,False\n2020-12-01 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update Link cells
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] BETWEEN 12 AND 14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 12 AND 14; and validate unordered text result Job,Link Calculated Cache,Manager,Person,Role\nToronto,FirstName Test3 LastName Test3,Orange,Orange,HR with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable51.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update Choice cells
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Employee Term] = 'Part Time' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] BETWEEN 15 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 15 AND 17; and validate unordered text result Employee Term\nFull Time\nPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update MultiSelect Choice cells
	When As User All View Row Filter Simple Column Run cql statement Update t SET [MSC] = 'Dance,Jump,Play,Sleep' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] BETWEEN 18 AND 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 18 AND 20; and validate unordered text result Id,MSC\n19,Play\n20,Jump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Id], [Version],[Draft Version],[MSC] FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Id], [Version],[Draft Version] and validate unordered result resultCATable52.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As user with edit all columns and view all columns with viewable row filter, Update Simple Column cells
	When As User All View Row Filter Simple Column Run cql statement Update t SET [Start Date] = '1 Dec 2020', [Emergency Contact Number] = '23123123', [Salaried] = 'true' FROM [Mock].[UpdateCAEmployee9] t WHERE t.[Id] BETWEEN 24 AND 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 24 AND 26; and validate unordered text result Start Date,Emergency Contact Number,Salaried\n2020-05-02 00:00:00,123213121,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User All View Row Filter Simple Column Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee9] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable53.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |