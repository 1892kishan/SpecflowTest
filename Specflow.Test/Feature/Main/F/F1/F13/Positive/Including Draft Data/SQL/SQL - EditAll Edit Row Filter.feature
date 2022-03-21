Feature: SQL EditAll Edit Row Filter

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit all columns with editable row filter based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit all columns with editable row filter based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a nested link column as a user with edit all columns with editable row filter based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin27.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin31.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin26.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin33.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on a nested link column as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on Cinchy Id as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCExists2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists41.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery21.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery24.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on subquery
	When As User EditAll Edit Row Filter Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter based on subquery that access completely unrelated data
	When As User EditAll Edit Row Filter Unrelated Subquery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on simple column types
	When As User EditAll Edit Row Filter Simple Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on link column types
	When As User EditAll Edit Row Filter Link Column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit all columns with editable row filter set based on nested link column types
	When As User EditAll Edit Row Filter Nested Link column Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on Execute Saved Query
	When As User EditAll Edit Row Filter executeSavedQuery Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on CurrentUserID()
	When As User EditAll Edit Row Filter currentUserId Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit all columns with editable row filter set based on currentUsersGroups()
	When As User EditAll Edit Row Filter currentUsersGroups Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval1] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateFruit11,2021-01-01 00:00:00Annie,2021-01-01 00:00:00Fruit10,2021-01-01 00:00:00