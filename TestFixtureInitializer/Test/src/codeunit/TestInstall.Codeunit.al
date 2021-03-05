codeunit 97050 "FLX Tfi Test Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        IsFirstTime := true;

        SetupTestSuites();
    end;

    local procedure SetupTestSuites()
    begin
        AddToTestSuite('DEFAULT', '1fb2e583-f2c3-4484-a8d4-387e3adce46d'); //  Tests-Bank
        // AddToTestSuite('DEFAULT', '69837cc7-28e9-4db0-9a0f-6616f259c91a'); //  Tests-Cash Flow
        AddToTestSuite('DEFAULT', '16419195-5f01-494f-9b02-34363dade478'); //  Tests-Cost Accounting
        AddToTestSuite('DEFAULT', '155bc500-e420-4113-803e-7aa8e8eea112'); //  Tests-CRM integration
        AddToTestSuite('DEFAULT', '85125fdc-eb14-4f16-8c5d-6e4589aceb1d'); //  Tests-Data Exchange
        AddToTestSuite('DEFAULT', '6d9b6d22-97e0-4774-982a-2097fd660f97'); //  Tests-Dimension
        AddToTestSuite('DEFAULT', 'fa3e2564-a39e-417f-9be6-c0dbe3d94069'); //  Tests-ERM
        AddToTestSuite('DEFAULT', 'c81764a5-be79-4d50-ba3e-4ade02073780'); //  Tests-Fixed Asset
        AddToTestSuite('DEFAULT', '790cf8ce-f921-42a8-8c34-a0af2ddf6265'); //  Tests-General Journal
        AddToTestSuite('DEFAULT', '474a0e0a-d177-4c70-aae0-4ff674a04e74'); //  Tests-Graph
        AddToTestSuite('DEFAULT', '2b634ad5-63df-4a3c-9e35-e347f646e940'); //  Tests-Integration
        AddToTestSuite('DEFAULT', 'cc2187fe-1b59-4f29-8a75-76d76c88c6dc'); //  Tests-Invoicing
        AddToTestSuite('DEFAULT', '9bf23d52-8194-4857-8896-5e48b24493f6'); //  Tests-Job
        AddToTestSuite('DEFAULT', 'bd6c6741-7734-4109-bf2d-db58545d482c'); //  Tests-Local
        AddToTestSuite('DEFAULT', '74e323c4-70a3-49ce-b18e-fe9ccaff01d3'); //  Tests-Marketing
        AddToTestSuite('DEFAULT', '4564dd2f-e8b2-41ff-9905-9d7a950475a5'); //  Tests-Misc
        AddToTestSuite('DEFAULT', 'c49d9d12-1c94-4362-8bf7-3cce15be54dc'); //  Tests-Monitor Sensitive Fields
        AddToTestSuite('DEFAULT', 'd94a0cee-f211-4941-b609-7c984f85ad03'); //  Tests-Permissions
        AddToTestSuite('DEFAULT', 'e94328f1-bf57-43d3-a862-93d54f83a9d7'); //  Tests-Physical Inventory
        AddToTestSuite('DEFAULT', 'fdddc5f1-3294-485f-aed1-0b798b6edd69'); //  Tests-Prepayment
        AddToTestSuite('DEFAULT', '7fe10be7-575f-4cce-957b-bcd0df8f9bd7'); //  Tests-Rapid Start
        AddToTestSuite('DEFAULT', '79447c3f-14b4-4c10-8779-03911f30ab26'); //  Tests-Report
        AddToTestSuite('DEFAULT', '0243a4ea-21b3-4fa8-ad70-9915a4400be0'); //  Tests-Resource
        AddToTestSuite('DEFAULT', 'ab333b30-f600-4d0e-a519-73684ff42504'); //  Tests-Reverse
        AddToTestSuite('DEFAULT', '6f0b528b-a4de-4ccd-a948-d1350e228e4a'); //  Tests-SCM
        // SetupOrAddToTestSuite('DEFAULT', '5b061701-dae6-48cc-bc16-8c4761a2baf5'); //  Tests-SINGLESERVER
        AddToTestSuite('DEFAULT', 'c9bea3a6-a9af-499f-b78a-130a42eceedd'); //  Tests-SMB
        AddToTestSuite('DEFAULT', 'c49d9d39-1c94-46d2-8bf7-3cce15ba54dc'); //  Tests-SMTP
        AddToTestSuite('DEFAULT', '5d86850b-0d76-4eca-bd7b-951ad998e997'); //  Tests-TestLibraries
        AddToTestSuite('DEFAULT', 'd0e99b97-089b-449f-a0f5-a2ab994dbfd7'); //  Tests-Upgrade
        AddToTestSuite('DEFAULT', '9cc7e87b-8ba9-4c23-82d4-8af3e919c84b'); //  Tests-User
        AddToTestSuite('DEFAULT', '0f0955b8-92e2-4ce2-a580-3c4583dde9ae'); //  Tests-VAT
        AddToTestSuite('DEFAULT', 'c4795dd0-aee3-47cc-b020-2ee93a47d4c4'); //  Tests-Workflow
        AddToTestSuite('DEFAULT', '69837cc7-28e9-4db0-9a0f-6616f259c91a'); //  Tests-Cash Flow - moved to last position so its results will not influence other tests
    end;

    local procedure AddToTestSuite(SuiteName: Text; ExtensionID: Text)
    var
        ALTestSuite: Record "AL Test Suite";
        TestSuiteMgt: Codeunit "Test Suite Mgt.";
        SuiteNameCode: Code[10];
        Module: ModuleInfo;
    begin
        if not NavApp.GetModuleInfo(ExtensionID, Module) then
            exit;

        SuiteNameCode := CopyStr(SuiteName, 1, MaxStrLen(SuiteNameCode));

        if IsFirstTime then begin
            if ALTestSuite.Get(SuiteNameCode) then
                ALTestSuite.Delete(true);
            TestSuiteMgt.CreateTestSuite(SuiteNameCode);
            IsFirstTime := false;
        end;

        ALTestSuite.Get(SuiteNameCode);
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, ExtensionID);
    end;

    var
        IsFirstTime: Boolean;
}