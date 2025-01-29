unit Main.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TMainView = class(TForm)
    Edt1: TEdit;
    Edt2: TEdit;
    BtnAdd: TButton;
    EdtResult: TEdit;
    CmboBox_Operation: TComboBox;
    procedure BtnAddClick(Sender: TObject);
  private

  end;

var
  MainView: TMainView;

implementation

uses
  API.AssemblyCalc;

{$R *.dfm}

procedure TMainView.BtnAddClick(Sender: TObject);
var
  LNum1, LNum2: Integer;
begin
  if not TryStrToInt(Edt1.Text, LNum1) then
    raise Exception.Create('your input is not an integer!!');
  if not TryStrToInt(Edt2.Text, LNum2) then
    raise Exception.Create('your input is not an integer!!');

  case CmboBox_Operation.ItemIndex of

    0: EdtResult.Text := TAsmMath.Add(LNum1, LNum2).ToString;

    1: EdtResult.Text := TAsmMath.Subtract(LNum1, LNum2).ToString;

    2: EdtResult.Text := TAsmMath.Multiply(LNum1, LNum2).ToString;

    3: EdtResult.Text := TAsmMath.Divide(LNum1, LNum2).ToString;

  end;

end;

end.
