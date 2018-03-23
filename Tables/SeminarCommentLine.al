table 123456704 "Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Comment Line';

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar", "Seminar Registration Header", "Posted Seminar Reg. Header";
            OptionCaption = 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }
        field(20; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if("Table Name" = const (Seminar)) "Seminar"
            else if("Table Name" = const ("Seminar Registration Header")) "Seminar Registration Header";
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; Date; Date)
        {
            Caption = 'Date';
        }
        field(60; Code; Code[10])
        {
            Caption = 'Code';
        }
        field(70; Comment; Text[80])
        {
            Caption = 'Comment';
        }


    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }
    }
    procedure SetupNewLine();
    var
        SeminarCommentLine: Record "Seminar Comment Line";
    begin
        SeminarCommentLine.SetRange("Table Name", "Table Name");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange("Date", WorkDate);
        if SeminarCommentLine.IsEmpty then
            Date := WorkDate;
    end;
}