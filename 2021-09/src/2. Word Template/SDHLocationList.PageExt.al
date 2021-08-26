pageextension 60002 "SDH Location List" extends "Location List"
{

    actions
    {
        addlast(processing)
        {
            action(WordTemplate)
            {
                ApplicationArea = All;
                Caption = 'Word Template';
                ToolTip = 'Apply a Word template on the selected records.';
                Image = Word;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    Location: Record Location;
                    WordTemplateSelectionWizard: Page "Word Template Selection Wizard";
                begin
                    CurrPage.SetSelectionFilter(Location);
                    WordTemplateSelectionWizard.SetData(Location);
                    WordTemplateSelectionWizard.RunModal();
                end;
            }
        }
    }
}