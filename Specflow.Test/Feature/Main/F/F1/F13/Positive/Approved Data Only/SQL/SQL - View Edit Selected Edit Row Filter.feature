Feature: SQL View Edit Selected Edit Row Filter

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn