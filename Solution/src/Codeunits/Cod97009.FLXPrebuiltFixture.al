Codeunit 97009 "FLX Prebuilt Fixture"
{
    // (c) fluxxus.nl

    procedure DoesPrebuiltFixtureExist(): Boolean
    var
        FLXTestSetup: Record "FLX Test Setup";
    begin
        with FLXTestSetup do begin
            if not Get() then
                Insert();
            exit("Prebuilt Fixture Exists");
        end
    end;

    procedure SetPrebuiltFixtureExists(PrebuiltFixtureExists: Boolean)
    var
        FLXTestSetup: Record "FLX Test Setup";
    begin
        with FLXTestSetup do begin
            Get();
            "Prebuilt Fixture Exists" := PrebuiltFixtureExists;
            Modify();
        end
    end;
}