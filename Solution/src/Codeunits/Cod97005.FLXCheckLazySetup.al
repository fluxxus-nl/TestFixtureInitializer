Codeunit 97005 "FLX Check Lazy Setup"
{
    // (c) fluxxus.nl

    procedure DoesCodeunitNeedLazySetup(CallerCodeunitID: Integer): Boolean
    begin
        case CallerCodeunitID of
            // add specific codeunits here that need additonal shared fixture
            Codeunit::"Purch. Document Posting Errors": // please be sure only to remove this example codeunit if not relevant to you
                exit(true);
            else
                exit(false);
        end;
    end;
}