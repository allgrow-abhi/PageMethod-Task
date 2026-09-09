page 50126 "Employee Card AS"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employee Table AS";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Employee No."; Rec."Employee No.")
                {

                }
                field("Employee Name"; Rec."Employee Name")
                {

                }
                field("Project No."; Rec."Project No.")
                {
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ProjectRec: Record "Project Table AS";
                    begin
                        if Page.RunModal(Page::"Project List AS", ProjectRec) = Action::LookupOK then begin

                            Message('Selected Project No. = %1, Name = %2', ProjectRec."Project No.", ProjectRec."Project Name");
                            Rec.Validate("Project No.", ProjectRec."Project No.");
                            Rec.Validate("Project Name", ProjectRec."Project Name");
                            exit(true);
                        end;
                    end;
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
            action(ProjectList)
            {

                trigger OnAction()
                var
                    projectRec: Record "Project Table AS";
                begin
                    if Page.RunModal(Page::"Project List AS", projectRec) = Action::LookupOK then
                        exit;
                end;
            }
        }
    }

}