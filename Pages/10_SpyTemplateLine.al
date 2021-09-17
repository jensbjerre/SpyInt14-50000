page 50090 SpyTemplateLine
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Config. Template Line";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Template; "Data Template Code")
                {
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("Field ID"; "Field ID")
                {
                    ApplicationArea = All;
                }
                field(FieldName; "Field Name")
                {
                    ApplicationArea = All;
                }
                field("Table ID"; "Table ID")
                {
                    ApplicationArea = All;
                }
                field("Table Name"; "Table Name")
                {
                    ApplicationArea = All;
                }
                field("Template Code"; "Template Code")
                {
                    ApplicationArea = All;
                }
                field("Template Description"; "Template Description")
                {
                    ApplicationArea = All;
                }
                field(DefaultValue; "Default Value")
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