Feature: Bulk Upsert - ViewSelected EditSelected View Edit RF

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, using parameters, Insert into a Link Column using ResolveLink with no permission to that column
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBULinkColumn1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Person:Text,data2:Link Calculated Cached:Text
		| Value0 | Value1  | Value2                         |
		| 9      | Annie   | FirstName Test1 LastName Test1 |
		| 10     | Apple   |                                |
		|        | Apricot | FirstName Test1 LastName Test1 |
		|        | Mark    |                                |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into a Multi Select Link Column with no permission to that column
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBUMultiLinkColumn1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text,data2:MSL:Text
		| Value0 | Value1 | Value2        |
		| 9      | Annie1 | Apple,Apricot |
		| 10     | Mark1  |               |
		|        | Annie1 | Apple,Apricot |
		|        | Mark1  | Apricot       |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Name, MSL

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into a Multi Select Choice Column with no permission to that column
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBUMultiChoiceColumn1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text,data2:MSC:Text
		| Value0 | Value1 | Value2           |
		| 9      | Annie1 | Dance,Play, Jump |
		| 10     | Mark1  | Dance            |
		|        | Annie1 | Dance,Play, Jump |
		|        | Mark1  | Dance            |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Name, MSC

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into hierarchy link column using ResolveLink with no permission to that column
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBUHierarchyColumn1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:HLink:Text
		| Value0 | Value1 |
		| 9      | Annie  |
		| 10     | Mark   |
		|        | Annie  |
		|        | Mark   |
	Then BulkUpsert cql result failed with exception Access denied on column(s) HLink

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into a column with no permission to Date, Number, Choice, Bolean columns
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBulkUpsert99.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Start Date:DateTime,data2:Emergency Contact Number:Number,data3:Employee Term:Text,data4:Salaried:Boolean,data5:Name:Text
		| Value0 | Value1      | Value2 | Value3    | Value4 | Value5  |
		| 9      | 15 Mar 2020 | 66000  | Co-op     | Yes    | Annie   |
		| 10     | Dec 2 2020  | 67000  | Full Time | No     | Mark    |
		|        | Dec 3 2020  | 68000  | Part Time | Yes    | Apricot |
		|        | Dec 4 2020  | 69000  | Co-op     | No     | Mark    |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date, Emergency Contact Number, Employee Term, Salaried, Name

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into multi select hierarchy link column using ResolveLink
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBUMultiHierarchyColumn1.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSH:Text
		| Value0 | Value1 |
		| 9      | Annie  |
		| 10     | Mark   |
		|        | Annie  |
		|        | Mark   |
	Then BulkUpsert cql result failed with exception Access denied on column(s) MSH

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into live and Cached Calculated columns tha references simple column types, UDFs
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBUCalculatedColumn.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Calculated Cache:Text,data2:Calculated Live:Text,data3:Live UDF:Text,data4:Cached UDF UDF:Text,data5:Name:Text
		| Value0 | Value1      | Value2 | Value3    | Value4 | Value5  |
		| 9      | 15 Mar 2020 | 66000  | Co-op     | Yes    | Annie   |
		| 10     | Dec 2 2020  | 67000  | Full Time | No     | Mark    |
		|        | Dec 3 2020  | 68000  | Part Time | Yes    | Apricot |
		|        | Dec 4 2020  | 69000  | Co-op     | No     | Mark    |
	Then BulkUpsert cql result failed with exception Columns Calculated Cache, Calculated Live, Live UDF, Cached UDF are readonly and can not be updated

@Rest
Scenario: BU - As user with edit selected columns with editable row filter and view selected columns with viewable row filter, Insert into a Link Column that references cached calculated column type
	When As User ViewSelected EditSelected View Edit RF Run Bulk Upsert cql from file insertBULinkColumn3.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Link Calculated Cached:Text
		| Value0 | Value1                         |
		| 9      | FirstName Test1 LastName Test1 |
		| 10     |                                |
		|        | FirstName Test1 LastName Test1 |
		|        |                                |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Link Calculated Cache