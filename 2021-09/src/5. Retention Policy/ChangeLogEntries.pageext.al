pageextension 60001 "SDH Change Log Entries" extends "Change Log Entries"
{
    actions
    {
        addlast(processing)
        {
            action(CustomChangeLog)
            {
                ApplicationArea = All;
                ToolTip = 'Open Custom Log';
                Image = ChangeLog;
                RunObject = Page "SDH Change Log Entry";
            }

            action(CopyChangeLog)
            {
                ApplicationArea = All;
                ToolTip = 'Copy To Custom Change Log';
                Image = Copy;
                trigger OnAction()
                begin
                    CopyChangeLogToCustom();
                    Message('Copied Succesfully.');
                end;
            }
        }
    }

    procedure CopyChangeLogToCustom()
    var
        ChangeLog: Record "Change Log Entry";
        SDHCustomChangeLog: Record "SDH Change Log Entry";
    begin
        If not ChangeLog.FindFirst() then
            exit;

        repeat
            SDHCustomChangeLog.Init();
            SDHCustomChangeLog.TransferFields(ChangeLog);
            SDHCustomChangeLog.Insert();
        until (ChangeLog.Next() = 0);
    end;
}