page 50125 "Project List AS"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Project Table AS";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Project No."; Rec."Project No.")
                {
                }
                field("Project Name"; Rec."Project Name")
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}