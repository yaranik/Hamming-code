unit kodx;
{Yaroslav Povolotsky}
{P3175}
{Реализация кодов Хэмминга}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    Label3: TLabel;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Label4: TLabel;
    procedure Form1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CodeS: array [0..7] of bool;
  CodeSError: array [0..7] of bool;
  CodeSAdd: array [0..11] of bool;
  r1, r2, r3, r4: bool;
  s1, s2, s3, s4: bool;
  r1_1, r2_1, r3_1, r4_1: bool;
  i1_1, i2_1, i3_1, i4_1, i5_1, i6_1, i7_1, i8_1: bool;

  implementation

  {$R *.dfm}

  function Bin(x: integer): string;
    const t: array[0..1] of char = ('0', '1');
    var r: string;
        d: 0..1;
begin
  r:='';
  while (x<>0) do
  begin
    d:=x mod 2;
    r:=t[d]+r;
    x:=x div 2;
  end;
  Bin:=r;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  S: String;
  i, a: Integer;
begin
  S:=Bin(Ord(Edit1.Text[1]));
  StringGrid1.Cells[0,1]:='0';

  for i:=0 to 7 do
  begin
    if S[Length(S)-(7-i)]<>'' then
    begin
      StringGrid1.Cells[i,1] := S[Length(S)-(7-i)];
      if StringGrid1.Cells[i,1]='0' then
        CodeS[i]:=FALSE
      else
        CodeS[i]:=TRUE;
    end
    else
    begin
      StringGrid1.Cells[i,1]:='0';
      CodeS[i]:=FALSE;
    end;
  end;

  r1:=CodeS[5-1] xor CodeS[6-1] xor CodeS[7-1] xor CodeS[8-1];
  r2:=CodeS[2-1] xor CodeS[3-1] xor CodeS[4-1] xor CodeS[8-1];
  r3:=CodeS[1-1] xor CodeS[3-1] xor CodeS[4-1] xor CodeS[6-1] xor CodeS[7-1];
  r4:=CodeS[1-1] xor CodeS[2-1] xor CodeS[4-1] xor CodeS[5-1] xor CodeS[7-1];

    if r1=TRUE then
    StringGrid2.Cells[0,1] := '1'
  else
    StringGrid2.Cells[0,1] := '0';

  if r2=TRUE then
    StringGrid2.Cells[1,1] := '1'
  else
    StringGrid2.Cells[1,1] := '0';

    if r3=TRUE then
    StringGrid2.Cells[2,1] := '1'
  else
    StringGrid2.Cells[2,1] := '0';

    if r4=TRUE then
    StringGrid2.Cells[3,1] := '1'
  else
    StringGrid2.Cells[3,1] := '0';

  StringGrid3.Cells[0,1]:=StringGrid2.Cells[0,1];
  StringGrid3.Cells[1,1]:=StringGrid2.Cells[1,1];
  StringGrid3.Cells[2,1]:=StringGrid1.Cells[0,1];
  StringGrid3.Cells[3,1]:=StringGrid2.Cells[2,1];
  StringGrid3.Cells[4,1]:=StringGrid1.Cells[1,1];
  StringGrid3.Cells[5,1]:=StringGrid1.Cells[2,1];
  StringGrid3.Cells[6,1]:=StringGrid1.Cells[3,1];
  StringGrid3.Cells[7,1]:=StringGrid2.Cells[3,1];
  StringGrid3.Cells[8,1]:=StringGrid1.Cells[4,1];
  StringGrid3.Cells[9,1]:=StringGrid1.Cells[5,1];
  StringGrid3.Cells[10,1]:=StringGrid1.Cells[6,1];
  StringGrid3.Cells[11,1]:=StringGrid1.Cells[7,1];
  end;

procedure TForm1.Form1Show(Sender: TObject);
var i: integer;
begin
  StringGrid1.Cells[0,0] := 'i1';
  StringGrid1.Cells[1,0] := 'i2';
  StringGrid1.Cells[2,0] := 'i3';
  StringGrid1.Cells[3,0] := 'i4';
  StringGrid1.Cells[4,0] := 'i5';
  StringGrid1.Cells[5,0] := 'i6';
  StringGrid1.Cells[6,0] := 'i7';
  StringGrid1.Cells[7,0] := 'i8';

  StringGrid2.Cells[0,0] := 'r1';
  StringGrid2.Cells[1,0] := 'r2';
  StringGrid2.Cells[2,0] := 'r3';
  StringGrid2.Cells[3,0] := 'r4';

  StringGrid3.Cells[0,0] := 'r1';
  StringGrid3.Cells[1,0] := 'r2';
  StringGrid3.Cells[2,0] := 'i1';
  StringGrid3.Cells[3,0] := 'r3';
  StringGrid3.Cells[4,0] := 'i2';
  StringGrid3.Cells[5,0] := 'i3';
  StringGrid3.Cells[6,0] := 'i4';
  StringGrid3.Cells[7,0] := 'r4';
  StringGrid3.Cells[8,0] := 'i5';
  StringGrid3.Cells[9,0] := 'i6';
  StringGrid3.Cells[10,0] := 'i7';
  StringGrid3.Cells[11,0] := 'i8';
end;


end.


