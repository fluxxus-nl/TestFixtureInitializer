Codeunit 97004 "FLX Generic Fresh Setup"
{
    // (c) fluxxus.nl

    procedure SetGenericFreshSetup(CallerCodeunitID: Integer)
    begin
        case CallerCodeunitID of
            Codeunit::"ERM Sales Batch Posting": // please be sure only to remove this example codeunit if not relevant to you
                SetGenericFreshSetupForERMSalesBatchPosting();
        // add specific codeunits and your method to set generic fresh fixture here
        end
    end;

    local procedure SetGenericFreshSetupForERMSalesBatchPosting()
    begin
    end;
}