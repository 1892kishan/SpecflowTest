Feature: SQL ViewAll View RF

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on subquery
	When As User ViewAll View RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on simple column types
	When As User ViewAll View RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on link column types
	When As User ViewAll View RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit5,158

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 156 SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit3,156

@Rest
Scenario: AD - SELECT temp table as a user with view all columns with viewable row filter based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = currentUserId(); SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit4,157

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with view all columns with viewable row filter based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a nested link column as a user with view all columns with viewable row filter based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a simple column Cinchy Id as a user with view all columns with viewable row filter based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on Cinchy Id as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin24.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a nested link column as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on Cinchy Id as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a nested link column as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on Cinchy Id as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a nested link column as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a simple column Cinchy Id as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on Cinchy Id as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin24.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Error
#Unknown parent node type - Microsoft.SqlServer.TransactSql.ScriptDom.UnqualifiedJoin
@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a nested link column as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on Cinchy Id as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists34.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists90.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists91.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists32.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

#Error
#Ambiguous reference to column [Name], this column exists in multiple tables referenced by the query
@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit2,150,2342342342,Ajax

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit5,158,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit3,156,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns with viewable row filter set based on subquery
	When As User ViewAll View RF Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateApple,2021-02-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewAll View RF Unrelated Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with view all columns with viewable row filter set based on simple column types
	When As User ViewAll View RF Simple Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateJohn,2020-12-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with view all columns with viewable row filter set based on link column types
	When As User ViewAll View RF Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with view all columns with viewable row filter set based on nested link column types
	When As User ViewAll View RF Nested Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns with viewable row filter set based on Execute Saved Query
	When As User ViewAll View RF executeSavedQuery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit5,2020-11-02 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns with viewable row filter set based on CurrentUserID()
	When As User ViewAll View RF currentUserId Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit3,2020-11-02 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns with viewable row filter set based on currentUsersGroups()
	When As User ViewAll View RF currentUsersGroups Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00