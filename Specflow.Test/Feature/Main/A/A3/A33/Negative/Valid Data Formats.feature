Feature: Valid Data Formats

@Rest
Scenario: BU - As user with edit selected columns, Insert into editable columns without insert permissions
	When As User Ann Run Bulk Upsert cql from file insertBulkUpsert99.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Start Date:DateTime,data2:Emergency Contact Number:Number,data3:Employee Term:Text,data4:Salaried:Boolean,data5:Name:Text
		| Value0 | Value1     | Value2 | Value3    | Value4 | Value5  |
		|        | Dec 3 2020 | 68000  | Part Time | Yes    | Apricot |
		|        | Dec 4 2020 | 69000  | Co-op     | No     | Mark    |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns, Insert into non editable columns to update cells without update permissions
	When As User Ann1 Run Bulk Upsert cql from file insertBulkUpsert99.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Start Date:DateTime,data2:Emergency Contact Number:Number,data3:Employee Term:Text,data4:Salaried:Boolean,data5:Name:Text
		| Value0 | Value1     | Value2 | Value3    | Value4 | Value5  |
		| 9      | Dec 3 2020 | 68000  | Part Time | Yes    | Apricot |
		| 10     | Dec 4 2020 | 69000  | Co-op     | No     | Mark    |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date, Emergency Contact Number, Employee Term, Salaried, Name

	#PGSQL -> Access denied on column(s) Date, Number, Choice, YesNo, Text
	# Before in 4.20 -> Access denied on table(s) Source Table
@Rest
Scenario: BU - Insert as a user with View All Columns and Insert Rows
	When As User viewonly Run Bulk Upsert cql from file insertBulkUpsert98.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Start Date:DateTime,data2:Emergency Contact Number:Number,data3:Employee Term:Text,data4:Salaried:Boolean,data5:Name:Text
		| Value0 | Value1     | Value2 | Value3 | Value4 | Value5  |
		| 385    | Dec 3 2020 | 68000  | 1      | Yes    | Apricot |
		|        | Dec 4 2020 | 69000  | 2      | No     | Mark    |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Date, Number, Choice, YesNo, Text

@Rest
Scenario: BU - Insert into a text column, a value that exceeds Maxlength
	When As User Ben Run Bulk Upsert cql from file Max Length Text BU CQL.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text
		| Value0 | Value1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
		| 1      | TestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestD |
		|        | TestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestDataTestD |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

	#PGSQL -> Literal and Unary Literal values are not supported for this batch upsert operation
@Rest
Scenario: BU - Insert into a unique column, a non unique value
	When As User Ben Run Bulk Upsert cql from file Unique Constraint Violation Text insertCQL.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text
		| Value0 | Value1 |
		| 1      | Test1  |
		|        | Test1  |
	Then BulkUpsert cql result failed contains exception Literal and Unary Literal values are not supported for this batch upsert operation

@Rest
Scenario: BU - Insert into a number column: an invalid data, text value
	When As User Ben Run Bulk Upsert cql from file Data Violation Number BU CQL.txt with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Default Number:Number
		| Value0 | Value1 |
		| 1      | Test   |
		|        | Test1  |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

@Rest
Scenario: Verify User can not update into Read Only System column Modified and Modified
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Dummy] ([Cinchy Id],[FN], [LN], [Region],[Modified By],[Modified]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Description'),@data4, @data5); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:FN:Text,data2:LN:Text,data3:Region:Text,data4:Modified By:Text,data5:Modified:Number
		| Value0 | Value1 | Value2 | Value3 | Value4 | Value5 |
		| 1      | Test   | Test1  | Canada | Admin  | 1      |
	Then BulkUpsert cql result failed with exception Columns Modified By, Modified are readonly and can not be updated

@Rest
Scenario: Verify User can not insert into Read Only System column Modified and Modified
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Dummy] ([Cinchy Id],[FN], [LN], [Region],[Modified By],[Modified]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Description'),@data4, @data5); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:FN:Text,data2:LN:Text,data3:Region:Text,data4:Modified By:Text,data5:Modified:Number
		| Value0 | Value1 | Value2 | Value3 | Value4 | Value5 |
		|        | Test   | Test1  | Canada | Admin  | 1      |
	Then BulkUpsert cql result failed with exception Columns Modified By, Modified are readonly and can not be updated

@Rest
Scenario: Verify User can not update into Calculated column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Dummy] ([Cinchy Id],[FN], [LN], [Region], [Calculated]) VALUES (@data0, @data1, @data2, ResolveLink(@data3,'Description'), @data4); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:FN:Text,data2:LN:Text,data3:Region:Text,data4:Calculated:Text
		| Value0 | Value1 | Value2 | Value3 | Value4     |
		| 1      | Test   | Test1  | Canada | Test Test1 |
	Then BulkUpsert cql result failed with exception Columns Calculated are readonly and can not be updated

@Rest
Scenario: Verify User can not insert into Calculated column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Dummy] ([Cinchy Id],[FN], [LN], [Region], [Calculated]) VALUES (@data0, @data1, @data2, ResolveLink(@data3,'Description'), @data4); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:FN:Text,data2:LN:Text,data3:Region:Text,data4:Calculated:Text
		| Value0 | Value1 | Value2 | Value3 | Value4     |
		|        | Test   | Test1  | Canada | Test Test1 |
	Then BulkUpsert cql result failed with exception Columns Calculated are readonly and can not be updated

@Rest
Scenario: Verify User is not able to insert null into mandatory Text column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2      | Value3 | Value4 | Value5 | Value6 |
		|        | 1      | 22 Mar 2021 | null   | Canada | 2      | null   |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: Verify User is not able to insert null into mandatory Number column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2      | Value3 | Value4 | Value5 | Value6 |
		|        | 1      | 22 Mar 2021 | null   | Canada | null   | Test   |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

@Rest
Scenario: Verify User is not able to insert null into mandatory Date column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2 | Value3 | Value4 | Value5 | Value6 |
		|        | 1      | null   | null   | Canada | 2      | Test   |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

@Rest
Scenario: Verify User is not able to insert null into mandatory Link column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2      | Value3 | Value4 | Value5 | Value6 |
		|        | 1      | 22 Mar 2021 | null   | null   | 2      | Test   |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

@Rest
Scenario: Verify User is not able to insert null into mandatory Choice column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2      | Value3 | Value4 | Value5 | Value6 |
		|        | null   | 22 Mar 2021 | null   | Canada | 2      | Test   |
	Then BulkUpsert cql result failed with exception Exception of type 'System.Exception' was thrown.

@Rest
Scenario: Verify User is not able to insert null into mandatory Hierarchy Link column
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Mandatory Table] ([Cinchy Id],[Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (@data0,@data1, @data2, ResolveLink(@data3,'Mandatory Text'), ResolveLink(@data4,'Description'), @data5, @data6); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Mandatory Choice:Text,data2:Mandatory Date:DateTime,data3:Mandatory Hlink:Text,data4:Mandatory Link:Text,data5:Mandatory Number:Number,data6:Mandatory Text:Text
		| Value0 | Value1 | Value2      | Value3 | Value4 | Value5 | Value6 |
		|        | 1      | 22 Mar 2021 | null   | Canada | 2      | null   |
	Then BulkUpsert cql result failed with exception Empty

	# PGSQL -> 42804: column "Col_12017_1" is of type numeric but expression is of type character varying
@Rest
Scenario: Verify User is not able to insert into calculated column when cql expression fails
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Invalid Calculated Table]([Cinchy Id], [First Name]) Values (@data0,@data1); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:First Name:Text
		| Value0 | Value1                                                                                     |
		|        | This is really a big input just to break cql expression so that we can test cql expression |
	Then BulkUpsert cql result failed with exception Error converting data type varchar to float.

	# PGSQL -> 42804: column "Col_12017_1" is of type numeric but expression is of type character varying
@Rest
Scenario: Verify User is not able to insert into calculated column when result type conversion fails
	When As User Ann Run Bulk Upsert cql statement Insert into [SandBox].[Invalid Calculated Table]([Cinchy Id], [First Name]) Values (@data0,@data1); with Parameter:Column:Type as data0:Cinchy Id:Number,data1:First Name:Text
		| Value0 | Value1 |
		|        | Test   |
	Then BulkUpsert cql result failed with exception Error converting data type varchar to float.