Feature: SQL All View Row Filter

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on subquery
	When As User All View Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on simple column types
	When As User All View Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on link column types
	When As User All View Row Filter Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on nested link column types
	When As User All View Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserGrape,102

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns and view all columns with viewable row filter based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserNectarine,101

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin32.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a nested link column as a user with edit all columns and view all columns with viewable row filter based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit all columns and view all columns with viewable row filter based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin34.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin35.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin29.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin36.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin35.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a nested link column as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin37.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin38.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin39.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin32.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a nested link column as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin30.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin29.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin34.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin38.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin37.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a nested link column as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin39.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin40.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin35.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

#Error
#Unknown parent node type - Microsoft.SqlServer.TransactSql.ScriptDom.UnqualifiedJoin
@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a nested link column as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on Cinchy Id as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte19.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte19.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte15.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte16.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte16.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte20.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Name1,UserApricots,Apricots,100

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists48.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists42.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists47.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists42.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists46.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists50.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists49.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists44.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery22.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery23.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery25.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery28.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery29.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery32.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery25.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery29.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery30.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

#Error
#Ambiguous reference to column [Name], this column exists in multiple tables referenced by the query
@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit2,150,2342342342,Ajax

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryGrape,102,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApricots,100,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns and view all columns with viewable row filter set based on subquery
	When As User All View Row Filter Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateApple,2021-02-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User All View Row Filter Unrelated Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns and view all columns with viewable row filter set based on simple column types
	When As User All View Row Filter Simple Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateJohn,2020-12-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns and view all columns with viewable row filter set based on link column types
	When As User All View Row Filter Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns and view all columns with viewable row filter set based on nested link column types
	When As User All View Row Filter Nested Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%' ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00Fruit11,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User All View Row Filter executeSavedQuery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateGrape,2020-08-06 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User All View Row Filter currentUserId Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateApricots,2020-10-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User All View Row Filter currentUsersGroups Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00