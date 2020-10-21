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

end.
