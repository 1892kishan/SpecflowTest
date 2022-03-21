Feature: CQL Language

#UDF
@Rest
Scenario: SELECT [live Scalar UDF1], [live Scalar UDF2]
	When Run cql statement select [Live Scalar UDF 1], [Live Scalar UDF 2] from [SandBox].[UdfTable0]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultLiveUDF0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bhuvana
Scenario: SELECT [Cached Scalar UDF1], [Cached Scalar UDF2]
	When Run cql statement select [Cached Scalar UDF1], [Cached Scalar UDF2] from [SandBox].[UdfTable0]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCachedUDF0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT [Scalar UDF1], [Scalar UDF2] using parameters at run time
	When Run cql statement select [Live Scalar UDF 1], [Live Scalar UDF 2] from [SandBox].[UdfTable0] where [Live Scalar UDF 1] like '%'+@value+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
		| value | Automation |
	Then Validate expected string to be Live Scalar UDF 1,Live Scalar UDF 2Automation  Test  Andorra,Andorra  Test2 success

@Rest
Scenario: SELECT [Cached Scalar UDF1], [Cached Scalar UDF2] using parameters at run time
	When Run cql statement select [Cached Scalar UDF1], [Cached Scalar UDF2] from [SandBox].[UdfTable0] where [Cached Scalar UDF1] like '%'+@value+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value         |
		| value | &#&*  #&*&#*^ |
	Then Validate expected string to be Cached Scalar UDF1,Cached Scalar UDF2&#&*  #&*&#*^  Belarus,Belarus  Test2 success

@Rest @Bug @Ignore
Scenario: SELECT UDF without any parameter (Alert() Note fails today)
	When Run cql statement select Alert() as Result; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultTest

@Rest
Scenario: SELECT [Table Valued UDF]
	When Run cql statement SELECT t.* FROM tableUDF() as t; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultTableUdf0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT [Table Valued UDF] using parameters at runtime
	When Run cql statement SELECT t.* FROM tableUDF() as t where t.[Number Column] = @value; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Text Column,Number Column,Date Column,Yes/No ColumnRecord 1,1,2020-01-01 00:00:00,False

@Rest
Scenario: SELECT scalar UDF internall call executeQuery()
	When Run cql statement SELECT t.* FROM ExecuteScalarQuery() as t; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Film,Year,GenreEpic,1855,MA

@Rest
Scenario: SELECT scalar UDF internall call executeNonQuery()
	When Run cql statement SELECT ScalarNonQueryUPDATE('Avengers',23432),[Film],[Genre] FROM [Cinchy Test].[Film2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT,Film,Genre1,Avengers,234322012

@Rest
Scenario: SELECT WHERE [live Scalar UDF] = 'SomeVal'
	When Run cql statement select [Live Scalar UDF 1], [Live Scalar UDF 2] from [SandBox].[UdfTable0] where [Live Scalar UDF 2] = 'Belarus  Test2 success'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Live Scalar UDF 1,Live Scalar UDF 2&#&*  #&*&#*^  Belarus,Belarus  Test2 success

@Rest
Scenario: SELECT WHERE [cached Scalar UDF] = 'SomeVal'
	When Run cql statement select [Cached Scalar UDF1], [Cached Scalar UDF2] from [SandBox].[UdfTable0] where [Cached Scalar UDF2] = 'Andorra  Test2 success'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Cached Scalar UDF1,Cached Scalar UDF2Automation  Test  Andorra,Andorra  Test2 success

@Rest
Scenario: SELECT WHERE EXISTS (Table Valued UDF Subquery)
	When Run cql statement select [Cached Scalar UDF1], [Cached Scalar UDF2] from [SandBox].[UdfTable0] where EXISTS (SELECT t.* FROM tableUDF() as t); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultCachedUDF0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

		#Table has issue with Functions inside CQL Expression
		#Table Name : SelectAllDataTypes
@Rest
Scenario: SELECT WHERE IN (Table Valued UDF Subquery)
	When Run cql from file SelectTableUDFInClause0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultTableUDFInClause0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT WHERE a.[Col] = CASE WHEN UDF = 'SomeVal'
	When Run cql from file SelectUDFCaseClause0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultUDFCaseClause0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: SELECT [Cached Calcualted Column] using external API UDF call
	When Run cql statement Select [Genre Cached], [Rating Cached], [Year Cached], [Film] from [Cinchy Test].[Film1] where deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Genre Cached,Rating Cached,Year Cached,FilmAnimation, Adventure, Family, Fantasy, Mystery, Thriller,PG,2013,Epic

@Rest
Scenario: SELECT [Live Calcualted Column] using external API UDF call
	When Run cql statement Select [Genre (Live)], [Rating (Live)], [Year (Live)] , [Film] from [Cinchy Test].[Film1] where deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Genre (Live),Rating (Live),Year (Live),FilmAnimation, Action, Adventure,PG,2013,Epic

@Rest @DEF001282
Scenario: SELECT Table valued UDF Function with Declare Set Variable
	When Run cql from file selectUDFDeclareVariable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result resultUDFDeclareVariable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Operators Cinchy specific types
# Retrieve a.b.c
# using JOIN on
@Rest
Scenario: SELECT WHERE [Multi select Link column] = 'Some val' OR  [Multi select Link column] IN ('SomeVal1')
	When Run cql statement Select DISTINCT [Multi Select Link] from [Import].[SelectAllDataTypes] where [Multi Select Link] = 'Data1' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Multi Select LinkData1Data1, Data2, Data3Data1, Data3

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Link column] = 'val,val1..' OR  [Multi select Link column] IN ('SomeVal1')
	When Run cql statement Select DISTINCT [Multi Select Link] from [Import].[SelectAllDataTypes] where [Multi Select Link] = 'Data1, Data2, Data3' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: SELECT WHERE [Multi select Choice column] != 'Some val' OR [Multi select Choice column] = 'Some val1'
	When Run cql statement Select DISTINCT [MultiSelect Choice] from [Import].[SelectAllDataTypes] where [MultiSelect Choice] = 'Test@gmail.com' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be MultiSelect Choice@, 1, 3, 4, Test@gmail.com4, Test@gmail.comTest@gmail.com

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Choice column] != 'val,val1..' OR [Multi select Choice column] = 'Some val1'
	When Run cql statement Select DISTINCT [MultiSelect Choice] from [Import].[SelectAllDataTypes] where [MultiSelect Choice] = '@, 1, 3, 4, Test@gmail.com' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: SELECT WHERE [Multi select Hierarchy Link column] = 'Some val' OR  [Multi select Hierarchy Link column] = 'Some val1'
	When Run cql statement Select DISTINCT  [Multi Select Hierarchy Link] from [Import].[SelectAllDataTypes] where [Multi Select Hierarchy Link]= '23' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Multi Select Hierarchy Link23

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Hierarchy Link column] = 'val,val1..' OR  [Multi select Hierarchy Link column] = 'Some val1'
	When Run cql statement Select DISTINCT  [Multi Select Hierarchy Link] from [Import].[SelectAllDataTypes] where [Multi Select Hierarchy Link]= '1, 1, 345, 321, 324, 324' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: Scenario: SELECT WHERE [Single select Hierarchy Link column] = 'Some Val' OR [Single select Hierarchy Link column] NOT IN ('SomeVal1')
	When Run cql statement Select DISTINCT  [Single Select Hierarchy Link]  from [Import].[SelectAllDataTypes] where  [Single Select Hierarchy Link]= 'Automation1' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Single Select Hierarchy LinkAutomation1

@Rest
Scenario: SELECT WHERE [Single select Link column] != 'Some val' OR [Single select Link column] IN ('SomeVal1')
	When Run cql statement Select DISTINCT  [Text Link]  from [Import].[SelectAllDataTypes] where  [Text Link] = 'Data1' and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Text LinkData1

@Rest
Scenario: SELECT currentUserID()
	When Run cql statement SELECT currentUserID() as Result; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1

@Rest
Scenario: SELECT currentUsersGroups()
	When Run cql statement SELECT [Name] FROM [Cinchy].[Groups] WHERE [Cinchy Id] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAll UsersCinchy Administrators

@Rest
Scenario: SELECT executeSavedQuery() based on currentUserID()
	When Run cql statement SELECT [Branch] FROM [Cinchy Test].[Employees ESQ] WHERE [Deleted] IS NULL AND [CinchyUserAccount].[Cinchy Id] = currentUserID(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be BranchBranch 100

@Rest
Scenario: SELECT executeSavedQuery() with timeout
	When Run cql statement Select [Role] = executeSavedQuery('Cinchy Test','User Role',30); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be RoleHR

@Rest
Scenario: SELECT executeSavedQuery() based on currentUsersGroups()
	When Run cql statement SELECT [Name] FROM [Cinchy Test].[Roles] WHERE [Deleted] IS NULL AND 1 in (currentUsersGroups()) AND [Name] != 'All Users' AND [Name] != 'Cinchy Administrators' and [Name] = 'Dev'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameDev

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Link column1] = [Multi select Link column2]
	When Run cql statement Select [MultiSelectLink111],[MultiSelectLink222] from [SandBox].[MultipleLinkTable1] where [MultiSelectLink111]=[MultiSelectLink222] and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Choice column1] = [Multi select Choice column2]
	When Run cql statement Select [MSC1], [MSC2] from [SandBox].[MultipleLinkTable1] where [MSC1]=[MSC2] and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: SELECT WHERE [Multi select Hierarchy column1] = [Multi select Hierarchy column2]
	When Run cql statement Select [HLink1], [HLink2] from [SandBox].[MultipleLinkTable1] where [HLink1]=[HLink2] and deleted is null; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result
#CQL Functions (e.g. ResolveLink, etc.)
#Table Definition Settings
#	Column Level Encryption
#Column Level Entitlements
#Row Level Entitlements