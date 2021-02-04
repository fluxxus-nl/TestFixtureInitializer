Codeunit 97001 "FLX OnTestInitialize"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Library - Test Initialize", 'OnTestInitialize', '', false, false)]
    local procedure OnTestInitialize(CallerCodeunitID: Integer)
    var
        FLXGenericFreshSetup: Codeunit "FLX Generic Fresh Setup";
    begin
        FLXGenericFreshSetup.SetGenericFreshSetup(CallerCodeunitID);
    end;
}