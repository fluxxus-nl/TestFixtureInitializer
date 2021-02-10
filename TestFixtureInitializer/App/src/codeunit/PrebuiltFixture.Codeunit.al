Codeunit 97009 "FLX Prebuilt Fixture"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure DoesPrebuiltFixtureExist(): Boolean
    var
        FLXTestSetup: Record "FLX Test Setup";
    begin
        if not FLXTestSetup.Get() then
            FLXTestSetup.Insert();
        exit(FLXTestSetup."Prebuilt Fixture Exists");
    end;

    procedure SetPrebuiltFixtureExists(PrebuiltFixtureExists: Boolean)
    var
        FLXTestSetup: Record "FLX Test Setup";
    begin
        FLXTestSetup.Get();
        FLXTestSetup."Prebuilt Fixture Exists" := PrebuiltFixtureExists;
        FLXTestSetup.Modify();
    end;
}