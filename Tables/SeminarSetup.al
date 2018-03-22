table 123456700 "Seminar Setup"
// CSD1.00 - 2018-01-01 - D. E. Veloper // Chapter 5 - Lab 2-1 
{
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {

        }
        field(20; "Seminar Nos."; Code[20])
        {
            TableRelation = "No. Series";
            Caption = 'Seminar Nos.';
        }
        field(30; "Seminar Registration Nos."; Code[20])
        {
            TableRelation = "No. Series";
            Caption = 'Seminar Registration Nos.';
        }
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            TableRelation = "No. Series";
            Caption = 'Posted Seminar Reg. Nos.';
        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}