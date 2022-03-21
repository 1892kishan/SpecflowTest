Feature: SQL ViewSelected View RF

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on subquery
	When As User ViewSelected View RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 72 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on simple column types
	When As User ViewSelected View RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 10 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on link column types
	When As User ViewSelected View RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 133 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserKiwi,133

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 166 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit8,166

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 164 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit6,164

@Rest
Scenario: UE - SELECT temp table as a user with view selected columns with viewable row filter based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 93 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserOrange,93

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with view selected columns with viewable row filter based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a nested link column as a user with view selected columns with viewable row filter based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExist22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit2,150,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit7,165,9898989898

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit8,166,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit6,164,73

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Fruit8' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit8

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Fruit6' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit6

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Annie' SELECT [Name] FROM [Mock].[Employees360] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnie