Codeunit 97000 "FLX Initialize"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure Initialize()
    var
        FLXPrebuiltFixture: Codeunit "FLX Prebuilt Fixture";
    begin
        if not FLXPrebuiltFixture.DoesPrebuiltFixtureExist() then begin
            FLXPrebuiltFixture.SetPrebuiltFixtureExists(true);

            // add your methods here to add data to the shared fixture
        end;
    end;
}