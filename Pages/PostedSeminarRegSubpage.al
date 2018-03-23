page 123456735 "Posted Seminar Reg. Subpage"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page

    AutoSplitKey = true;
    Caption = 'Posted Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "Posted Seminar Reg. Line";
    UsageCategory=Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                }
                field("Participant Contact No.";"Participant Contact No.")
                {
                }
                field("Participant Name";"Participant Name")
                {
                }
                field(Participated;Participated)
                {
                }
                field("Registration Date";"Registration Date")
                {
                }
                field("Confirmation Date";"Confirmation Date")
                {
                }
                field("To Invoice";"To Invoice")
                {
                }
                field(Registered;Registered)
                {
                }
                field("Seminar Price";"Seminar Price")
                {
                }
                field("Line Discount %";"Line Discount %")
                {
                }
                field("Line Discount Amount";"Line Discount Amount")
                {
                }
                field(Amount;Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}
