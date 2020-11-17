object MainForm: TMainForm
  Left = 277
  Top = 208
  Width = 928
  Height = 480
  Caption = 'Alex Pad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 402
    Width = 912
    Height = 19
    Panels = <>
  end
  object Memo: TMemo
    Left = 0
    Top = 29
    Width = 912
    Height = 373
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 88
    object FileMenu: TMenuItem
      Caption = '&File'
      object FileExit: TMenuItem
        Caption = '&Exit'
        OnClick = FileExitClick
      end
    end
    object FileNew: TMenuItem
      Caption = '&New'
      OnClick = FileNewClick
    end
    object FileOpen: TMenuItem
      Caption = '&Open'
      OnClick = FileOpenClick
    end
    object FileSave: TMenuItem
      Caption = '&Save'
      OnClick = FileSaveClick
    end
    object FIleSaveAs: TMenuItem
      Caption = 'Save &As'
      OnClick = FIleSaveAsClick
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Undo1: TMenuItem
        Caption = '&Undo'
        ShortCut = 16474
        OnClick = Undo1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = 'Cu&t'
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        ShortCut = 16470
        OnClick = Paste1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Find1: TMenuItem
        Caption = '&Find...'
      end
      object Replace1: TMenuItem
        Caption = 'R&eplace...'
      end
      object GoTo1: TMenuItem
        Caption = '&Go To...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Links1: TMenuItem
        Caption = 'Lin&ks...'
      end
      object Object1: TMenuItem
        Caption = '&Object'
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Contents1: TMenuItem
        Caption = '&Contents'
        Enabled = False
      end
      object SearchforHelpOn1: TMenuItem
        Caption = '&Search for Help On...'
      end
      object HowtoUseHelp1: TMenuItem
        Caption = '&How to Use Help'
        object TestA: TMenuItem
          Caption = 'Test A'
        end
      end
      object About1: TMenuItem
        Caption = '&About...'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 128
  end
  object SaveDialog1: TSaveDialog
    Left = 168
  end
end
