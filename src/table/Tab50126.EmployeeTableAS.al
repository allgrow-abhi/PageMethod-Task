table 50126 "Employee Table AS"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee No.';
        }
        field(2; "Employee Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Name';
        }
        field(3; "Project No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project No.';
            TableRelation = "Project Table AS"."Project No.";
            // trigger OnValidate()
            // var
            //     ProjectRec: Record "Project Table AS";
            // begin
            //     if ProjectRec.Get(rec."Project No.") then begin
            //         Rec."Project No." := ProjectRec."Project No.";
            //     end;
            // end;
        }
        field(4; "Project Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project Name';
        }
    }

    keys
    {
        key(PK; "Employee No.")
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