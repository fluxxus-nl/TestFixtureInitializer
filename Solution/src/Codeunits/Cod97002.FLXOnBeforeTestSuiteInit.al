Codeunit 97002 "FLX OnBeforeTestSuiteInit."
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Library - Test Initialize", 'OnBeforeTestSuiteInitialize', '', false, false)]
    local procedure OnBeforeTestSuiteInitialize(CallerCodeunitID: Integer)
    var
        FLXLazySetup: Codeunit "FLX Lazy Setup";
        FLXAdditionalLazySetup: Codeunit "FLX Additional Lazy Setup";
    begin
        GlobalLanguage(1033); // standard tests are expected to run with application language set to ENU, but some switch to local language if available

        FLXLazySetup.SetLazySetup(CallerCodeunitID);
        FLXAdditionalLazySetup.SetAdditionalLazySetupBefore(CallerCodeunitID);
    end;
}