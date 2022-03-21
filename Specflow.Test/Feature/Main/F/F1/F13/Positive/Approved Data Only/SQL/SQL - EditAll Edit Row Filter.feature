Feature: SQL EditAll Edit Row Filter

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit all columns with editable row filter based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit all columns with editable row filter based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a nested link column as a user with edit all columns with editable row filter based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCCte4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCExists1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00