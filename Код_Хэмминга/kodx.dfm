object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'KodX'
  ClientHeight = 338
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = Form1Show
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 329
    Caption = #1050#1086#1076#1080#1088#1086#1074#1072#1085#1080#1077' '#1084#1077#1090#1086#1076#1086#1084' '#1061#1101#1084#1084#1080#1085#1075#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 85
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1080#1084#1074#1086#1083':'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 135
      Height = 13
      Caption = #1044#1074#1086#1080#1095#1085#1086#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 16
      Top = 119
      Width = 119
      Height = 13
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1077' '#1089#1080#1084#1074#1086#1083#1099':'
    end
    object Label4: TLabel
      Left = 16
      Top = 195
      Width = 203
      Height = 13
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1085#1072' '#1086#1090#1087#1088#1072#1074#1082#1091':'
    end
    object Edit1: TEdit
      Left = 107
      Top = 21
      Width = 47
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 160
      Top = 12
      Width = 111
      Height = 39
      Caption = 'Go!'
      TabOrder = 1
      OnClick = Button1Click
    end
    object StringGrid1: TStringGrid
      Left = 16
      Top = 62
      Width = 171
      Height = 51
      ColCount = 8
      DefaultColWidth = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs]
      TabOrder = 2
      ColWidths = (
        20
        20
        20
        20
        20
        20
        20
        20)
      RowHeights = (
        24
        22)
    end
    object StringGrid2: TStringGrid
      Left = 16
      Top = 138
      Width = 87
      Height = 51
      ColCount = 4
      DefaultColWidth = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs]
      TabOrder = 3
      ColWidths = (
        20
        20
        20
        20)
      RowHeights = (
        24
        22)
    end
    object StringGrid3: TStringGrid
      Left = 16
      Top = 214
      Width = 255
      Height = 45
      ColCount = 12
      DefaultColWidth = 20
      DefaultRowHeight = 20
      RowCount = 2
      TabOrder = 4
      ColWidths = (
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20)
    end
  end
end
