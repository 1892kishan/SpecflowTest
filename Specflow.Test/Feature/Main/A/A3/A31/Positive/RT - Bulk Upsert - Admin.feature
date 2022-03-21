Feature: RT - Bulk Upsert - Admin

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Bulk Upsert into a Link Column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value0 | Value1 | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   |
		| 1      | 2      | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 |
		| 2      |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		| 3      | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		| 4      | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 1     |
		| to   | 4     |

@Rest @Ignore @Bug
Scenario: As Admin, Bulk Upsert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert2.txt with Parameter:Column:Type as data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text
		| Value1 | Value2 | Value3 | Value4 | Value5 | Value6 | Value7 |
		| 2,0    |        | 19,0   | 18,0   | 18,0   |        |        |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Bulk Upsert into a Link Column that references simple column types
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert2.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Name:Text,data3:Id:Number,data4:Start Date:DateTime,data5:Emergency Contact Number:Number,data6:Annual Base Compensation:Number,data7:Employee Term:Text,data8:Salaried:Boolean
		| Value1 | Value2       | Value3 | Value4      | Value5    | Value6 | Value7    | Value8 |
		| 5      | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000  | Co-op     | Yes    |
		| 6      | Automation98 | 98     | Dec 2 2020  | 778878    | 67000  | Full Time | No     |
		| 7      | Automation97 | 97     | Dec 3 2020  | 433543    | 68000  | Part Time | Yes    |
		| 8      | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000  | Co-op     | No     |
		|        | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000  | Full Time | Yes    |
		|        | Automation94 | 94     | Dec 6 2020  | 564645    | 71000  | Part Time | No     |
		|        | Automation93 | 93     | Dec 7 2020  | 89089     | 72000  | Co-op     | Yes    |
		|        | Automation92 | 92     | Dec 8 2020  | 12312     | 71000  | Full Time | No     |
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 5     |
		| to   | 8     |

#@Rest
#Scenario: As Admin, Bulk Upsert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
#
#@Rest
#Scenario: As Admin, Bulk Upsert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
#
		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Bulk Upsert into a Multi Select Link Column
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert4.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSL:Text
		| Value1 | Value2                       |
		| 9      | Annie,Apple,Apricots,Apricot |
		| 10     | Banana,Banana2               |
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
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 9     |
		| to   | 10    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Bulk Upsert into a Multi Select Choice Column
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert3.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSC:Text
		| Value1 | Value2                |
		| 31     | Dance,Play            |
		| 32     | Jump,Sleep            |
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
	Then As User Admin Run cql from file selectBulkUpsert1.txt and validate unordered result resultBulkUpsert3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 31    |
		| to   | 32    |

				# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
@Rest
Scenario: As Admin, Bulk Upsert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert5.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:Hlink:Text
		| Value1 | Value2       |
		| 11     | Automation1  |
		| 12     | Automation2  |
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
	Then As User Admin Run cql from file selectBulkUpsert2.txt and validate unordered result resultBulkUpsert5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 11    |
		| to   | 12    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
@Rest
Scenario: As Admin, Bulk Upsert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert6.txt with Parameter:Column:Type as data1:Cinchy Id:Number,data2:MSH:Text
		| Value1 | Value2                                           |
		| 13     | Automation3,Automation4,Automation9,Automation15 |
		| 14     | Automation1                                      |
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
	Then As User Admin Run cql from file selectBulkUpsert3.txt and validate unordered result resultBulkUpsert6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 13    |
		| to   | 14    |

		# CQL Expression : FORMAT([Date], 'Mon-dd') doesn't work -> returns 3on-23 for 23rd March
@Rest @DEF001247
Scenario: As Admin, Bulk Upsert into all column types
	Given Cleanup Run cql from file cleanupBulkUpsert1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert7.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Job:Text,data2:Link Calculated Cache:Text,data3:Link CalculatedLink Cache:Text,data4:Manager:Text,data5:Person:Text,data6:Role:Text,data7:User:Text,data8:Name:Text,data9:Id:Number,data10:Start Date:DateTime,data11:Emergency Contact Number:Number,data12:Annual Base Compensation:Number,data13:Employee Term:Text,data14:Salaried:Boolean,data15:MSL:Text,data16:MSC:Text,data17:Hlink:Text,data18:MSH:Text
		| Value0 | Value1 | Value2                         | Value3                   | Value4 | Value5 | Value6 | Value7                   | Value8       | Value9 | Value10     | Value11   | Value12 | Value13   | Value14 | Value15                      | Value16               | Value17      | Value18                                          |
		| 33     | 2      | FirstName Test2 LastName Test2 | Brazil Cinchy            | Plum   | Plum   | Select | viewonly                 | Automation99 | 99     | 15 Mar 2020 | 545455545 | 66000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation1  | Automation3,Automation4,Automation9,Automation15 |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation98 | 98     | Dec 2 2020  | 778878    | 67000   | Full Time | No      | Banana,Banana2               | Jump,Sleep            | Automation2  | Automation1                                      |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation97 | 97     | Dec 3 2020  | 433543    | 68000   | Part Time | Yes     | Mark,Orange                  | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation96 | 96     | Dec 4 2020  | 6786786   | 69000   | Co-op     | No      | Annie,Apple,Apricots,Apricot | Dance,Play            | Automation9  | Automation1                                      |
		|        | 2      |                                | Brazil Cinchy            | Plum   | Plum   |        |                          | Automation95 | 95     | Dec 5 2020  | 2342342   | 70000   | Full Time | Yes     | Banana,Banana2               | Dance,Play            | Automation14 | Automation10,Automation11,Automation12           |
		|        |        | FirstName Test2 LastName Test2 |                          | Mango2 | Mango2 | Select | All Edit View Row Filter | Automation94 | 94     | Dec 6 2020  | 564645    | 71000   | Part Time | No      | Mark,Orange                  | Jump,Sleep            | Automation2  | Automation3,Automation4,Automation9,Automation15 |
		|        | 3      | FirstName Test2 LastName Test2 | Albania AutomationDomain |        | Mango  | QA     | All Edit View Row Filter | Automation93 | 93     | Dec 7 2020  | 89089     | 72000   | Co-op     | Yes     | Annie,Apple,Apricots,Apricot | Dance,Jump,Play,Sleep | Automation1  | Automation1                                      |
		|        | 4      | FirstName Test3 LastName Test3 | Ghana Shared             | Fruit6 |        | HR     | viewonly                 | Automation92 | 92     | Dec 8 2020  | 12312     | 71000   | Full Time | No      | Banana,Banana2               | Dance,Play            | Automation9  | Automation10,Automation11,Automation12           |
	Then As User Admin Run cql from file selectBulkUpsert3.txt and validate unordered result resultBulkUpsert13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
		| from | 33    |
		| to   | 33    |