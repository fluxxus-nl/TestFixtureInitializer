Codeunit 97004 "FLX Generic Fresh Setup"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure SetGenericFreshSetup(CallerCodeunitID: Integer)
    begin
        case CallerCodeunitID of
            // add specific codeunits and your method to set generic fresh fixture here
            134391: // = Codeunit::"ERM Sales Batch Posting" - added id as number to not need dependency
                    // please be sure to remove this example codeunit if not relevant to you
                SetGenericFreshSetupForERMSalesBatchPosting();
        end
    end;

    local procedure SetGenericFreshSetupForERMSalesBatchPosting()
    begin
    end;
}