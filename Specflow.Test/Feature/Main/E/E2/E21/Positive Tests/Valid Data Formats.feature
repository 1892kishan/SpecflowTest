Feature: Valid Data Formats

@Rest
Scenario: Insert into table of columns types : Text, Number, Date, Yes/No, Single and Multi select Choice, Single and Multi select Link columns
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Valid Data Format selectCQL.txt and validate unordered result Valid Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table of columns types : Single and Multi select Link Hierarchy columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	And Run cql from file Valid Data Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Valid Data Format selectCQL.txt and validate unordered result Valid Data Format insertCQLResult4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table of columns types : Nested single and multi select Link columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Data Format insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Valid Data Format selectCQL2.txt and validate unordered result Valid Data Format insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Insert into table of columns types : Nested single and multi select Hierarchy Link columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	And  Run cql from file Valid Data Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	When Run cql from file Valid Data Format insertCQL3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Valid Data Format selectCQL3.txt and validate unordered result Valid Data Format insertCQLResult3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

#works on automation-db
@Rest @Ignore
Scenario: SINGLE AND MULTI CHOICE options available of length 1, 99, 100 characters
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Choice Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Valid Choice Data Format selectCQL.txt and validate unordered result Valid Choice Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: ALL DATA TYPES NULL
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Null insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Null selectCQL.txt and validate unordered result Null insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: Resolve a Link column based on Link column value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Link Column insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Resolve a Link column based on Link Display column value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Link Column insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Link Column selectCQL2.txt and validate unordered result Link Column insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Resolve a Link column based on Cinchy Id value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Link Column insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then Run cql from file Link Column selectCQL1.txt and validate unordered result Link Column insertCQLResult1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

#After Insert View is broken -> Numeric value does not fit in a System.Decimal
@Rest
Scenario: NUMBER : Valid Format like 123.e2, 120000000000000000000000000000000000.0123456789
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Number Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Valid Number Data Format selectCQL.txt and validate unordered result Valid Number Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DATE : Valid Format like YYYY-MM-DD; MMM DD,YYYY; YYYY-MM-DD HH:MI:SS
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Date Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Valid Date Format selectCQL.txt and validate unordered result Valid Date Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# check how to validate
#  getdate() fails or cant be used inside of an INSERT
#@Rest
#Scenario: DATE : using function GETDATE, GETUTCDATE
#	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#	When Run cql from file Valid Date Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then Run cql from file Valid Date Format selectCQL1.txt and validate date getDate with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
@Rest
Scenario: BOOLEAN : Valid Format as True, False, TRUE, FALSE, Yes, No,1,0
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid YesNo Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Valid YesNo Format selectCQL.txt and validate unordered result Valid YesNo Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: TEXT : Special characters with carriage return, newlines, French characters, special characters and spaces
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Valid Text Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Valid Text Format selectCQL.txt and validate unordered result Valid Text Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: Verify Default Value for all datatypes
	Given Cleanup Run cql from file DefaultValue.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Default Value insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Default Value selectCQL.txt and validate unordered result Default Value Result.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: Verify User is able to insert into columns with MUlti Column Index
	Given Cleanup Run cql from file MultiColumnIndex.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Multi Column Index insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql from file Multi Column Index selectCQL.txt and validate unordered result Multi Column Index Result.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# insert true should not insert NO eventhough default is set to YES
@Rest @Ignore
Scenario: Verify User is able insert value as [true,True,TRUE,YES,yes,Yes,1,false,False,FALSE,NO,no,No,0] into a checkbox;
	Given Cleanup Run cql from file Multiple Checkbox.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Multiple Checkbox insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	#TO BE IMPLEMENTED ONCE IT IS FIXED
	Then Run cql from file Multi Column Index selectCQL.txt and validate unordered result Multi Column Index Result.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |