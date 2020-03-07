Codeunit 97000 "FLX Initialize"
{
    // (c) fluxxus.nl

    procedure InitializeBefore()
    var
        FLXPrebuiltFixture: Codeunit "FLX Prebuilt Fixture";
    begin
        if not FLXPrebuiltFixture.DoesPrebuiltFixtureExist() then begin
            FLXPrebuiltFixture.SetPrebuiltFixtureExists(true);

            // add your methods to set fixture here
        end;
    end;
}