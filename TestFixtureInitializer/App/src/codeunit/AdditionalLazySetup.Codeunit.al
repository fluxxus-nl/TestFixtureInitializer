Codeunit 97007 "FLX Additional Lazy Setup"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    procedure SetAdditionalLazySetupBefore(CallerCodeunitID: Integer)
    begin
        case CallerCodeunitID of
            // add specific codeunits and your method to set additonal shared fixture here
            134069: // = Codeunit::"ERM Edit Posting Groups" - added id as number to not need dependency
                    // please be sure to remove this example codeunit if not relevant to you
                SetAdditonalLazySetupBeforeForERMEditPostingGroups();
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