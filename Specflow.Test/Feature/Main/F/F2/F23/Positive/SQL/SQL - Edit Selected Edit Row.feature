Feature: SQL Edit Selected Edit Row

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with edit selected columns with editable row filter based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a nested link column as a user with edit selected columns with editable row filter based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a nested link column as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a nested link column as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on a nested link column as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter set based on subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter based on subquery that access completely unrelated data
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter set based on simple column types
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter set based on link column types
	When As User Edit Selected Edit Row Filter Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter set based on nested link column types
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter set based on Execute Saved Query
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter set based on CurrentUserID()
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter set based on currentUsersGroups()
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn