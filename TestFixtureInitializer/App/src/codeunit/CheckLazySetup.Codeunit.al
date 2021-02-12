Codeunit 97005 "FLX Check Lazy Setup"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure DoesCodeunitNeedLazySetup(CallerCodeunitID: Integer): Boolean
    begin
        case CallerCodeunitID of
            // add specific codeunits here that need additonal shared fixture
            132502: // = Codeunit::"Purch. Document Posting Errors" - added id as number to not need dependency
                    // please be sure to remove this example codeunit if not relevant to you
                exit(true);
            else
                exit(false);
        end;
    end;
}