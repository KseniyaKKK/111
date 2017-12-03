object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 385
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 280
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Print2: TMenuItem
      Caption = 'Print'
      Checked = True
      object ext1: TMenuItem
        Caption = 'Text'
        OnClick = ext1Click
      end
      object f: TMenuItem
        Caption = 'Form'
        OnClick = fClick
      end
      object Figure1: TMenuItem
        Caption = 'Figure'
        OnClick = Figure1Click
      end
    end
  end
end
