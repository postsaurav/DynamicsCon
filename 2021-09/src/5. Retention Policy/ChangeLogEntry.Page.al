page 60000 "SDH Change Log Entry"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = "SDH Change Log Entry";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field';
                    ApplicationArea = All;
                }
                field("Field No."; Rec."Field No.")
                {
                    ToolTip = 'Specifies the value of the Field No. field';
                    ApplicationArea = All;
                }
                field("New Value"; Rec."New Value")
                {
                    ToolTip = 'Specifies the value of the New Value field';
                    ApplicationArea = All;
                }
                field("Field Caption"; Rec."Field Caption")
                {
                    ToolTip = 'Specifies the value of the Field Caption field';
                    ApplicationArea = All;
                }
                field("Old Value"; Rec."Old Value")
                {
                    ToolTip = 'Specifies the value of the Old Value field';
                    ApplicationArea = All;
                }
                field("Table No."; Rec."Table No.")
                {
                    ToolTip = 'Specifies the value of the Table No. field';
                    ApplicationArea = All;
                }
                field("Table Caption"; Rec."Table Caption")
                {
                    ToolTip = 'Specifies the value of the Table Caption field';
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field';
                    ApplicationArea = All;
                }
            }
        }
    }
}