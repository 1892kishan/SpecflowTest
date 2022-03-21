Feature: Builder Valid Data Formats

@Rest
Scenario: As Builder, Insert into table of columns types : Text, Number, Date, Yes/No, Single and Multi select Choice, Single and Multi select Link columns
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Valid Data Format selectCQL.txt and validate unordered result Valid Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into table of columns types : Single and Multi select Link Hierarchy columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	And Run cql from file Valid Data Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Valid Data Format selectCQL.txt and validate unordered result Valid Data Format insertCQLResult4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into table of columns types : Nested single and multi select Link columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Data Format insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Valid Data Format selectCQL2.txt and validate unordered result Valid Data Format insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into table of columns types : Nested single and multi select Hierarchy Link columns using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	And  Run cql from file Valid Data Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	When As User Builder Run cql from file Valid Data Format insertCQL3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Valid Data Format selectCQL3.txt and validate unordered result Valid Data Format insertCQLResult3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

#works on automation-db
@Rest @Ignore
Scenario: As Builder, SINGLE AND MULTI CHOICE options available of length 1, 99, 100 characters
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Choice Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Valid Choice Data Format selectCQL.txt and validate unordered result Valid Choice Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# nulls are inserted in tsql while defaults as inserted in pgsql
@Rest
Scenario: As Builder, ALL DATA TYPES NULL
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Null insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Null selectCQL.txt and validate unordered result Null insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder, Resolve a Link column based on Link column value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Resolve a Link column based on Link Display column value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Link Column selectCQL2.txt and validate unordered result Link Column insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Resolve a Link column based on Cinchy Id value
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name               | Value      |
	Then As User Builder Run cql from file Link Column selectCQL1.txt and validate unordered result Link Column insertCQLResult1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

#Insert is processed but view breaks  (120000000000000000000000000000000000 is inserted)
@Rest
Scenario: As Builder, NUMBER : Valid Format like 123.e2, 120000000000000000000000000000000000.0123456789
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Number Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Valid Number Data Format selectCQL.txt and validate unordered result Valid Number Data Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder, DATE : Valid Format like YYYY-MM-DD; MMM DD,YYYY; YYYY-MM-DD HH:MI:SS
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Date Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Valid Date Format selectCQL.txt and validate unordered result Valid Date Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

# check how to validate
#  getdate() fails or cant be used inside of an INSERT
#@Rest
#Scenario: As Builder, DATE : using function GETDATE, GETUTCDATE
#	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#	When As User Builder Run cql from file Valid Date Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
#	Then As User Builder Run cql from file Valid Date Format selectCQL1.txt and validate date getDate with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name | Value |
@Rest
Scenario: As Builder, BOOLEAN : Valid Format as True, False, TRUE, FALSE, Yes, No,1,0
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid YesNo Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Valid YesNo Format selectCQL.txt and validate unordered result Valid YesNo Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder, TEXT : Special characters with carriage return, newlines, French characters, special characters and spaces
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Valid Text Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Valid Text Format selectCQL.txt and validate unordered result Valid Text Format insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
#
#	Scenario: As Builder, Insert into table of columns types : Single and Multi select Link Hierarchy columns using 'Cinchy Id','Version'
#	When User logs in as admin with password cinchy
#	And User navigates to run query screen
#	And User runs query Select [Cinchy Id] FROM [Cinchy Test].[Source Table] WHERE [Text] IN ('8a5b9d7d-85c0-44a9-8840-bd2ca4a03627','fd97519e-aa2b-4eea-823a-c099fee3b7cb')
#
#	And Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#
#	And Run cql from file Valid Data Format insertCQL4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#	Then As User Builder Run cql from file Valid Data Format selectCQL1.txt and validate unordered result Valid Data Format insertCQLResult1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name            | Value      |
#
#Scenario: As Builder, Insert into table of columns types : Nested single and multi select Link columns using 'Cinchy Id','Version'
#	When As User Builder Run cql from file Valid Data Format insertCQL2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#	Then As User Builder Run cql from file Valid Data Format selectCQL2.txt and validate unordered result Valid Data Format insertCQLResult2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name            | Value      |
#
#Scenario: As Builder, Insert into table of columns types : Nested single and multi select Hierarchy Link columns using 'Cinchy Id','Version'
#	When As User Builder Run cql from file Valid Data Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#	And Run cql from file Valid Data Format insertCQL1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#	And Run cql from file Valid Data Format insertCQL3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name               | Value      |
#	Then As User Builder Run cql from file Valid Data Format selectCQL3.txt and validate unordered result Valid Data Format insertCQLResult3.txt  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name            | Value      |