unit UCopyPositionMouse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ClipBrd;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pt:TPoint;
begin
  GetCursorPos(pt);
  ShowMessage('Posicao X = ' + IntToStr(pt.X) +  ' Posicao Y = ' + IntToStr(pt.Y));
end;

procedure TForm1.FormShow(Sender: TObject);
var
  pt: TPoint;
begin
  GetCursorPos(pt);
  ShowMessage('Posicao X = ' + IntToStr(pt.X) +  ' Posicao Y = ' + IntToStr(pt.Y));
  Clipboard.AsText := ('X = ' + pt.X.ToString + 'Y = ' + pt.Y.toString);
end;

end.
