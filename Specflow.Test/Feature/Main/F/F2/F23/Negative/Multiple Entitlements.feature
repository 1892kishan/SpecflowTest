Feature: Multiple Entitlements

## C<-B<-A, user has permission to columns only for currentUserID()
@Rest
Scenario: Select a link column pointing to another link column as user with Multiple rows entitlement with permission to that column via currentuserID()
	When  As User Multiple Entitlements Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2] where [User].[Cinchy Id] != CurrentUserID(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Nested Link

## C<-B<-A, user has permission to columns only for currentUserID()
@Rest
Scenario: Select a multi select link column pointing to another link column as user with Multiple rows entitlement with no permission to that table, has Multiple rows permission to linked table and source column table
	When  As User Multiple Entitlements Run cql statement SELECT [MSL] FROM [Mock].[Employees2] where [User].[Cinchy Id] != CurrentUserID(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be MSL

## C<-B<-A, user has permission to columns only for currentUsersGroups()
@Rest
# return NULL
Scenario: Select a link column pointing to another link column as user with Multiple rows entitlement with permission to that column via currentUsersGroups()
	When  As User Multiple Entitlements Run cql statement SELECT [Groups] FROM [Mock].[Employees2] WHERE [Groups].[Cinchy Id] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Groups

@Rest
Scenario: Select Date,Text,Choice columns as user with multiple entitlements: 1. View Selected columns ; 2. Edit Selected columns with Editable and Viewable row filter based on currentUserId()
	When  As User Multiple Entitlements Run cql statement SELECT TOP 1 [Home Address], [Home Phone], [Birthday], [Hobbies] FROM [Mock].[Employees2] WHERE [user].[Cinchy id] != CurrentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Home Address,Home Phone,Birthday,Hobbies,,,

@Rest @Ignore
Scenario: Select Text,Number,Date,Choice, Multi select choice, Live and Cached Calculated column as a user with multiple entitlements with no permission to the columns
	When  As User Multiple Entitlements Run cql statement SELECT [Text],[Number],[Date],[Choice],[MSC],[Live Calc],[Cached Calc],[Live UDF],[Cached UDF] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied