Table 97000 "FLX Test Setup"
{
    // (c) fluxxus.nl

    Caption = 'Test Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Prebuilt Fixture Exists"; Boolean)
        {
            Caption = 'Prebuilt Fixture Exists';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertRecord()
    begin
        if not Get() then
            Insert();
    end;
}