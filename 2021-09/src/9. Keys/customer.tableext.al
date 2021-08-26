tableextension 60000 "SDH Customer" extends Customer
{
    fields
    {
        field(50000; "SDH Dynamics Con 2021"; Boolean)
        {
            Caption = 'Dynamics Con 2021';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(K50000; "IC Partner Code")
        { }
        key(K50001; "SDH Dynamics Con 2021")
        { }
        // key(K50002; "IC Partner Code", "SDH Dynamics Con 2021")
        // { }
    }
}