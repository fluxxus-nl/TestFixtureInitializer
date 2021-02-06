codeunit 97050 "FLX Tfi Test Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        SetupTestSuite();
    end;

    local procedure SetupTestSuite()
    var
        ALTestSuite: Record "AL Test Suite";
        TestSuiteMgt: Codeunit "Test Suite Mgt.";
        SuiteName: Code[10];
    begin
        SuiteName := 'DEFAULT';

        if ALTestSuite.Get(SuiteName) then
            ALTestSuite.Delete(true);

        TestSuiteMgt.CreateTestSuite(SuiteName);
        ALTestSuite.Get(SuiteName);
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '1fb2e583-f2c3-4484-a8d4-387e3adce46d');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '69837cc7-28e9-4db0-9a0f-6616f259c91a');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '16419195-5f01-494f-9b02-34363dade478');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '155bc500-e420-4113-803e-7aa8e8eea112');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '85125fdc-eb14-4f16-8c5d-6e4589aceb1d');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '6d9b6d22-97e0-4774-982a-2097fd660f97');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'fa3e2564-a39e-417f-9be6-c0dbe3d94069');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'c81764a5-be79-4d50-ba3e-4ade02073780');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '790cf8ce-f921-42a8-8c34-a0af2ddf6265');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '474a0e0a-d177-4c70-aae0-4ff674a04e74');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '2b634ad5-63df-4a3c-9e35-e347f646e940');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'cc2187fe-1b59-4f29-8a75-76d76c88c6dc');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '9bf23d52-8194-4857-8896-5e48b24493f6');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'bd6c6741-7734-4109-bf2d-db58545d482c');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '74e323c4-70a3-49ce-b18e-fe9ccaff01d3');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '4564dd2f-e8b2-41ff-9905-9d7a950475a5');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'c49d9d12-1c94-4362-8bf7-3cce15be54dc');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'd94a0cee-f211-4941-b609-7c984f85ad03');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'e94328f1-bf57-43d3-a862-93d54f83a9d7');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'fdddc5f1-3294-485f-aed1-0b798b6edd69');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '7fe10be7-575f-4cce-957b-bcd0df8f9bd7');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '79447c3f-14b4-4c10-8779-03911f30ab26');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '0243a4ea-21b3-4fa8-ad70-9915a4400be0');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'ab333b30-f600-4d0e-a519-73684ff42504');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '6f0b528b-a4de-4ccd-a948-d1350e228e4a');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '5b061701-dae6-48cc-bc16-8c4761a2baf5');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'c9bea3a6-a9af-499f-b78a-130a42eceedd');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'c49d9d39-1c94-46d2-8bf7-3cce15ba54dc');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '5d86850b-0d76-4eca-bd7b-951ad998e997');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'd0e99b97-089b-449f-a0f5-a2ab994dbfd7');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '9cc7e87b-8ba9-4c23-82d4-8af3e919c84b');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '0f0955b8-92e2-4ce2-a580-3c4583dde9ae');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'c4795dd0-aee3-47cc-b020-2ee93a47d4c4');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '23de40a6-dfe8-4f80-80db-d70f83ce8caf');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'dd0be2ea-f733-4d65-bb34-a28f4624fb14');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '5095f467-0a01-4b99-99d1-9ff1237d286f');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, 'e7320ebb-08b3-4406-b1ec-b4927d3e280b');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '0d60b215-6ee1-4789-8e53-866cfa50c23c');
        TestSuiteMgt.SelectTestMethodsByExtension(ALTestSuite, '9856ae4f-d1a7-46ef-89bb-6ef056398228');
    end;
}