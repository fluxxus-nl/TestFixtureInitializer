Codeunit 97003 "FLX OnAfterTestSuiteInit."
{
    // (c) fluxxus.nl

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Library - Test Initialize", 'OnAfterTestSuiteInitialize', '', false, false)]
    local procedure OnAfterTestSuiteInitialize(CallerCodeunitID: Integer)
    var
        FLXAdditionalLazySetup: Codeunit "FLX Additional Lazy Setup";
    begin
        FLXAdditionalLazySetup.SetAdditionalLazySetupAfter(CallerCodeunitID);
    end;
}