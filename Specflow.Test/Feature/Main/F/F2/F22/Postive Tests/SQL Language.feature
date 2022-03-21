Feature: Admin Positive Scenario

#Failing due to Day Light Saving
@Rest @Bug @Ignore
Scenario: SELECT * FROM TABLE
	When Run cql statement Select * from [Import].[CSV_TR_EX6]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultAllFromTable0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Failing due to Day Light Saving
@Rest @Bug @Ignore
Scenario: SELECT * FROM TABLE using parameters
	When Run cql statement Select * from [Import].[CSV_TR_EX6] where [Principal] > @value; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10000 |
	Then Validate unordered result ResultAllFromTableUsingParams0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT <Columns> FROM TABLE using parameters
	When Run cql statement Select [Agent], [Business_Line], [CIF], [CIF_Type], [Client_Name], [Cmp_Int_to_Date], [Cmpd_Freq], [Company], [Cur], [Datasource], [FileName], [Instrument_No], [Int_Pay], [Int_to_Date], [Issue_Date], [Maturity], [Next_Pay], [On_File], [Origin_Type], [Orignal_Principal], [Owner_Type], [Parent Client], [Pay_Freq], [Pay_Freq_Incr], [Pay_Mode], [Plan_Number], [Plan_Type], [Product] from [Import].[CSV_TR_EX6] where [Principal] > @value ORDER BY [Principal]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 25000 |
	Then Validate unordered result ResultSpecificColumnFromTableUsingParams0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Failing due to Day Light Saving
@Rest @Bug @Ignore
Scenario: SELECT WHERE DELETED IS NULL
	When Run cql statement Select * from [Import].[CSV_TR_EX6] where [Deleted] is not null;; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeletedIsNull0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Failing due to Day Light Saving
@Rest @Bug @Ignore
Scenario: SELECT WHERE DELETED IS NOT NULL
	When Run cql statement Select * from [Import].[CSV_TR_EX6] where [Deleted] IS NOT NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeletedIsNotNull0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT using alias
	When Run cql statement Select [Bool] as Boolean, [Bool Link] as BooleanLink, [Calculated] as CalculatedColumnAlias, [Choice] as ChoiceAlias, [Number] as NumberHasABigAliasForTestingPurposeNumberHasABigAliasForTestingPurposeNum from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultAlias0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Fails due to Live column -> Total Rate Rounding (Table - CSV_TR_EX6)
@Rest
Scenario: SELECT <Columns> FROM TABLE
	When Run cql statement SELECT [Accrd_Int], [Additional Referrals], [Agent], [Business_Line], [CIF], [CIF_Type], [Client_Name], [Cmp_Int_to_Date], [Cmpd_Freq], [Company], [Cur], [Datasource], [FileName], [Instrument_No], [Int_Pay], [Int_to_Date], [Issue_Date], [Maturity], [Next_Pay], [On_File], [Origin_Type], [Orignal_Principal], [Owner_Type], [Parent Client], [Pay_Freq], [Pay_Freq_Incr], [Pay_Mode], [Plan_Number], [Plan_Type], [Principal], [Product], [Product_Code], [Prov], [Rate], [RecordType], [Red_Non], [Referral], [Snapshot Date], [Term], [Term_Days], [Term_Mth], [Term_Type], [Total Rate], [UDF Cached], [UDF Return], [Unique Id], [User], [Year] FROM [Import].[CSV_TR_EX6] ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultColumnFromTable0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT standard Columns
	When Run cql statement Select [Text], [Number], [Bool], [Date] FROM [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultStandardColumns0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT standard Columns single and multi select Choice
	When Run cql statement Select [Choice],[MultiSelect Choice] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultChoiceColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT standard Columns single and multi select links
	When Run cql statement Select [Multi Select Link],[Number Link], [Text Link], [Bool Link], [Date Link] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# GETDATE()not supported in pgsql
@Rest
Scenario: SELECT standard Columns single and multi select Hierarchy links
	When Run cql statement Select [Multi Select Hierarchy Link], [Single Select Hierarchy Link] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultHierarchyColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# @Rest
#Scenario: SELECT spatial Columns
# @Rest
#Scenario: SELECT spatial Columns including standard columns
# SelectAllDataTypes table getDate Function inside column [Live Calc Col CQL: DateDiff] not supported in pgsql
# ALso Multi Select Hierarchy Link linked to [Number] renders as 1,1.23213e+009,890,890 in TSQL while 1, 1232131223, 890, 890 in PGSQL
@Rest
Scenario: SELECT DISTINCT(<Column>)
	When Run cql statement Select DISTINCT [Bool], [Calculated], [Choice Link], [Date], [Text], [Date Link], [MultiSelect Choice], [Multi Select Hierarchy Link] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDistinctColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Same as above
@Rest
Scenario: SELECT TOP
	When Run cql statement Select TOP 20 [Bool], [Bool Link], [Calculated], [Choice], [Choice Link], [Date], [Date Link], [Live Calc Col CQL: FORMAT FN], [Live Calc Col UDF], [Multi Select Hierarchy Link], [Multi Select Link], [MultiSelect Choice], [Nested Link], [Non Calc Col CQL: DateDiff], [Non Live Calc Col UDF], [Non Live Calc ColCQL: CONCAT FN], [Number], [Number Link], [Single Select Hierarchy Link], [Text] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultTop20Row0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT DISTINCT TOP 15 with two Columns
	When Run cql statement Select DISTINCT TOP 15 [Number],[Text] from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDistinctTop15Row0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#All SELECT clauses (e.g. GROUP BY, HAVING, etc.)
@Rest
Scenario: SELECT GROUP BY
	When Run cql statement Select [Text],[Choice Link], [Nested Link] from [Import].[SelectAllDataTypes] GROUP By [Text],[Choice Link], [Nested Link]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultGroupBy0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
#In Discussion
Scenario: SELECT HAVING WITH MIN MAX
	When Run cql statement Select * from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result Result.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT HAVING WITH COUNT
	When Run cql statement Select T.[Text],T.[Choice Link], T.[Nested Link], MIN(T.Number) as counter from [Import].[SelectAllDataTypes] T GROUP By T.[Text],T.[Choice Link], T.[Nested Link] HAVING COUNT(*) <> 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultHavingCount0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT INTO clause
	When Run cql statement SELECT [Number] INTO #temp FROM [Import].[SelectAllDataTypes]; SELECT [Number] from [Import].[SelectAllDataTypes] E JOIN #temp T ON E.[Number]=T.[Number] where [Number] > 500; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultIntoNumberType0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Failing due to Day Light Saving
@Rest @Bug @Ignore
Scenario: SELECT ORDER By clause
	When Run cql statement Select * from [Import].[CSV_TR_EX6] where [Principal] > 35000 ORDER BY [Client_Name]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderBy0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT ORDER By clause based on ordinal position (e.g. ORDER BY 1, 2)
	When Run cql statement Select [Client_Name],[Principal] from [Import].[CSV_TR_EX6] where [Principal] > 5000 ORDER BY 1,2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderByOrdinal0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# GETDATE()not supported in pgsql
@Rest
Scenario: SELECT ORDER By clause based on Column Name(e.g. ORDER BY [First Name], [Last Name])
	When Run cql statement Select [Multi Select Hierarchy Link],[MultiSelect Choice],[Bool],[Text],[Text Link],[Date],[Choice],[Nested Link] From [Import].[SelectAllDataTypes] ORDER BY [Bool],[Text],[Text Link],[Date],[Choice],[Nested Link]  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderByColumns0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# GETDATE()not supported in pgsql
@Rest
Scenario: SELECT ORDER By clause ASC
	When Run cql statement SELECT [Text],[Date Link],[Choice Link], [Bool], [Bool Link], [Calculated], [Choice], [Date], [Live Calc Col CQL: FORMAT FN], [Live Calc Col UDF], [Multi Select Hierarchy Link], [Multi Select Link], [MultiSelect Choice], [Nested Link], [Non Live Calc Col UDF], [Non Live Calc ColCQL: CONCAT FN], [Number], [Number Link], [Single Select Hierarchy Link], [Text Link] FROM [Import].[SelectAllDataTypes] ORDER BY [Text],[Date Link],[Choice Link] ASC  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderByAsc0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT ORDER By clause DESC
	When Run cql statement Select [Text],[Date Link],[Choice Link] from [Import].[SelectAllDataTypes] ORDER BY [Text] DESC ,[Date Link] DESC,[Choice Link] DESC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderByDesc0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT ORDER By clause ASC DESC
	When Run cql statement Select [Text],[Date Link],[Choice Link] from [Import].[SelectAllDataTypes] ORDER BY [Text] DESC ,[Date Link] ASC,[Choice Link] DESC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOrderByAscDesc0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: SELECT ORDER By clause FETCH
	When Run cql statement Select * from [Import].[SelectAllDataTypes]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result Result.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT ORDER By clause OFFSET / FETCH NEXT
	When Run cql statement Select [Text],[Date Link],[Choice Link] from [Import].[SelectAllDataTypes] ORDER BY [TEXT] OFFSET 7 ROWS FETCH NEXT 10 ROWS ONLY; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultOffsetFetchNext0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT OVER clause PARTITION BY and ORDER BY
	When Run cql from file SelectPartitionBy0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultPartitionBy0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT OVER clause ROWS UNBOUNDED PRECEDING
	When Run cql statement SELECT FName, Salary, SumByRows=SUM(Salary) OVER (ORDER BY Salary ROWS UNBOUNDED PRECEDING) FROM [SandBox].[EmpSalary] ORDER BY [Salary]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultRowUnBoundedPreceding.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT OVER clause RANGE UNBOUNDED PRECEDING
	When Run cql statement SELECT FName, Salary, SumByRows=SUM(Salary) OVER (ORDER BY Salary RANGE UNBOUNDED PRECEDING) FROM [SandBox].[EmpSalary] ORDER BY [Salary]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultRangeUnBoundedPreceding.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT OVER clause BETWEEN AND FOLLOWING
	When Run cql from file SelectBetweenFollowing0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultBetweenFollowing0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT OVER clause PRECEDING and FOLLOWING
	When Run cql from file SelectPrecedingFollowing0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultPrecedingFollowing0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario:SELECT OVER clause ROWS UNBOUNDED FOLLOWING
	When Run cql from file SelectUnboundedfollowing.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultUnboundedfollowing0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE <Column> = 'SomeVal' OR <Column1> Not Equal To 'SomeVal1'
	When Run cql statement Select [DepartmentID], [Revenue], [Year] from [SandBox].[REVENUE] where [Revenue] = '10000' AND YEAR != '2004'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultWhereEqualNotEqual0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE <Column1> IN AND <Column2> NOT IN
	When Run cql statement Select [DepartmentID], [Revenue], [Year] from [SandBox].[REVENUE] where [Revenue] IN ('10000',30000) AND YEAR NOT IN ('2004',2001); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInNotIn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE <Column1> BETWEEN 'Val1' AND 'Val2'
	When Run cql statement Select [DepartmentID], [Revenue], [Year] from [SandBox].[REVENUE] where [Revenue] BETWEEN 30000 AND 50000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultWhereBetween0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT CASE WHERE
	When Run cql from file SelectCase0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCase0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE CASE
	When Run cql from file SelectCaseWhere0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCaseWhere0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Hints -Not sure if we support
#UPDLOCK -Not sure if we support
#HOLDLOCK-Not sure if we support
#Operator
@Rest
Scenario: SELECT Logical operator LIKE (<Column1> LIKE AND <Column2> NOT LIKE)
	When Run cql from file SelectWhereLikeNotLike0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultWhereLikeNotLike0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT Logical operator EXISTS
	When Run cql from file SelectExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT String operator LIKE percentage (Wildcard - Character(s) to Match)
	When Run cql from file SelectLikeWildcard0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLikeWildcard0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT String operator LIKE [ ] (Wildcard - Character(s) to Match)
	When Run cql from file SelectLikeSquarebracketWildcard0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLikeSquarebracketWildcard0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT String operator LIKE (Wildcard - Character(s) Not to Match)
	When Run cql from file SelectLikeWildcardNoMatch0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLikeWildcardNoMatch0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT String operator underscore (Wildcard - Match One Character)
	When Run cql from file SelectLikeUnderscore0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLikeUnderscore0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT String operator plus (String Concatenation)
	When Run cql statement SELECT [Customer Id], [CustomerCity], [Customermail], [CustomerName], [CustomerCity] + ' ' + [CustomerName] as ConcatNameCity FROM [SandBox].[OnlineCustomers] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultPlusOperator0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: Inner Join with more than one reference
	When Run cql statement SELECT x.[User] FROM [Mock].[Employees360] x INNER JOIN [Mock].[ReferenceTable1] as y ON x.[Person] = y.[Person] AND x.[Job] = y.[Job] ORDER BY x.[User] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInnerJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# TODO
#@Rest
# Doesn't work
#Scenario: SELECT String operator plus equal to (String Concatenation Assignment)
@Rest
Scenario: SELECT UNION
	When Run cql statement Select [Customer Id] FROM [SandBox].[OnlineCustomers] where [Customer Id] > 2 UNION Select [CustomerId] FROM [SandBox].[Orders] where [CustomerId] > 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultUnion0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT UNION ALL
	When Run cql statement Select [Customer Id] FROM [SandBox].[OnlineCustomers] where [Customer Id] > 2 UNION ALL Select [CustomerId] FROM [SandBox].[Orders] where [CustomerId] > 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultUnionAll0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#subqueries
@Rest
Scenario: SELECT column1,column2,subquery
	When Run cql from file SelectColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE NOT EXISTS (Subquery)
	When Run cql from file SelectNotExistsSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultNotExistsSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE IN (Subquery)
	When Run cql from file SelectInClauseSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInClauseSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE NOT IN (Subquery)
	When Run cql from file SelectNotInClauseSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultNotInClauseSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL less than equal to (Subquery)
	When Run cql from file SelectLessOrEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLessOrEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL less than (Subquery)
	When Run cql from file SelectLessAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLessAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL greater than equal to (Subquery)
	When Run cql from file SelectGreaterOrEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultGreaterOrEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL greater than (Subquery)
	When Run cql from file SelectGreaterAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultGreaterAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL equal to (Subquery)
	When Run cql from file SelectEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ALL not equal to (Subquery)
	When Run cql from file SelectNotEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultNotEqualAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE ANY (Subquery)
	When Run cql from file SelectEqualAnySubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultEqualAnySubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE MAX (Subquery)
	When Run cql from file SelectMaxSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultMaxSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE MIN (Subquery)
	When Run cql from file SelectMinSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultMinSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT FROM (Subquery)
	When Run cql from file SelectFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: SELECT HAVING (Subquery)
	When Run cql statement Select COUNT(*)as Count, [CustomerId], SUM([DiscountRate]) as TotalDiscount, SUM([OrderTotal]) as Total from [SandBox].[Orders] as O GROUP BY [CustomerId] HAVING COUNT(*) > (Select MIN([DiscountRate]-2) from [SandBox].[Orders]); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

##Joins
@Rest
Scenario: INNER JOIN ON Simple column
	When Run cql from file SelectInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: INNER JOIN ON Cinchy Id
	When Run cql from file SelectInnerJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInnerJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore @Bug
Scenario: INNER JOIN ON Link column and Cinchy Id
	When Run cql from file SelectInnerJoinLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInnerJoinLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: INNER JOIN ON Link column and Link Column
	When Run cql from file SelectInnerJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultInnerJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: INNER JOIN ON Nested Link column and Nested Link column
	When Run cql from file SelectInnerJoinNestedLinkNestedLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result noResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: INNER JOIN ON Link column and Nested Link column
	When Run cql from file SelectInnerJoinLinkNestedLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result noResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: LEFT JOIN ON Simple column
	When Run cql from file SelectLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: LEFT JOIN ON Cinchy Id
	When Run cql from file SelectLeftJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLeftJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: LEFT JOIN ON Link column and Link Column
	When Run cql from file SelectLeftJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLeftJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Results extra null rows
@Rest @Bug @Ignore
Scenario: RIGHT JOIN ON Simple column
	When Run cql from file SelectRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: RIGHT JOIN ON Cinchy Id
	When Run cql from file SelectRightJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultRightJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Wierd Result
@Rest @Bug @Ignore
Scenario: RIGHT JOIN ON Link column and Link Column
	When Run cql from file SelectRightJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultRightJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: RIGHT JOIN ON Nested Link column
@Rest
Scenario: FULL JOIN ON Simple column
	When Run cql from file SelectFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: FULL JOIN ON Cinchy Id
	When Run cql from file SelectFullJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFullJoinCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: FULL JOIN ON Link column and Link Column
	When Run cql from file SelectFullJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFullJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: FULL JOIN ON Nested Link column
@Rest
Scenario: CROSS JOIN ON Simple column
	When Run cql from file SelectCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: CROSS JOIN ON Cinchy Id
	When Run cql from file SelectCrossCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCrossCinchyId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: CROSS JOIN ON Link column and Link Column
	When Run cql from file SelectCrossJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCrossJoinLinkLinkColumn0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: CROSS JOIN ON Nested Link column
#-----------
@Rest
Scenario: SELECT CROSS APPLY

@Rest
Scenario: SELECT OUTER APPLY

@Rest
Scenario: SELECT PIVOT

@Rest
Scenario: SELECT UNPIVOT

# Variables
@Rest
Scenario: SELECT SET DECLARE Variables

#CTE
@Rest
Scenario: SELECT with CTE (Recursive)

@Rest
Scenario: SELECT with CTE (Non-Recursive)

#Temp table
@Rest
Scenario: SELECT Temp tables

# SQL Functions
@Rest
Scenario: SELECT AVG()
	When Run cql statement SELECT AVG([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 130.60

@Rest
Scenario: SELECT Aggregate Function, CHECKSUM_AGG
	When Run cql statement SELECT CHECKSUM_AGG(CAST([OrderTotal] AS INT)) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result785

@Rest
Scenario: SELECT Aggregate Function, COUNT
	When Run cql statement SELECT COUNT([OrderDate]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result15

@Rest
Scenario: SELECT Aggregate Function, COUNT_BIG
	When Run cql statement SELECT COUNT_BIG([OrderDate]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result15

@Rest
Scenario: SELECT Aggregate Function, GROUPING
	When Run cql statement SELECT [CustomerId], SUM([OrderTotal]) as 'TotalSalesYTD', GROUPING([CustomerId]) AS 'Grouping' FROM [SandBox].[Orders] GROUP BY [CustomerId] WITH ROLLUP; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultGrouping0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT Aggregate Function, GROUPING_ID

#When Run cql statement from file SelectGroupingId0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#	| Name | Value |
#Then Validate expected string to be result
@Rest
Scenario: SELECT Aggregate Function, MAX
	When Run cql statement SELECT MAX([OrderDate]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result2020-12-20 00:00:00

@Rest
Scenario: SELECT Aggregate Function, MIN
	When Run cql statement SELECT MIN([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result11

	# TSQL -> 197.15037212942113,183.1481835641761
@Rest
Scenario: SELECT Aggregate Function, STDEV
	When Run cql statement SELECT STDEV(DISTINCT [OrderTotal]) as DistinctResult, STDEV([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2,2 to be 197.150372129421,183.148183564176

	#TSQL -> 189.41595066642066,176.93795522724906
@Rest
Scenario: SELECT Aggregate Function, STDEVP
	When Run cql statement SELECT STDEVP(DISTINCT [OrderTotal]) as DistinctResult, STDEVP([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		Then Validate expected number rounded by 2,2 to be 189.415950666421,176.937955227249

@Rest
Scenario: SELECT Aggregate Function, STRING_AGG
	When Run cql statement SELECT STRING_AGG (CONVERT(NVARCHAR(max),[CustomerName]), CHAR(13)) AS csv FROM [SandBox].[OnlineCustomers]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be csvSalvadorGilbertErnestStellaJorgeJeromeEdwardJohn

@Rest
Scenario: SELECT Aggregate Function, SUM
	When Run cql statement SELECT SUM(DISTINCT [OrderTotal]) as DistinctResult, SUM([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be DistinctResult,Result1761,1959

	#TSQL -> 38868.26923076923,33543.25714285714
@Rest
Scenario: SELECT Aggregate Function, VAR
	When Run cql statement SELECT VAR(DISTINCT [OrderTotal]) as DistinctResult, VAR([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		Then Validate expected number rounded by 2,2 to be 38868.2692307692,33543.2571428571

@Rest
Scenario: SELECT Aggregate Function, VARP
	When Run cql statement SELECT VARP(DISTINCT [OrderTotal]) as DistinctResult, VARP([OrderTotal]) as Result FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		Then Validate expected number rounded by 2,2 to be 35878.4023668639,31307.04

# Arithmetic SQL Functions-----------------------------------
@Rest
Scenario: SELECT Arithmetic Operator (Add) Number
	When Run cql statement SELECT [OrderTotal] + [OrderId] as Result FROM [SandBox].[Orders] Where [Cinchy Id]=1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result121

@Rest
Scenario: SELECT Arithmetic Operator (Add) Text
	When Run cql statement SELECT [CustomerName]+ ' '+[Customermail] as NameEmail FROM [SandBox].[OnlineCustomers]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultAddText0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT Arithmetic Operator (Subtract)
	When Run cql statement SELECT [OrderTotal]-[OrderId] as Result FROM [SandBox].[Orders] Where [Cinchy Id]=1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result119

@Rest
Scenario: SELECT Arithmetic Operator (Multiple)
	When Run cql statement SELECT [OrderTotal]*[OrderId] as Result FROM [SandBox].[Orders] Where [Cinchy Id]=12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result492

@Rest
Scenario: SELECT Arithmetic Operator (Divide)
	When Run cql statement SELECT [OrderTotal]/[OrderId] as Result FROM [SandBox].[Orders] Where [Cinchy Id]=12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 3.41666666666667

#Without Cast it won't work as Number as od Datatype Float
@Rest
Scenario: SELECT Arithmetic Operator (Modulo)
	When Run cql statement SELECT CAST([OrderTotal] as INT) % CAST([OrderId] as INT) as Result FROM [SandBox].[Orders] Where [Cinchy Id]=12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result5

@Rest
Scenario: SELECT = (Assignment Operator)
	When Run cql statement SELECT [Emp Id]= 'Test',[Emp Id]  FROM [SandBox].[CinchyEmployee]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultAssignmentOperator0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT Comparison Operator, (Equals)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id]=1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen (Ben)

@Rest
Scenario: SELECT Comparison Operator, (Greater Than)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id]>6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultVRFAndOrInsert Insert (VRFAndOrInsert)

@Rest
Scenario: SELECT Comparison Operator, (Less Than)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] < 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen (Ben)

@Rest
Scenario: SELECT Comparison Operator, (Greater Than or Equal To)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] >=6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUser with All (User with All)VRFAndOrInsert Insert (VRFAndOrInsert)

@Rest
Scenario: SELECT Comparison Operator, (Less Than or Equal To)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] <=6 Order By [Emp Name]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultAdministrator (admin)Ann (Ann)Ben (Ben)System (system)User with All (User with All)View (viewonly)

@Rest
Scenario: SELECT Comparison Operator, (Not Equal To)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] != 2 ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen (Ben)Ann (Ann)System (system)View (viewonly)User with All (User with All)VRFAndOrInsert Insert (VRFAndOrInsert)

@Rest
Scenario: SELECT Comparison Operator, (Not Less Than)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] !< 6 ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUser with All (User with All)VRFAndOrInsert Insert (VRFAndOrInsert)

@Rest
Scenario: SELECT Comparison Operator, (Not Greater Than)
	When Run cql statement SELECT [Emp Name] as Result FROM [SandBox].[CinchyEmployee] where [Cinchy Id] !> 2 ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen (Ben)Administrator (admin)

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#@Rest
#Scenario: SELECT Compound Operator, (Add Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Subtract Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Multiply Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Divide Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, Modulus Assignment
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Bitwise AND Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Bitwise Exclusive OR Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#
#@Rest
#Scenario: SELECT Compound Operator, (Bitwise OR Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@Rest
Scenario: SELECT Bitwise Operator & (Bitwise AND)
	When Run cql statement SELECT CAST([OrderTotal] as INT) & CAST([OrderId] as INT) as BITWISEAND, [OrderTotal], [OrderId] FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultBitwiseAnd0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: SELECT Bitwise Operator &= (Bitwise AND Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
@Rest
Scenario: SELECT Bitwise Operator | (Bitwise OR)
	When Run cql statement SELECT CAST([OrderTotal] as INT) | CAST([OrderId] as INT) as BITWISEOR, [OrderTotal], [OrderId] FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultBitwiseOr0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: SELECT Bitwise Operator |= (Bitwise OR Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
@Rest
Scenario: SELECT Bitwise Operator ^ (Bitwise Exclusive OR)
	When Run cql statement SELECT CAST([OrderTotal] as INT) ^ CAST([OrderId] as INT) as BITWISEExclusiveOR, [OrderTotal], [OrderId] FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultBitwiseExclusiveOr0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: SELECT Bitwise Operator ^= (Bitwise Exclusive OR Assignment)
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result
@Rest @Ignore
Scenario: SELECT Bitwise Operator ~ (Bitwise NOT)
	When Run cql statement SELECT CAST([OrderTotal] as INT) ~ CAST([OrderId] as INT) as BITWISEExclusiveNOT, [OrderTotal], [OrderId] FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

#Returns Null
#There are online customer without orders like 5,6,7,8
@Rest @Ignore
Scenario: SELECT EXCEPT Operator
	When Run cql statement SELECT [Customer Id] FROM [SandBox].[OnlineCustomers] EXCEPT SELECT [CustomerId] FROM [SandBox].[Orders]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: SELECT INTERSECT Operator
	When Run cql statement SELECT [CustomerId] FROM [SandBox].[Orders] INTERSECT  SELECT [Customer Id] FROM [SandBox].[OnlineCustomers]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result Intersect1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#------------TODO
#SQL Server String Functions
@Rest
Scenario: SELECT string functions ASCII
	When Run cql statement select ASCII([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result66

@Rest
Scenario: SELECT string functions CHAR
	When Run cql statement select CHAR(ASCII(SUBSTRING([Emp Name], 1, 1))) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultB

@Rest
Scenario: SELECT string functions CHARINDEX
	When Run cql statement select CHARINDEX('n', [Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result3

@Rest
Scenario: SELECT string functions CONCAT with plus
	When Run cql statement select [Ref ID] + ' ' + [Address] as Result from [SandBox].[CinchyEmployee]  where [Cinchy Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result3 Ben (Ben) North York

@Rest
Scenario: SELECT string functions Concat
	When Run cql statement select CONCAT([Ref ID],[Address]) as Result from [SandBox].[CinchyEmployee]  where [Cinchy Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result3 Ben (Ben)North York

@Rest
Scenario: SELECT string functions CONCAT_WS
	When Run cql statement select CONCAT_WS('-', [Ref ID],[Address]) as Result from [SandBox].[CinchyEmployee]  where [Cinchy Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result3 Ben (Ben)-North York

@Rest
Scenario: SELECT string functions DIFFERENCE
	When Run cql statement SELECT DIFFERENCE([Emp Name],[Emp Name]+'A') as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result4

	#TSQL -> FORMAT([OrderDate] , 'd' ) -> Dec 1 2020 (12/1/2020) is showen as 1/1/2020
@Rest
Scenario: SELECT string functions FORMAT
	When Run cql from file SelectFormat0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFormat0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT string functions LEFT
	When Run cql statement select LEFT([Emp Name],2) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBe

@Rest
Scenario: SELECT string functions LEN
	When Run cql statement select LEN([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result21

@Rest
Scenario: SELECT string functions LOWER
	When Run cql statement select LOWER([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Resultadministrator (admin)

@Rest
Scenario: SELECT string functions LTRIM
	When Run cql statement select LTRIM([Text]) as Result from [SandBox].[TableJoinA] where [Cinchy Id] =6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultTRIMLEFT

@Rest
Scenario: SELECT string functions NCHAR
	When Run cql statement select NCHAR([Cinchy Id]) as Result from [Import].[CSV_TR_EX6] where [Cinchy Id] =65; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultA

@Rest
Scenario: SELECT string functions PATINDEX
	When Run cql statement select PATINDEX('%tra%',[Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result8

@Rest
Scenario: SELECT string functions QUOTENAME
	When Run cql statement select QUOTENAME([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result[Administrator (admin)]

@Rest
Scenario: SELECT string functions REPLACE
	When Run cql statement select REPLACE([Emp Name], 'Admin', 'Automation') as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultAutomationistrator (admin)

@Rest
Scenario: SELECT string functions REPLICATE
	When Run cql statement select REPLICATE('Test', 4) + [Emp Name] as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultTestTestTestTestAdministrator (admin)

@Rest
Scenario: SELECT string functions REVERSE
	When Run cql statement SELECT REVERSE([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result)neB( neB

@Rest
Scenario: SELECT string functions RIGHT
	When Run cql statement select RIGHT([Emp Name],2) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Resultn)

@Rest
Scenario: SELECT string functions RTRIM
	When Run cql statement select RTRIM([Text]) as Result from [SandBox].[TableJoinA] where [Cinchy Id] =7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultTRIMRIGHT

@Rest
Scenario: SELECT string functions SOUNDEX
	When Run cql statement SELECT SOUNDEX([Emp Name]) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultB500

@Rest
Scenario: SELECT string functions SPACE
	When Run cql statement SELECT [Emp Name] + SPACE(2) + [Emp Name] as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen (Ben)  Ben (Ben)

@Rest
Scenario: SELECT string functions STR
	When Run cql statement SELECT STR([OrderTotal],1,1) as Result  from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result*

@Rest
Scenario: SELECT string functions STUFF
	When Run cql statement SELECT STUFF([Emp Name],2,3,'ijklmn') as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBijklmn(Ben)

@Rest
Scenario: SELECT string functions SUBSTRING
	When Run cql statement SELECT SUBSTRING([Emp Name],3,5) as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Resultminis

@Rest
Scenario: SELECT string functions TRANSLATE
	When Run cql statement SELECT TRANSLATE([Emp Name],'[]()', '{}{}') as Result from [SandBox].[CinchyEmployee] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBen {Ben}

@Rest
Scenario: SELECT string functions TRIM
	When Run cql statement select TRIM([TEXT]) as Result from [SandBox].[TableJoinA] where [Cinchy Id] =8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultA Utomation

@Rest
Scenario: SELECT string functions UNICODE
	When Run cql statement select UNICODE([TEXT]) as Result from [SandBox].[TableJoinA] where [Cinchy Id] =8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result65

@Rest
Scenario: SELECT string functions UPPER
	When Run cql statement select UPPER([TEXT]) as Result from [SandBox].[TableJoinA] where [Cinchy Id] =8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultA UTOMATION

#@Rest
#Scenario: SELECT System Date and Time Functions, CURRENT_TIMESTAMP
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT System Date and Time Functions, GETDATE( )
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT System Date and Time Functions, GETUTCDATE( )
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, DATEFROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, DATETIME2FROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, DATETIMEFROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, DATETIMEOFFSETFROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, SMALLDATETIMEFROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Values from Their Parts, TIMEFROMPARTS
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
@Rest
Scenario: SELECT Functions That Validate Date and Time Values, ISDATE
	When Run cql statement select ISDATE(CAST([OrderDate] AS datetime)) as Result from [SandBox].[Orders] where [Cinchy Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1

@Rest
Scenario: SELECT analytic functions, CUME_DIST
	When Run cql from file SelectCumeDist.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCumeDist.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT analytic functions, FIRST_VALUE
	When Run cql from file SelectFirstValue.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultFirstValue.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT analytic functions, LAG
	When Run cql from file SelectLag0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLag0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT analytic functions, LAST_VALUE
	When Run cql from file SelectLastValue0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLastValue0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT analytic functions, PERCENT_RANK
	When Run cql from file SelectPercentRank0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultPercentRank0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#@Rest
#Scenario: SELECT analytic functions, PERCENTILE_CONT
#	When Run cql from file SelectPercentCont0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate unordered result ResultPercentCont0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#
#@Rest
#Scenario: SELECT analytic functions, PERCENTILE_DISC
#	When Run cql from file SelectPercentDisc0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate unordered result ResultPercentDisc0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
@Rest
Scenario: SELECT mathematical functions, ABS
	When Run cql statement select ABS([OrderTotal]*(-0.12)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 14.4

@Rest
Scenario: SELECT mathematical functions, ACOS
	When Run cql statement select CONVERT(VARCHAR, ACOS(([OrderTotal]/120)*(-1))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 3.14159

@Rest
Scenario: SELECT mathematical functions, ASIN
	When Run cql statement select CONVERT(VARCHAR, ASIN(([OrderTotal]/120)*(-1))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -1.5708

@Rest
Scenario: SELECT mathematical functions, ATAN
	When Run cql statement select CONVERT(VARCHAR, ATAN(([OrderTotal]/120)*(-1))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -0.785398

@Rest
Scenario: SELECT mathematical functions, ATN2
	When Run cql statement select CONVERT(VARCHAR, ATN2([OrderTotal],5)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 1.52915

@Rest
Scenario: SELECT mathematical functions, CEILING
	When Run cql statement select CEILING([OrderTotal]*(-2.33)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -279

@Rest
Scenario: SELECT mathematical functions, COS
	When Run cql statement select CONVERT(VARCHAR, COS(([OrderTotal]/120)*(-1))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 0.540302

@Rest
Scenario: SELECT mathematical functions, COT
	When Run cql statement select CONVERT(VARCHAR, COT(([OrderTotal]/120)*(-1))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -0.642093

@Rest
Scenario: SELECT mathematical functions, DEGREES
	When Run cql statement select CONVERT(VARCHAR, DEGREES(([OrderTotal]/120))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 57.2958

@Rest
Scenario: SELECT mathematical functions, EXP
	When Run cql statement select CONVERT(VARCHAR, EXP(([OrderTotal]/120))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 2.71828

@Rest
Scenario: SELECT mathematical functions, FLOOR
	When Run cql statement select CONVERT(VARCHAR, FLOOR(([OrderTotal]*1.22))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 146

@Rest
Scenario: SELECT mathematical functions, LOG
	When Run cql statement select CONVERT(VARCHAR, LOG(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 4.99451

@Rest
Scenario: SELECT mathematical functions, LOG10
	When Run cql statement select CONVERT(VARCHAR, LOG10(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 2.16909

@Rest
Scenario: SELECT mathematical functions, PI
	When Run cql statement select CONVERT(VARCHAR, ([OrderTotal]*(PI()))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 376.991

@Rest
Scenario: SELECT mathematical functions, POWER
	When Run cql statement select CONVERT(VARCHAR, POWER([OrderTotal]*1.33,2)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 25472.2

@Rest
Scenario: SELECT mathematical functions, RADIANS
	When Run cql statement select CONVERT(VARCHAR, RADIANS([OrderTotal]*1.33)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 2.78555

@Rest
Scenario: SELECT mathematical functions, RAND
	When Run cql statement select CONVERT(VARCHAR, ([OrderTotal]*RAND(100)*10000)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 858524

@Rest
Scenario: SELECT mathematical functions, ROUND
	When Run cql statement select CONVERT(VARCHAR, ROUND(([OrderTotal]*1.23556),2)) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 148.27

@Rest
Scenario: SELECT mathematical functions, SIGN
	When Run cql statement select CONVERT(VARCHAR, SIGN(([OrderTotal]*-1.23556))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -1

@Rest
Scenario: SELECT mathematical functions, SIN
	When Run cql statement select CONVERT(VARCHAR, SIN(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 0.0548272

@Rest
Scenario: SELECT mathematical functions, SQRT
	When Run cql statement select CONVERT(VARCHAR, SQRT(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 12.1491

#TSQL 21785.8
@Rest
Scenario: SELECT mathematical functions, SQUARE
	When Run cql statement select CONVERT(VARCHAR, SQUARE(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 1 to be 21785.76

@Rest
Scenario: SELECT mathematical functions, TAN
	When Run cql statement select CONVERT(VARCHAR, TAN(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be -0.0549098

@Rest
Scenario: SELECT logical function, CHOOSE
	When Run cql statement SELECT CHOOSE ( 3, [CustomerId], [DiscountRate] ,[OrderTotal] , [OrderId] ) AS Result from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 120

@Rest
Scenario: SELECT logical function, IFF
	When Run cql statement SELECT [Result] = IIF( [CustomerId] >= [OrderId], 'TRUE', 'FALSE' ) from [SandBox].[Orders] where [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultTRUE

#Collation (all string comparisons are case sensitive)
@Rest
Scenario: SELECT WITH COLLATE() on Column Text for Latin1_General
	When Run cql statement select [Link], [Region], [Place]  FROM [SandBox].[Places] ORDER BY [Place] COLLATE Latin1_General_CS_AS_KS_WS ASC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCollateLatinGeneralOnText0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WITH COLLATE() on Column Link for Latin1_General
	When Run cql statement select [Link], [Region], [Place]  FROM [SandBox].[Places] ORDER BY [Link] COLLATE Latin1_General_CS_AS_KS_WS ASC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCollateLatinGeneralOnLink0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WITH COLLATE() on Column Text for Traditional_Spanish
	When Run cql statement select [Link], [Region], [Place]  FROM [SandBox].[Places] ORDER BY [Place] COLLATE Traditional_Spanish_ci_ai ASC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCollateTraditionalSpanishlOnText0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WITH COLLATE() on Column Link for Traditional_Spanish
	When Run cql statement select [Link], [Region], [Place]  FROM [SandBox].[Places] ORDER BY [Link] COLLATE Traditional_Spanish_ci_ai ASC; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCollateTraditionalSpanishlOnLink0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
#CQL expression as COLLATE example
#COLUMNTYPE = LOWER(REPLACE(REPLACE(REPLACE(TRANSLATE(LTRIM(RTRIM(@SearchString)),'`~!@#$%^&*()_-+={}[]|\:;"''<>,.?/',SPACE(32)),' ',CHAR(17)+CHAR(18)),CHAR(18)+CHAR(17),''),CHAR(17)+CHAR(18),' ')) + '%' COLLATE SQL_Latin1_General_Cp1251_CS_AS
#@Rest
#Scenario: SELECT Functions That Return Date and Time Parts, DATENAME
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Parts, DATEPART
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Parts, DAY
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Parts, MONTH
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Parts, YEAR
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Difference Values, DATEDIFF
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Return Date and Time Difference Values, DATEDIFF_BIG
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Modify Date and Time Values, DATEADD
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Modify Date and Time Values, EOMONTH
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Modify Date and Time Values, SWITCHOFFSET
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: SELECT Functions That Modify Date and Time Values, TODATETIMEOFFSET
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#Scenario: SELECT DECLARE SET Variables
#	When Run cql statement cql with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Validate expected string to be Result3
#
#@Rest
#Scenario: ATest
#	Given Store result set
#	When As User Ann Run cql statement SELECT [Name], [Number] FROM [SandBox].[TableJoinA] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then User Ann has correct data