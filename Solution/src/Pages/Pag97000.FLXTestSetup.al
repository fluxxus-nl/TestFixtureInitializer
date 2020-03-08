Page 97000 "FLX Test Setup"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/TestFixtureInitializer

    Caption = 'Test Setup';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "FLX Test Setup";
    UsageCategory = Administration;
    ApplicationArea = Basic;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Prebuilt Fixture Exists"; "Prebuilt Fixture Exists")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        InsertRecord();
    end;
}