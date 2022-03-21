Feature: SQL Multiple Entitlements

@Rest
Scenario: VH - SELECT temp table as a user with multiple entitlements
	When As User Multiple Entitlements Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCInnerJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCInnerJoin56.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCLeftJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin62.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCRightJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin55.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCFullJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFullJoin65.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT CROSS JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value    |
		| value | Apricots |
	Then Validate unordered result ResultDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCCte11.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCExists4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists192.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereInSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery51.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCFromSubQuery6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery52.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate expected string to be Name,User,Cinchy Record Type,Approval State,Version,Draft Version,FromSubQueryBlueberry,109,,Approved,1,0,73Blueberry,109,,Approved,2,0,73Blueberry,109,Change Request,Pending,2,1,73Blueberry,109,Change Request,Pending,2,2,73Blueberry,109,Change Request,Pending,2,3,73Blueberry,109,Change Request,Pending,2,4,73

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |