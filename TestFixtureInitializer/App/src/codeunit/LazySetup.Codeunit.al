Codeunit 97006 "FLX Lazy Setup"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure SetLazySetup(CallerCodeunitID: Integer)
    var
        FLXInitialize: Codeunit "FLX Initialize";
        FLXPrebuiltFixture: Codeunit "FLX Prebuilt Fixture";
        FLXCheckLazySetup: Codeunit "FLX Check Lazy Setup";
    begin
        if FLXPrebuiltFixture.DoesPrebuiltFixtureExist() then
            exit;

        if FLXCheckLazySetup.DoesCodeunitNeedLazySetup(CallerCodeunitID) then
            FLXInitialize.Initialize();
    end;
}