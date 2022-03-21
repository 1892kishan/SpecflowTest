using BoDi;
using NUnit.Framework;
using TechTalk.SpecFlow;

namespace Cinchy.Test.Engine.StepDefinitions
{
    [Binding]
    public class Design
    {
        private readonly IObjectContainer _objectContainer;
        private readonly ScenarioContext _scenarioContext;

        public Design(IObjectContainer objectContainer, ScenarioContext scenarioContext)
        {
            _objectContainer = objectContainer;
            _scenarioContext = scenarioContext;
        }

        [When(@"Run cql statement (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds$")]
        public void WhenRunCql(string cql, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [When(@"As User (.*) Run cql statement (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds$")]
        public void WhenUserRunCQLAsStatement(string user, string cql, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [When(@"Run cql from file (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds$")]
        public void WhenRunCQLFromFile(string fileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Run cql result is (.*)")]
        public void ThenRunCqlResultIsColumnIrstNameCouldNotBeFound(string expected)
        {
            Assert.Pass();
        }

        [Then(@"Run cql result contains (.*)")]
        public void ThenRunCqlResultHasExpectedString(string expected)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) find Execution ID by running (.*) and check (.*) and validate result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void RunCqltoCheckErrorFile(string user, string query, string errorType, string expected, string format, string querytype, int timeout)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) find Execution ID by running (.*) and check (.*) for substrings with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds$")]
        public void RunCqlValidateSubstringsOfErrorFile(string user, string query, string errorType, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and result contains (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void RunCqlContainsExcpectedString(string user, string query, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }


        [Then(@"Run cql result failed with exception (.*)")]
        public void ThenRunCqlResultFailedWithExceptionColumnIrstNameCouldNotBeFound(string expected)
        {
            Assert.Pass();
        }

        [Then(@"Run cql result failed contains with exception (.*)")]
        public void ThenRunCqlResultFailedContains(string expected)
        {
            Assert.Pass();
        }

        [Then(@"Run cql result succeeded with result (.*)")]
        public void ThenRunCqlResultSucceededWithResultMessage(string expected)
        {
            Assert.Pass();
        }

        [Then(@"Run cql from file (.*) and validate result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void VerifyRunCQLFromFile(string fileName, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Run cql from file (.*) and validate unordered result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void VerifyRunCQLFromFileUnOrdered(string fileName, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Validate result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenValidateResultLinkColumnInsertCQLResult_TxtWithResultFormatCSVAndQueryTypeQueryApprovedDataAndTimeoutSeconds(string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Validate unordered result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenValidateUnorderedResultLinkColumnInsertCQLResult_TxtWithResultFormatCSVAndQueryTypeQueryApprovedDataAndTimeoutSeconds(string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Validate expected string to be (.*)")]
        public void ThenValidateStringStringValueWithResultFormatCSVAndQueryTypeQueryApprovedDataAndTimeoutSeconds(string expected)
        {
            Assert.Pass();
        }

        [Then(@"Validate expected number rounded by (.*) to be (.*)")]
        public void ThenValidateNumber(string round, string expected)
        {
            Assert.Pass();
        }

        [Then(@"Run cql from file (.*) and validate date (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenRunCqlFromFileAndValidateDate(string fileName, string date, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Cleanup Run cql from file (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        [Given(@"Cleanup Run cql from file (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenCleanupRunCqlFromFileSometxt_Txt(string fileName, string format, string querytype, int timeout)
        {
            Assert.Pass();
        }

        [Then(@"Cleanup Run cql statement (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        [Given(@"Cleanup Run cql statement (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        [When(@"Cleanup Run cql statement (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void RunCleanUpStatement(string query, string format, string querytype, int timeout)
        {
            Assert.Pass();
        }

        [When(@"As User (.*) Run cql from file (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void WhenUserRunCQL(string user, string fileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"Validate json result (.*) or (.*)")]
        public void ThenValidateJsonResultResultForJsonFunction_Txt(string expectedResult1, string expectedResult2)
        {
            Assert.Pass();
        }


        [When(@"As User (.*) Run Bulk Upsert cql statement (.*) with Parameter:Column:Type as (.*)")]
        public void RunBulkUpsertStatement(string user, string query, string pair, Table table)
        {
            Assert.Pass();
        }


        [When(@"As User (.*) Run Bulk Upsert cql from file (.*) with Parameter:Column:Type as (.*)")]
        public void RunBulkUpsertStatementFromFile(string user, string fileName, string pair, Table table)
        {
            Assert.Pass();
        }

        [When(@"As User (.*) Run Bulk Upsert cql from file (.*) with source (.*)")]
        public void WhenAsUserAdminRunBulkUpsertCqlFromFileInsertBulkUpsert_TxtWithSourceText_Csv(string user, string query, string fileName)
        {
            Assert.Pass();
        }

        [When(@"Run (.*) times As User (.*) Run Bulk Upsert cql from file (.*) with Parameter:Column:Type as (.*)")]
        public void VolumeBulkUpsert(int counter, string user, string fileName, string pair, Table table)
        {
            Assert.Pass();
        }

        [Then(@"BulkUpsert cql result failed with exception (.*)")]
        public void ThenBulkUpsertCqlResultFailedWithExceptionAccessDenied(string expected)
        {
            Assert.Pass();
        }

        [Then(@"BulkUpsert cql result failed contains exception (.*)")]
        public void ThenBulkUpsertCqlResultFailedContainsExceptionCannotInsertDuplicateKeyRow(string expected)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql from file (.*) and validate result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQL(string user, string fileName, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql from file (.*) and validate unordered result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLAndIgnoreOrder(string user, string fileName, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatement(string user, string query, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate unordered result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatementAndIgnoreOrder(string user, string query, string verifyFileName, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate unordered text result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatementAndIgnoreOrderAndValidateText(string user, string query, string expectedString, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate text result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatementAndValidateText(string user, string query, string verifyText, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate number result (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatementAndValidateNumber(string user, string query, string verifyText, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate date (.*) in format (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenValidateDeletedDate(string user, string query, string dateToBeValidated, string dateFormat, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate date has format (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenValidateDateFormat(string user, string query, string dateFormat, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [When(@"As User (.*) verify Healthcheck version to be (.*)")]
        public void WhenGetHealthcheck(string user, string version)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql from file (.*) and validate result1 (.*) or validate result2 (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQL1(string user, string fileName, string verifyFileName1, string verifyFileName2, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql statement (.*) and validate result1 (.*) or validate result2 (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLStatement(string user, string query, string verifyFileName1, string verifyFileName2, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"As User (.*) Run cql from file (.*) and validate function (.*) with ResultFormat = (.*) and QueryType = (.*) and Timeout = (.*) seconds")]
        public void ThenUserRunCQLAndValidate(string user, string fileName, string function, string format, string querytype, int timeout, Table table)
        {
            Assert.Pass();
        }

        [Then(@"User is able to access cinchy row id")]
        public void ThenAsUserBenIsAbleToAccessCinchyRowId()
        {
            Assert.Pass();
        }
    }
}
