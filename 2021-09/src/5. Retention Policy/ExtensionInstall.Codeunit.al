codeunit 60000 "SDH Extension Install"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        RetenPolAllowedTables: Codeunit "Reten. Pol. Allowed Tables";
    begin
        RetenPolAllowedTables.AddAllowedTable(Database::"SDH Change Log Entry");
    end;
}