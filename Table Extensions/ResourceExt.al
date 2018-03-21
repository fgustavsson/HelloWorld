tableextension 123456700 ResourceExt extends Resource
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(123456702; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703; "Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }

}