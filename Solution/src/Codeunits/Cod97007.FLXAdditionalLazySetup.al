Codeunit 97007 "FLX Additional Lazy Setup"
{
    // (c) fluxxus.nl

    procedure SetAdditionalLazySetupBefore(CallerCodeunitID: Integer)
    begin
        case CallerCodeunitID of
            Codeunit::"ERM Edit Posting Groups": // please be sure only to remove this example codeunit if not relevant to you
                SetAdditonalLazySetupBeforeForERMEditPostingGroups();
        // add specific codeunits and your method to set additonal shared fixture here
        end
    end;

    procedure SetAdditionalLazySetupAfter(CallerCodeunitID: Integer)
    begin
        case CallerCodeunitID of
        // add specific codeunits and your method to set additonal shared fixture here
        end
    end;

    local procedure SetAdditonalLazySetupBeforeForERMEditPostingGroups()
    begin
    end;
}