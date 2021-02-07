codeunit 97050 "FLX Tfi Test Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        SetupTestSuites();
    end;

    local procedure SetupTestSuites()
    begin
        SetupTestSuite('Bank', '1fb2e583-f2c3-4484-a8d4-387e3adce46d');
        SetupTestSuite('Cash Flow', '69837cc7-28e9-4db0-9a0f-6616f259c91a');
        SetupTestSuite('Cost Accounting', '16419195-5f01-494f-9b02-34363dade478');
        SetupTestSuite('CRM integration', '155bc500-e420-4113-803e-7aa8e8eea112');
        SetupTestSuite('Data Exchange', '85125fdc-eb14-4f16-8c5d-6e4589aceb1d');
        SetupTestSuite('Dimension', '6d9b6d22-97e0-4774-982a-2097fd660f97');
        SetupTestSuite('ERM', 'fa3e2564-a39e-417f-9be6-c0dbe3d94069');
        SetupTestSuite('Fixed Asset', 'c81764a5-be79-4d50-ba3e-4ade02073780');
        SetupTestSuite('General Journal', '790cf8ce-f921-42a8-8c34-a0af2ddf6265');
        SetupTestSuite('Graph', '474a0e0a-d177-4c70-aae0-4ff674a04e74');
        SetupTestSuite('Integration', '2b634ad5-63df-4a3c-9e35-e347f646e940');
        SetupTestSuite('Invoicing', 'cc2187fe-1b59-4f29-8a75-76d76c88c6dc');
        SetupTestSuite('Job', '9bf23d52-8194-4857-8896-5e48b24493f6');
        SetupTestSuite('Local', 'bd6c6741-7734-4109-bf2d-db58545d482c');
        SetupTestSuite('Marketing', '74e323c4-70a3-49ce-b18e-fe9ccaff01d3');
        SetupTestSuite('Misc', '4564dd2f-e8b2-41ff-9905-9d7a950475a5');
        SetupTestSuite('Monitor Sensitive Fields', 'c49d9d12-1c94-4362-8bf7-3cce15be54dc');
        SetupTestSuite('Permissions', 'd94a0cee-f211-4941-b609-7c984f85ad03');
        SetupTestSuite('Physical Inventory', 'e94328f1-bf57-43d3-a862-93d54f83a9d7');
        SetupTestSuite('Prepayment', 'fdddc5f1-3294-485f-aed1-0b798b6edd69');
        SetupTestSuite('Rapid Start', '7fe10be7-575f-4cce-957b-bcd0df8f9bd7');
        SetupTestSuite('Report', '79447c3f-14b4-4c10-8779-03911f30ab26');
        SetupTestSuite('Resource', '0243a4ea-21b3-4fa8-ad70-9915a4400be0');
        SetupTestSuite('Reverse', 'ab333b30-f600-4d0e-a519-73684ff42504');
        SetupTestSuite('SCM', '6f0b528b-a4de-4ccd-a948-d1350e228e4a');
        // SetupTestSuite('SINGLESERVER', '5b061701-dae6-48cc-bc16-8c4761a2baf5'); // note MS: Tests-SINGLESERVER are rather destructive to the environment and other tests. We are running these separately from the others. I would not include these by the default.
        SetupTestSuite('SMB', 'c9bea3a6-a9af-499f-b78a-130a42eceedd');
        SetupTestSuite('SMTP', 'c49d9d39-1c94-46d2-8bf7-3cce15ba54dc');
        // SetupTestSuite('TestLibraries', '5d86850b-0d76-4eca-bd7b-951ad998e997');
        SetupTestSuite('Upgrade', 'd0e99b97-089b-449f-a0f5-a2ab994dbfd7');
        SetupTestSuite('User', '9cc7e87b-8ba9-4c23-82d4-8af3e919c84b');
        SetupTestSuite('VAT', '0f0955b8-92e2-4ce2-a580-3c4583dde9ae');
        SetupTestSuite('Workflow', 'c4795dd0-aee3-47cc-b020-2ee93a47d4c4');

    end;

    local procedure SetupTestSuite(SuiteName: Text; ExtensionID: Text)
    var
        ALTestSuite: Record "AL Test Suite";
        TestSuiteMgt: Codeunit "Test Suite Mgt.";
        SuiteNameCode: Code[10];
    begin
        SuiteNameCode := CopyStr(SuiteName, 1, MaxStrLen(SuiteNameCode));

        if ALTestSuite.Get(SuiteNameCode) then
            ALTestSuite.Delete(true);

        TestSuiteMgt.CreateTestSuite(SuiteNameCode);

        ALTestSuite.Get(SuiteNameCode);
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, ExtensionID);
    end;
}