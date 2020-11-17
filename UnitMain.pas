unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, Menus;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    StatusBar: TStatusBar;
    Memo: TMemo;
    MainMenu1: TMainMenu;
    FileMenu: TMenuItem;
    FileNew: TMenuItem;
    FileOpen: TMenuItem;
    FileSave: TMenuItem;
    FIleSaveAs: TMenuItem;
    FileExit: TMenuItem;
    Edit1: TMenuItem;
    Object1: TMenuItem;
    Links1: TMenuItem;
    N1: TMenuItem;
    GoTo1: TMenuItem;
    Replace1: TMenuItem;
    Find1: TMenuItem;
    N2: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N3: TMenuItem;
    Undo1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Contents1: TMenuItem;
    N4: TMenuItem;
    TestA: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FileExitClick(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure FileNewClick(Sender: TObject);
    procedure FileSaveClick(Sender: TObject);
    procedure FileOpenClick(Sender: TObject);
    procedure FIleSaveAsClick(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.Cut1Click(Sender: TObject);
begin
  Memo.CutToClipboard;
end;

procedure TMainForm.Copy1Click(Sender: TObject);
begin
  Memo.CopyToClipboard;
end;

procedure TMainForm.Paste1Click(Sender: TObject);
begin
   Memo.PasteFromClipboard;
end;

procedure TMainForm.FileNewClick(Sender: TObject);
var Res: Integer;
begin
  if memo.Modified then
  begin
    Res := Application.MessageBox(
      'The current file has changed. save changes ?',
      'AlexPad Message', MB_YESNOCANCEL);
    if Res = IDYES then
      FileSaveClick(Sender);
    if Res = IDCANCEL then
      Exit;
  end;
  if memo.Lines.Count > 0 then
    memo.Clear;

  SaveDialog1.FileName := '';
end;

procedure TMainForm.FileOpenClick(Sender: TObject);
var Res: Integer;
begin
  if memo.Modified then
  begin
    Res := Application.MessageBox(
      'The current file has changed. save changes ?',
      'AlexPad Message', MB_YESNOCANCEL);
    if Res = IDYES then
      FileSaveClick(Sender);
    if Res = IDCANCEL then
      Exit;
  end;

  OpenDialog1.FileName := '';

  if OpenDialog1.Execute then
  begin
    if memo.Lines.Count > 0 then
      memo.Clear;

    memo.Lines.LoadFromFile(OpenDialog1.FileName);
    SaveDialog1.FileName := OpenDialog1.FileName;
  end;
end;

procedure TMainForm.FileSaveClick(Sender: TObject);
begin
  ShowMessage('Holis');
  if SaveDialog1.FileName <> '' then
  begin
    Memo.Lines.SaveToFile(SaveDialog1.FileName);
    Memo.Modified := false;
  end
  else
    
end;

procedure TMainForm.FIleSaveAsClick(Sender: TObject);
begin
  SaveDialog1.Title := 'Save As';
  if SaveDialog1.Execute then
  begin
    Memo.Lines.SaveToFile(SaveDialog1.FileName);
    Memo.Modified := false;
  end;
end;

procedure TMainForm.Undo1Click(Sender: TObject);
begin
  SendMessage(Memo.Handle, WM_UNDO, 0, 0);
end;

end.
