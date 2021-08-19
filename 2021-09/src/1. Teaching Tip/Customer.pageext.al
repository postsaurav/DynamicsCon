pageextension 60000 "SDH Customer" extends "Customer List"
{
    AboutTitle = 'Customers.';
    AboutText = 'All Customer Information is stored here. The Same Information is avilable during Trasactions related to customers.';

    layout
    {
        modify("Balance (LCY)")
        {
            AboutTitle = 'Balance ($)';
            AboutText = 'The balance is the total amount a customer owes you.';
        }
        modify("Location Code")
        {
            AboutTitle = 'Location';
            AboutText = 'The Location is used for default Sales Location.';
        }
        // addlast(Control1)
        // {
        //     field("SDH Dynamics Con 2021"; Rec."SDH Dynamics Con 2021")
        //     {
        //         ApplicationArea = All;
        //         ToolTip = 'Specify Dynamics Con Attending Customers.';
        //         AboutTitle = 'Dynamics Con';
        //         AboutText = 'This field confirms that customer is attending DynamicsCon 2020.';
        //     }
        // }
    }

    actions
    {
        modify("Customer - Order Summary")
        {
            AboutTitle = 'Customer Order Summary';
            AboutText = 'Used to see all Order posted for one or more customers.';
        }
    }
}
