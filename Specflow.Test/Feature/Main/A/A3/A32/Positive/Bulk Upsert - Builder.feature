Feature: Bulk Upsert - Builder

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into a Link Column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1 | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 15     | 2      | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 16     |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 17     | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		| 18     | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 15    |
		| to   | 18    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into a Link Column that references simple column types
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert2.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 19     | Automation91 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | Yes    |
		| 20     | Automation90 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | No     |
		| 21     | Automation89 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | Yes    |
		| 22     | Automation88 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | No     |
		|        | Automation87 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | Yes    |
		|        | Automation86 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | No     |
		|        | Automation85 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | Yes    |
		|        | Automation84 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | No     |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 19    |
		| to   | 22    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into a Multi Select Link Column
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert4.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
		| Value1 | Value2                       |
		| 23     | Annie,Apple,Apricots,Apricot |
		| 24     | Banana,Banana2               |
		|        | Mark,Orange                  |
		|        | Annie,Apple,Apricots,Apricot |
		|        | Banana,Banana2               |
		|        | Mark,Orange                  |
		|        | Annie,Apple,Apricots,Apricot |
		|        | Banana,Banana2               |
		|        | Mark,Orange                  |
		|        | Annie,Apple,Apricots,Apricot |
		|        | Banana,Banana2               |
		|        | Mark,Orange                  |
		|        | Annie,Apple,Apricots,Apricot |
		|        | Banana,Banana2               |
		|        | Mark,Orange                  |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 23    |
		| to   | 24    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into a Multi Select Choice Column
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert3.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
		| Value1 | Value2                |
		| 25     | Dance,Play            |
		| 26     | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Dance,Jump,Play,Sleep |
		|        | Dance,Play            |
		|        | Dance,Play            |
		|        | Jump,Sleep            |
		|        | Jump                  |
		|        | Dance                 |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 25    |
		| to   | 26    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert5.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text
		| Value1 | Value2       |
		| 27     | Automation1  |
		| 28     | Automation2  |
		|        | Automation1  |
		|        | Automation9  |
		|        | Automation14 |
		|        | Automation2  |
		|        | Automation1  |
		|        | Automation9  |
		|        | Automation14 |
		|        | Automation2  |
		|        | Automation1  |
		|        | Automation9  |
		|        | Automation14 |
		|        | Automation2  |
	Then As User Admin Run cql from file selectBulkUpsert2.txt and validate unordered result resultBulkUpsert11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 27    |
		| to   | 28    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Builder, Bulk Upsert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run Bulk Upsert cql from file insertBulkUpsert6.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
		| Value1 | Value2                                           |
		| 29     | Automation3,Automation4,Automation9,Automation15 |
		| 30     | Automation1                                      |
		|        | Automation1                                      |
		|        | Automation1                                      |
		|        | Automation10,Automation11,Automation12           |
		|        | Automation3,Automation4,Automation9,Automation15 |
		|        | Automation1                                      |
		|        | Automation10,Automation11,Automation12           |
		|        | Automation3,Automation4,Automation9,Automation15 |
		|        | Automation1                                      |
		|        | Automation10,Automation11,Automation12           |
		|        | Automation3,Automation4,Automation9,Automation15 |
		|        | Automation1                                      |
		|        | Automation10,Automation11,Automation12           |
		|        | Automation3,Automation4,Automation9,Automation15 |
		|        | Automation1                                      |
		|        | Automation10,Automation11,Automation12           |
		|        | Automation3,Automation4,Automation9,Automation15 |
	Then As User Admin Run cql from file selectBulkUpsert3.txt and validate unordered result resultBulkUpsert12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 29    |
		| to   | 30    |