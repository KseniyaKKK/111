unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Printers, Vcl.StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Print2: TMenuItem;
    ext1: TMenuItem;
    f: TMenuItem;
    Figure1: TMenuItem;
    Button1: TButton;
    procedure ext1Click(Sender: TObject);
    procedure Figure1Click(Sender: TObject);
    procedure fClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.ext1Click(Sender: TObject);
var
t: TextFile;
begin
AssignPrn(t);
Rewrite(t);
Writeln(t,'�, ��������� �����, ���������� 20 ����� 1998 ���� � �. ���������,���������� ������ (������).'+#13+#10+'� 2005 ���� ���� � 1 ���� ����������� �������� ����� � 1, � � 2014 ���� �������� ������� ������� ����� � '+#13+#10+'�������� �� ������������� ��������������� �������� �� ������������ ���������.');
CloseFile(t);
end;

procedure TForm1.Figure1Click(Sender: TObject);
var
x,y,a,x2,y2:integer;
begin
x:=1000;y:=1000;a:=1000;
Printer.BeginDoc;
 with Printer.Canvas do
begin
moveto(x,y);
lineto(x+a,y);
moveto(x,y);
lineto(round(x+a/2),round(y+a*cos(60)));
lineto(x+a,y);

x2:=x;
y2:=round(y-sqrt(sqr(2/3*a)-sqr(1/3*a)));
moveto(x2,y2);
lineto(x2+a,y2);
moveto(x2,y2);
lineto(round(x2+a/2),round(y2-a*cos(60)));
lineto(x2+a,y2);

end;
Printer.EndDoc;
end;

procedure TForm1.fClick(Sender: TObject);
begin
Form1.Print;

end;
end.
