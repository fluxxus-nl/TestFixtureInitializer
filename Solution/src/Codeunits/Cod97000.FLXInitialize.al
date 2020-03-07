Codeunit 97000 "FLX Initialize"
{
    // (c) fluxxus.nl

    procedure Initialize()
    var
        FLXPrebuiltFixture: Codeunit "FLX Prebuilt Fixture";
    begin
        if not FLXPrebuiltFixture.DoesPrebuiltFixtureExist() then begin
            FLXPrebuiltFixture.SetPrebuiltFixtureExists(true);

            // add your methods here to add to the shared fixture
        end;
    end;
}