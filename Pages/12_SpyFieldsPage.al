page 50092 SpyFieldsPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Field;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(TableNo; TableNo)
                {
                    ApplicationArea = All;

                }
                field(TableName; TableName)
                {
                    ApplicationArea = All;

                }
                field(FieldNo; "No.")
                {
                    ApplicationArea = All;

                }
                field(FieldName; FieldName)
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