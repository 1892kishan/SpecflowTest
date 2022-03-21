Feature: SQL View All Edit Selected View Row

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricot,142

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserLime,140

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserLemon,141

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Error
#Unknown parent node type - Microsoft.SqlServer.TransactSql.ScriptDom.UnqualifiedJoin
@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Name1,UserApricot,Apricot,142

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

#Error
#Ambiguous reference to column [Name], this column exists in multiple tables referenced by the query
@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit2,150,2342342342,Ajax

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApricot,142,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryLime,140,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateApple,2021-02-01 00:00:00

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateJohn,2020-12-01 00:00:00

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Apricot' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameApricot

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Lime' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameLime

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00