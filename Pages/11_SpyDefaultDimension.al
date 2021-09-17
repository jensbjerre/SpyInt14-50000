page 50091 SpyDefaultDimension
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Default Dimension";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Table ID"; "Table ID")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Dimension Code"; "Dimension Code")
                {
                    ApplicationArea = All;
                }
                field("Dimension Value Code"; "Dimension Value Code")
                {
                    ApplicationArea = All;
                }
                field("Value Posting"; "Value Posting")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}