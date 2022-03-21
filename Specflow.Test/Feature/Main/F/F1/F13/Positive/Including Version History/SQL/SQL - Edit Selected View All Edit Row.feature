Feature: SQL Edit Selected View All Edit Row

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view all columns  based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a nested link column as a user with edit selected columns with editable row filter and view all columns  based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view all columns  based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a nested link column as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a nested link column as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a nested link column as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view all columns  set based on subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view all columns  based on subquery that access completely unrelated data
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view all columns  set based on simple column types
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view all columns  set based on link column types
	When As User Edit Selected View All Edit Row Filter Link Column Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view all columns  set based on nested link column types
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view all columns  set based on Execute Saved Query
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view all columns  set based on CurrentUserID()
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view all columns  set based on currentUsersGroups()
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |