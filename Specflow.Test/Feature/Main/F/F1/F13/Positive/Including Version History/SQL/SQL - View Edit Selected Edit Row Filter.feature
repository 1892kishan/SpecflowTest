Feature: SQL View Edit Selected Edit Row Filter

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 72    |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10John1,10

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10John1,10

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 150   |
	Then Validate expected string to be Name,UserFruit2,150

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 148   |
	Then Validate expected string to be Name,UserGrapefruit,148

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns  based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 93    |
	Then Validate expected string to be Name,UserOrange,93Orange1,93

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCLeftJoin81.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit2 |
	Then Validate unordered result ResultDCLeftJoin55.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCLeftJoin54.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCRightJoin92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin79.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFullJoin76.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin77.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit2 |
	Then Validate unordered result ResultDCFullJoin57.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCFullJoin58.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte37.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte17.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFromSubQuery87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit2 |
	Then Validate unordered result ResultDCFromSubQuery45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCFromSubQuery44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery11.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery12.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery13.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery14.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery15.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery17.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate expected string to be Name,User,Cinchy Record Type,Approval State,Version,Draft Version,FromSubQueryBlueberry,109,,Approved,1,0,73Blueberry,109,,Approved,2,0,73Blueberry,109,Change Request,Pending,2,1,73Blueberry,109,Change Request,Pending,2,2,73Blueberry,109,Change Request,Pending,2,3,73Blueberry,109,Change Request,Pending,2,4,73

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value  |
		| innerValue | 73     |
		| value      | Fruit2 |
	Then Validate unordered result ResultDCColumnSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value      |
		| innerValue | 73         |
		| value      | Grapefruit |
	Then Validate unordered result ResultDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  based on subquery that access completely unrelated data
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on simple column types
	When As User View Edit Selected Edit Row Filter Simple Column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on link column types
	When As User View Edit Selected Edit Row Filter Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns  set based on nested link column types
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on Execute Saved Query
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql from file SelectDeclare98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on CurrentUserID()
	When As User View Edit Selected Edit Row Filter currentUserId Run cql from file SelectDeclare99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns  set based on currentUsersGroups()
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql from file SelectDeclare5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare11.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |