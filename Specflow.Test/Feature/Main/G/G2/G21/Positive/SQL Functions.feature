Feature: SQL Functions

@Rest
Scenario: UPDATE SET Aggregate Function, AVG()
	When As User Builder Run cql statement UPDATE t2 SET t2.[UpdateResult] = sub.MeanNum From [Mock].[UpdateEmployee21] t2 INNER JOIN (Select t1.[DiscountRate],Avg(t1.[OrderTotal]) as MeanNum From [SandBox].[Orders] t1 Group By t1.[DiscountRate]) as sub ON sub.[DiscountRate] = t2.[id]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file selectResultAverage.txt and validate unordered result resultUpdateAverage.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, CHECKSUM_AGG
	When As User Builder Run cql from file UpdateFunction2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value    |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 4 and validate text result UpdateResultPassed with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, COUNT
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT COUNT_BIG([OrderDate]) as Result FROM [SandBox].[Orders]) WHERE [Id] = 1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |                                                                                    |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 1 and validate text result UpdateResult15 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, COUNT_BIG
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT COUNT_BIG([OrderDate]) as Result FROM [SandBox].[Orders]) WHERE [Id] = 1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 1 and validate text result UpdateResult15 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

#
#Scenario: UPDATE SET Aggregate Function, GROUPING
@Rest
Scenario: UPDATE SET Aggregate Function, MAX
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT MAX([Annual Base Compensation]) FROM[Mock].[UpdateEmployee21]) where [Id] = 2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 2 and validate text result UpdateResult95000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |

@Rest
Scenario: UPDATE SET Aggregate Function, MIN
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT MIN([Annual Base Compensation]) FROM[Mock].[UpdateEmployee21]) where [Id] = 3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 3 and validate text result UpdateResult45000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, STDEV
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT STDEV([OrderTotal]) as Result FROM [SandBox].[Orders]) where [Id] = 7 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 7 and validate text result UpdateResult183.148 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, STDEVP
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT STDEVP(DISTINCT [OrderTotal]) as DistinctResult FROM [SandBox].[Orders]) where [Id] = 9 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult189.416 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, STRING_AGG
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT STRING_AGG(CONVERT(NVARCHAR(max), ISNULL([Name],'N/A')), '') FROM [Automation].[Employee] where [Name] < 3) where [Id] = 9 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, SUM
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT SUM([OrderTotal]) as Result FROM [SandBox].[Orders]) where [Id] = 14 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 14 and validate text result UpdateResult1959 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, VAR
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = ( SELECT VAR(DISTINCT [OrderTotal]) as DistinctResult FROM [SandBox].[Orders]) where [Id] = 18 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 18 and validate text result UpdateResult38868.3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Aggregate Function, VARP
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = ( SELECT VARP([OrderTotal]) as Result FROM [SandBox].[Orders]) where [Id] = 22 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 22 and validate text result UpdateResult31307 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

#		# Arithmetic SQL Functions-----------------------------------
@Rest
Scenario: UPDATE SET Arithmetic Operator (Add) Number
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] =  [Annual Base Compensation] + @value Where [Id]=23; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10000 |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 23 and validate text result UpdateResult65000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  |Value |

@Rest
Scenario: UPDATE SET Arithmetic Operator (Add) Text
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] = [Name]+'  '+[Employee Id] Where [Id]=26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 26 and validate text result UpdateResultAutomation26  EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Arithmetic Operator (Subtract)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] =  [Annual Base Compensation] - @value Where [Id]=27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10000 |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 27 and validate text result UpdateResult45000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Arithmetic Operator (Multiple)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] =  [Annual Base Compensation]*[Calculated Cache] Where [Id]=29; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 29 and validate text result UpdateResult22500 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Arithmetic Operator (Divide)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] =  [Annual Base Compensation]/[Calculated Cache] Where [Id]=31; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 31 and validate text result UpdateResult55000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value

@Rest
Scenario: UPDATE SET Arithmetic Operator (Modulo)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] =  CAST([Annual Base Compensation] as INT)%2 Where [Id]= 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 8 and validate text result UpdateResult20 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET = (Assignment Operator) or WHERE Comparison Operator, (Equals)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | Test  |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 1 and validate text result UpdateResult2Test with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Greater Than) and (Less Than)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] > 1 AND [Id] <3; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
		| value | Test123 |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 2 and validate text result UpdateResult2Test123 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Greater Than or Equal To)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] >= 3 AND [Id] < 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
		| value | Test213 |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 3 and validate text result UpdateResult2Test213 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Less Than or Equal To)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] <= 4 AND [Id] > 3; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
		| value | Test312 |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 4 and validate text result UpdateResult2Test312 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Not Equal To)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] !=4 AND [Id]=5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
		| value | Test124 |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 5 and validate text result UpdateResult2Test124 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Not Less Than)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = 'Test125' Where [Id] !<6 AND [Id]!>6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 6 and validate text result UpdateResult2Test125 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Comparison Operator, (Not Greater Than)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = @value Where [Id] <=7  AND [Id] >= 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value   |
		| value | Test126 |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 7 and validate text result UpdateResult2Test126 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@Rest
Scenario: UPDATE SET Compound Operator, (Add Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 += 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245029 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Subtract Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 -= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245025 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Multiply Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 *= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245054 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Divide Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 /= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245013 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, Modulus Assignment
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 %= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245001 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Bitwise AND Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 &= 13;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245009 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Bitwise Exclusive OR Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 ^= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245025 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Compound Operator, (Bitwise OR Assignment)
	When As User Builder Run cql statement DECLARE @x1 INT = 27;SET @x1 |= 2;UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TOP 1 [Annual Base Compensation] + @x1 FROM [Mock].[UpdateEmployee21] WHERE [Deleted] IS NULL ORDER BY [Id]) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult245027 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

##+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@Rest
Scenario: UPDATE SET Bitwise Operator & (Bitwise AND)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CAST([Annual Base Compensation] as INT)& CAST([Id] as INT) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9 and validate text result UpdateResult28 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Bitwise Operator | (Bitwise OR)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CAST([Annual Base Compensation] as INT)| CAST([Id] as INT) Where [Id]=10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 10 and validate text result UpdateResult295002 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Bitwise Operator ^ (Bitwise Exclusive OR)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CAST([Annual Base Compensation] as INT)| CAST([Id] as INT) Where [Id]=11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 11 and validate text result UpdateResult255003 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest @Ignore
Scenario: UPDATE SET Bitwise Operator ~ (Bitwise NOT)
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CAST([Annual Base Compensation] as INT)| CAST([Id] as INT) Where [Id]=12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 12 and validate text result UpdateResult2-75001 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#------------TODO
#SQL Server String Functions
@Rest
Scenario: UPDATE SET string functions ASCII
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = ASCII([Name]) Where [Id]=12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 12 and validate text result UpdateResult265 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions CHAR
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CHAR(ASCII(SUBSTRING([Name], 1, 1))) Where [Id]=13; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 13 and validate text result UpdateResult2A with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions CHARINDEX
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CHARINDEX('n', [Name]) where [Id] =14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 14 and validate text result UpdateResult210 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions CONCAT with plus
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = [Name] + ' ' + [Calculated Cache] where [Id] =15; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 15 and validate text result UpdateResult2Automation15 1.0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions Concat
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CONCAT([Name],[Calculated Cache]) where [Id] = 16; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 16 and validate text result UpdateResult2Automation161.0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions CONCAT_WS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = CONCAT_WS('-', [Name],[Emergency Contact Number]) where [Id] = 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 17; and validate text result UpdateResult2Automation17-1.23213e+008 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions DIFFERENCE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = DIFFERENCE([Name],[Name]+'A')where [Id] =18; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 18; and validate text result UpdateResult24 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions FORMAT
	When As User Builder Run cql from file UpdateFormat0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 19; and validate text result UpdateResult24/9/2019 as US English; 4/9/2019 as Great Britain English;  4/9/2019 as German; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions LEFT
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = LEFT([Name],2) where [Id] = 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 20; and validate text result UpdateResult2Au with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions LEN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = LEN([Name]) where [Id] =21; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 21; and validate text result UpdateResult212 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions LOWER
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = LOWER([Name])+'  '+LOWER([Employee Id]) where [Id] =22; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 22; and validate text result UpdateResult2automation22  editall edit row filter currentuserid12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions LTRIM
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = LTRIM(RIGHT([Employee Id],9)) where [Id] = 23; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 23; and validate text result UpdateResult2Filter12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions NCHAR
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = NCHAR([Id]+41) where [Id] = 24; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 24; and validate text result UpdateResult2A with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions PATINDEX
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = PATINDEX('%[m]%',[Name]) where [Id] =25; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 25; and validate text result UpdateResult25 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions QUOTENAME
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = QUOTENAME([Name]) where [Id] =26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 26; and validate text result UpdateResult2[Automation26] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions REPLACE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = REPLACE([Name], 'Automation', 'Cinchy') where [Id] =27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 27; and validate text result UpdateResult2Cinchy27 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions REPLICATE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = REPLICATE('Test', 4) + [Name] where [Id] =28; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 28; and validate text result UpdateResult2TestTestTestTestAutomation28 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions REVERSE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = REVERSE([Name]) where [Id] =29; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 29; and validate text result UpdateResult292noitamotuA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions RIGHT
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = RIGHT([Name],2) where [Id] =30; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 30; and validate text result UpdateResult230 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions RTRIM
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = RTRIM(LEFT([Employee Id],9)) where [Id] =31; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 31; and validate text result UpdateResult2All Edit with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions SOUNDEX
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = SOUNDEX([Name]) where [Id] = 32; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 32; and validate text result UpdateResult2A353 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions SPACE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = LEN([Name] + SPACE(2) + [Name]) where [Id] =33; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 33; and validate text result UpdateResult226 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions STR
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = STR([Annual Base Compensation],3,1) where [Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 1; and validate text result UpdateResult3*** with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions STUFF
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = STUFF([Name],2,3,'ijklmn') where [Id] =2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 2; and validate text result UpdateResult3Aijklmnmation2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions SUBSTRING
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = SUBSTRING([Name],3,5) where [Id] = 3; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 3; and validate text result UpdateResult3tomat with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions TRANSLATE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = TRANSLATE('Automation4', 'Cinchy', 'CINcHy') where [Id] = 4; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 4; and validate text result UpdateResult3AutomatIoN4 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions TRIM
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = CONCAT(LEN([Employee Id]), ' length;', LEN(Space(2)+[Employee Id]),' 2SpacedAdded;',LEN(TRIM(Space(2)+[Employee Id])),' trimmed length;') where [Id] =5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 5; and validate text result UpdateResult310 length;12 2SpacedAdded;10 trimmed length; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions UNICODE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = UNICODE([Name]) where [Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 6; and validate text result UpdateResult365 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET string functions UPPER
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = UPPER([Name]) where [Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 7; and validate text result UpdateResult3AUTOMATION7 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

##################################################################################################################
@Rest
Scenario: UPDATE SET System Date and Time Functions, SYSDATETIME()
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT SYSDATETIME()) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss.FFFFFF with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET System Date and Time Functions, SYSDATETIMEOFFSET()
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT SYSDATETIMEOFFSET()) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss.FFFFFFK with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET System Date and Time Functions, SYSUTCDATETIME()
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT SYSUTCDATETIME()) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss.FFFFFF with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET System Date and Time Functions, GETDATE( )
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT GETDATE()) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss.FFFFFF with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

#IF we update a text column for MMM dd yyyy
#Actual Jun 2, 2021
#Expected Jun 02, 2021
#Date Format of the system has to be YYYY-MM-DD
@Rest @Ignore @Local
Scenario: UPDATE SET System Date and Time Functions, GETUTCDATE( )
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [Start Date] = (SELECT GETUTCDATE()) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [Start Date] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format MMM dd yyyy hh:mmtt for Start Date with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [Start Date] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date today in format yyyy-MM-dd for Start Date with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, DATEFROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT DATEFROMPARTS ( 2010, 12, 31 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, DATETIME2FROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT DATETIME2FROMPARTS ( 2010, 12, 31, 23, 59, 59, 0, 0 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, DATETIMEFROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT DATETIMEFROMPARTS ( 2010, 12, 31, 23, 59, 59, 0 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format MMM dd yyyy hh:mm tt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date Dec 31 2010 in format MMM dd yyyy with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, DATETIMEOFFSETFROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT DATETIMEOFFSETFROMPARTS ( 2010, 12, 31, 14, 23, 23, 0, 12, 0, 7 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format yyyy-MM-dd HH:mm:ss with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, SMALLDATETIMEFROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT SMALLDATETIMEFROMPARTS ( 2010, 12, 31, 23, 59 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format MMM dd yyyy hh:mm tt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date Dec 31 2010 in format MMM dd yyyy with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Values from Their Parts, TIMEFROMPARTS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult2] = (SELECT TIMEFROMPARTS ( 23, 59, 59, 0, 0 )) Where [Id]=9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult2] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate date has format HH:mm:ss with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: UPDATE SET Functions That Validate Date and Time Values, ISDATE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = ISDATE(CAST([Start Date] AS datetime)) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

##################################################################################################################
@Rest
Scenario: UPDATE SET analytic functions, CUME_DIST
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT TOP 1 CUME_DIST () OVER (PARTITION BY [Account Number] ORDER BY [Transaction Date]) AS RowNbr FROM [SandBox].[OverClause] WHERE [Deleted] IS NULL) where [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate text result UpdateResult1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET analytic functions, FIRST_VALUE
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT TOP 1 FIRST_VALUE([DiscountRate]) OVER (ORDER BY [CustomerId] ASC) * 123  AS ID FROM [SandBox].[Orders]) where [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate text result UpdateResult1476 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET analytic functions, LAG
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT TOP 1 LAG([DiscountRate]) OVER (ORDER BY [CustomerId] ASC) AS ID  FROM [SandBox].[Orders] ORDER BY [DiscountRate] DESC) where [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate text result UpdateResult19 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET analytic functions, LAST_VALUE
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT TOP 1 LAST_VALUE([DiscountRate]) OVER (ORDER BY [CustomerId] ASC) AS ID  FROM [SandBox].[Orders]) where [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 9; and validate text result UpdateResult30 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET analytic functions, PERCENT_RANK
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult] = (SELECT TOP 1 PERCENT_RANK () OVER (PARTITION BY [Account Number] ORDER BY [Transaction Date]) AS RowNbr FROM [SandBox].[OverClause] ORDER BY [Transaction Date] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ABS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = ABS([Annual Base Compensation]*(-0.12)) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult39000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ACOS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select CONVERT(int, ACOS(-1.0))) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult33 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ASIN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select CONVERT(int, ASIN(1.0))) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ATAN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select CONVERT(int, ATAN(90))) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ATN2
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select CONVERT(int, ATN2(90,4))) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, CEILING
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CEILING([OrderTotal]) as Result from [SandBox].[Orders] ORDER BY [OrderTotal]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult311 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, COS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, COS(([OrderTotal]*0))) as Result from [SandBox].[Orders]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, COT
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, COT(([OrderTotal]*90))) as Result from [SandBox].[Orders]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult30 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, DEGREES
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, DEGREES(([OrderTotal]/120))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult35 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, EXP
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, EXP(([OrderTotal]/120))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3648 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, FLOOR
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, FLOOR(([OrderTotal]/120))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult36 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, LOG
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, LOG(([OrderTotal]/120))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, LOG10
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, LOG10(([OrderTotal]/120))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult30 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, PI
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, ([OrderTotal]*(PI()))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32441 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, POWER
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, POWER([OrderTotal]*1.33,2)) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31067936 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, RADIANS
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(VARCHAR, RADIANS([OrderTotal]*1.33)) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult318.0364 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, RAND
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, ([OrderTotal]*RAND(100)*10000)) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult35558942 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, ROUND
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(VARCHAR, ROUND(([OrderTotal]*1.23556),2)) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3960.03 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, SIGN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, SIGN(([OrderTotal]*-1.23556))) as Result from [SandBox].[Orders]ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3-1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, SIN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(VARCHAR, SIN(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult30.617715 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, SQRT
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(int, SQRT(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult330 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, SQUARE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(VARCHAR, SQUARE(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3913382 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET mathematical functions, TAN
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select TOP 1 CONVERT(VARCHAR, TAN(([OrderTotal]*1.23))) as Result from [SandBox].[Orders] ORDER BY [OrderTotal] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult30.785494 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET logical function, CHOOSE
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 CHOOSE ( 3, [CustomerId], [DiscountRate] ,[OrderTotal] , [OrderId] ) AS Result from [SandBox].[Orders]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3120 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET logical function, IFF
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 [Result] = IIF( [CustomerId] >= [OrderId], 'TRUE', 'FALSE' ) from [SandBox].[Orders]) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3TRUE with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#Collation (all string comparisons are case sensitive)
@Rest
Scenario: UPDATE SET WITH COLLATE() on Column Text for Latin1_General
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select Top 1 [Arrangement] FROM [Mock].[Job1] Where [Deleted] is null ORDER BY [Arrangement]  COLLATE Latin1_General_CS_AS_KS_WS ASC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Arr 1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET WITH COLLATE() on Column Link for Latin1_General
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select Top 1 [Location] FROM [Mock].[Job1] ORDER BY [Location] COLLATE Latin1_General_CS_AS_KS_WS DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Toronto with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET WITH COLLATE() on Column Link for Traditional_Spanish
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select Top 1 [Location] FROM [Mock].[Job1] Where [Deleted] is null ORDER BY [Location]  COLLATE Traditional_Spanish_ci_ai ASC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Ajax with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET WITH COLLATE() on Column Text for Traditional_Spanish
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (select Top 1 [Arrangement] FROM [Mock].[Job1] ORDER BY [Arrangement]  COLLATE Traditional_Spanish_ci_ai DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Arr 4 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#CQL expression as COLLATE example
#COLUMNTYPE = LOWER(REPLACE(REPLACE(REPLACE(TRANSLATE(LTRIM(RTRIM(@SearchString)),'`~!@#$%^&*()_-+={}[]|\:;"''<>,.?/',SPACE(32)),' ',CHAR(17)+CHAR(18)),CHAR(18)+CHAR(17),''),CHAR(17)+CHAR(18),' ')) + '%' COLLATE SQL_Latin1_General_Cp1251_CS_AS
@Rest
Scenario: UPDATE SET Functions That Return Date and Time Parts, DATENAME
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 DATENAME(year, [Start Date]) + DATENAME(month, [Start Date]) + DATENAME(weekday, [Start Date]) FROM [Mock].[UpdateEmployee21] where [Deleted] is null ORDER BY [Start Date] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32020DecemberTuesday with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#@Rest @Bug @Ignore
#Scenario: UPDATE SET Functions That Return Date and Time Parts, DATEPART
#	When As User Builder Run cql statement SELECT DATEPART(tzoffset, '2007-05-10  00:00:01.1234567 +05:10'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Arr 4 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value|
@Rest
Scenario: UPDATE SET Functions That Return Date and Time Parts, DAY
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 DAY([Start Date]) FROM [Mock].[UpdateEmployee21] where [Deleted] is null ORDER BY [Start Date] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Parts, MONTH
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 MONTH([Start Date]) FROM [Mock].[UpdateEmployee21] where [Deleted] is null ORDER BY [Start Date] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult312 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Parts, YEAR
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 YEAR([Start Date]) FROM [Mock].[UpdateEmployee21] where [Deleted] is null ORDER BY [Start Date] DESC) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32020 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

#Doesnt work
#Select DATEDIFF(millisecond, '2020-12-31 23:59:59.9999999', [Start Date]) FROM [Mock].[UpdateEmployee21]
#Select DATEDIFF(microsecond, '2005-12-31 23:59:59.9999999', [Start Date]) FROM [Mock].[UpdateEmployee21]
#Error
#The datediff function resulted in an overflow. The number of dateparts separating two date/time instances is too large. Try to use datediff with a less precise datepart.
@Rest
Scenario: UPDATE SET Functions That Return Date and Time Difference Values, DATEDIFF
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 DATEDIFF(year,'2017-12-31 23:59:59.9999999', [Start Date]) +DATEDIFF(quarter,'2017-12-31 23:59:59.9999999', [Start Date])+ DATEDIFF(month,  '2017-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(dayofyear,   '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(day, '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(week,'2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(hour,'2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(minute, '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF(second, '2005-12-31 23:59:59.9999999', [Start Date])FROM [Mock].[UpdateEmployee21]Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3459979305 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Return Date and Time Difference Values, DATEDIFF_BIG
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 DATEDIFF_BIG(year,'2017-12-31 23:59:59.9999999', [Start Date]) +DATEDIFF_BIG(quarter,'2017-12-31 23:59:59.9999999', [Start Date])+ DATEDIFF_BIG(month,  '2017-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(dayofyear,   '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(day, '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(week,'2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(hour,'2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(minute, '2005-12-31 23:59:59.9999999', [Start Date])+DATEDIFF_BIG(second, '2005-12-31 23:59:59.9999999', [Start Date])FROM [Mock].[UpdateEmployee21]Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3459979305 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Modify Date and Time Values, DATEADD
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 DATEADD(year,221, [Start Date]) FROM [Mock].[UpdateEmployee21] Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32241-05-02 00:00:00.0000000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Modify Date and Time Values, EOMONTH
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 EOMONTH([Start Date]) FROM [Mock].[UpdateEmployee21] Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32020-05-31 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Modify Date and Time Values, SWITCHOFFSET
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 SWITCHOFFSET ([Start Date], '-08:00') FROM [Mock].[UpdateEmployee21] Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32020-05-01 16:00:00.0000000 -08:00 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|

@Rest
Scenario: UPDATE SET Functions That Modify Date and Time Values, TODATETIMEOFFSET
	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (SELECT TOP 1 TODATETIMEOFFSET ([Start Date], '-08:00') FROM [Mock].[UpdateEmployee21] Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult32020-05-02 00:00:00.0000000 -08:00 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value|
#Error
#Line 1, Col 56: Incorrect syntax near (.
#@Rest
#Scenario: UPDATE SET DECLARE SET Variables
#	When As User Builder Run cql statement UPDATE [Mock].[UpdateEmployee21] SET [UpdateResult3] = (DECLARE @dt datetimeoffset = switchoffset (CONVERT(datetimeoffset, GETDATE()), '-04:00'); SELECT TOP 1 TODATETIMEOFFSET(@dt, '-08:00') FROM [Mock].[UpdateEmployee21] Where [Start Date] is not null) where [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then As User Builder Run cql statement SELECT [UpdateResult3] from [Mock].[UpdateEmployee21] where [Id] = 8; and validate text result UpdateResult3Arr 4 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value|