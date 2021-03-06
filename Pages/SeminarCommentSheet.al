page 123456706 "Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    UsageCategory = Tasks;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {

                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {

                }
            }
        }
    }
    trigger OnNewRecord(BelowxRec : Boolean);
    begin
        SetupNewLine;
    end;
}