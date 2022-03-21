Feature: P11

@Rest
Scenario: Test
	When As User Admin Run Bulk Upsert cql from file insertBulkUpsert1.txt with source text.csv
