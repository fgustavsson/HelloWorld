table 123456701 Seminar
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Code"; code[10])
        {
            Caption = 'Code';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

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