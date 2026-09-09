table 50125 "Project Table AS"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project No.';
        }
        field(2; "Project Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project Name';
        }
    }

    keys
    {
        key(PK; "Project No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}