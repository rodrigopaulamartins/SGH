unit FromAvisoConfirmacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFAvisoConfirmacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    pnl_btnconfirmar: TPanel;
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAvisoConfirmacao: TFAvisoConfirmacao;

implementation

{$R *.dfm}

procedure TFAvisoConfirmacao.pnl_btnconfirmarClick(Sender: TObject);
begin
   //
   close;
end;

end.
