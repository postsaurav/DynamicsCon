codeunit 60001 "SDH Sales Post"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnCheckAndUpdateOnAfterSetPostingFlags', '', false, false)]
    local procedure CheckAttendingDynamicsCon(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
        ErrorLbl: Label 'You Cannot Post Sales Invoice as Customer %1 is not attending Dynamics Con.', Comment = 'Error Message %1 Customer No.';
        ErrorTxt: Text;
    begin
        ErrorTxt := StrSubstNo(ErrorLbl, Customer."No.");

        Customer.Get(SalesHeader."Sell-to Customer No.");
        If not (Customer."SDH Dynamics Con 2021") then
            Error(ErrorTxt);
    end;
}
