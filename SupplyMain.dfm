object fMailSupply: TfMailSupply
  Left = 312
  Top = 236
  Width = 602
  Height = 419
  Caption = #1044#1086#1075#1086#1074#1086#1088' '#1087#1086#1089#1090#1072#1074#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcData: TPageControl
    Left = 0
    Top = 0
    Width = 586
    Height = 332
    ActivePage = tsDataDeliv
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object tsDataDeliv: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1080' '#1076#1086#1089#1090#1072#1074#1082#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object lNumContr: TLabel
        Left = 16
        Top = 16
        Width = 102
        Height = 17
        Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      end
      object lDateContr: TLabel
        Left = 16
        Top = 40
        Width = 91
        Height = 17
        Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
      end
      object lShip: TLabel
        Left = 16
        Top = 64
        Width = 123
        Height = 17
        Caption = #1054#1090#1075#1088#1091#1079#1082#1072' '#1074' '#1090#1077#1095#1077#1085#1080#1080
      end
      object lDeliv: TLabel
        Left = 16
        Top = 88
        Width = 124
        Height = 17
        Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1090#1086#1074#1072#1088#1072' '#1076#1086
      end
      object lDay: TLabel
        Left = 272
        Top = 64
        Width = 29
        Height = 17
        Caption = #1076#1085#1077#1081
      end
      object eNumContr: TEdit
        Left = 144
        Top = 8
        Width = 121
        Height = 25
        TabOrder = 0
      end
      object deDateContr: TDateEdit
        Left = 144
        Top = 32
        Width = 121
        Height = 25
        NumGlyphs = 2
        TabOrder = 1
      end
      object eDay: TEdit
        Left = 144
        Top = 56
        Width = 121
        Height = 25
        TabOrder = 2
      end
      object eDeliv: TEdit
        Left = 144
        Top = 80
        Width = 345
        Height = 25
        TabOrder = 3
      end
      object rgBuyer: TRadioGroup
        Left = 16
        Top = 120
        Width = 105
        Height = 73
        Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
        Items.Strings = (
          #1070#1088'. '#1083#1080#1094#1086
          #1060#1080#1079'. '#1083#1080#1094#1086)
        TabOrder = 4
        OnClick = rgBuyerClick
      end
    end
    object tsDataUr: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object lUrAdres: TLabel
        Left = 8
        Top = 104
        Width = 66
        Height = 17
        Caption = #1070#1088'. '#1072#1076#1088#1077#1089
      end
      object lTelefonUr: TLabel
        Left = 8
        Top = 224
        Width = 52
        Height = 17
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object lNamePred: TLabel
        Left = 8
        Top = 8
        Width = 173
        Height = 17
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
      end
      object lNameBank: TLabel
        Left = 8
        Top = 200
        Width = 131
        Height = 17
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
      end
      object lKPP: TLabel
        Left = 307
        Top = 128
        Width = 32
        Height = 17
        Caption = #1050#1055#1055
      end
      object lINN: TLabel
        Left = 8
        Top = 128
        Width = 33
        Height = 17
        Caption = #1048#1053#1053
      end
      object lFace: TLabel
        Left = 8
        Top = 56
        Width = 42
        Height = 17
        Caption = #1042' '#1083#1080#1094#1077
      end
      object lEmail: TLabel
        Left = 232
        Top = 224
        Width = 38
        Height = 17
        Caption = 'E-mail'
      end
      object lCorp: TLabel
        Left = 8
        Top = 176
        Width = 67
        Height = 17
        Caption = #1050#1086#1088#1088'. '#1089#1095#1077#1090
      end
      object lCheck: TLabel
        Left = 8
        Top = 152
        Width = 20
        Height = 17
        Caption = #1056'/'#1089
      end
      object lBIK: TLabel
        Left = 307
        Top = 176
        Width = 30
        Height = 17
        Caption = #1041#1048#1050
      end
      object lBase: TLabel
        Left = 8
        Top = 80
        Width = 178
        Height = 17
        Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
      end
      object lAbbrev: TLabel
        Left = 8
        Top = 32
        Width = 143
        Height = 17
        Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
      end
      object eAbbrev: TEdit
        Left = 184
        Top = 24
        Width = 385
        Height = 25
        TabOrder = 0
      end
      object eUrAdres: TEdit
        Left = 80
        Top = 96
        Width = 489
        Height = 25
        TabOrder = 1
      end
      object eTelefonUr: TEdit
        Left = 80
        Top = 216
        Width = 145
        Height = 25
        TabOrder = 2
      end
      object eNamePred: TEdit
        Left = 184
        Top = 0
        Width = 385
        Height = 25
        TabOrder = 3
      end
      object eKPP: TEdit
        Left = 344
        Top = 120
        Width = 153
        Height = 25
        TabOrder = 4
      end
      object eINN: TEdit
        Left = 80
        Top = 120
        Width = 225
        Height = 25
        TabOrder = 5
      end
      object eNameBank: TEdit
        Left = 152
        Top = 192
        Width = 345
        Height = 25
        TabOrder = 6
      end
      object eFace: TEdit
        Left = 184
        Top = 48
        Width = 385
        Height = 25
        TabOrder = 7
      end
      object eEmail: TEdit
        Left = 280
        Top = 216
        Width = 217
        Height = 25
        TabOrder = 8
      end
      object eCorp: TEdit
        Left = 80
        Top = 168
        Width = 225
        Height = 25
        TabOrder = 9
      end
      object eCheck: TEdit
        Left = 80
        Top = 144
        Width = 225
        Height = 25
        TabOrder = 10
      end
      object eBIK: TEdit
        Left = 344
        Top = 168
        Width = 153
        Height = 25
        TabOrder = 11
      end
      object eBase: TEdit
        Left = 192
        Top = 72
        Width = 137
        Height = 25
        TabOrder = 12
      end
    end
    object tsDataFiz: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object lSeria: TLabel
        Left = 16
        Top = 64
        Width = 38
        Height = 17
        Caption = #1057#1077#1088#1080#1103
      end
      object lNumer: TLabel
        Left = 188
        Top = 64
        Width = 42
        Height = 17
        Caption = #1053#1086#1084#1077#1088
      end
      object lIss: TLabel
        Left = 16
        Top = 88
        Width = 42
        Height = 17
        Caption = #1042#1099#1076#1072#1085
      end
      object lFIO: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 17
        Caption = #1060#1048#1054
      end
      object lAdres: TLabel
        Left = 16
        Top = 112
        Width = 100
        Height = 17
        Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080
      end
      object lTelefonFiz: TLabel
        Left = 16
        Top = 136
        Width = 52
        Height = 17
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object lDoc: TLabel
        Left = 16
        Top = 40
        Width = 62
        Height = 17
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090
      end
      object lDateIss: TLabel
        Left = 352
        Top = 64
        Width = 42
        Height = 17
        Caption = #1042#1099#1076#1072#1085
      end
      object eFIO: TEdit
        Left = 88
        Top = 8
        Width = 417
        Height = 25
        TabOrder = 0
      end
      object eDoc: TEdit
        Left = 88
        Top = 32
        Width = 417
        Height = 25
        TabOrder = 1
      end
      object eSeria: TEdit
        Left = 88
        Top = 56
        Width = 97
        Height = 25
        TabOrder = 2
      end
      object eNumer: TEdit
        Left = 232
        Top = 56
        Width = 113
        Height = 25
        TabOrder = 3
      end
      object eIss: TEdit
        Left = 88
        Top = 80
        Width = 417
        Height = 25
        TabOrder = 4
      end
      object eAdres: TEdit
        Left = 120
        Top = 104
        Width = 385
        Height = 25
        TabOrder = 5
      end
      object eTelefonFiz: TEdit
        Left = 88
        Top = 128
        Width = 145
        Height = 25
        TabOrder = 6
      end
      object deDateIss: TDateEdit
        Left = 400
        Top = 56
        Width = 105
        Height = 25
        NumGlyphs = 2
        TabOrder = 7
      end
    end
    object tsSpecif: TTabSheet
      Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      ImageIndex = 1
      object lItog: TLabel
        Left = 24
        Top = 272
        Width = 56
        Height = 17
        Caption = #1048#1058#1054#1043#1054
      end
      object lNDS: TLabel
        Left = 304
        Top = 272
        Width = 75
        Height = 17
        Caption = #1042' '#1090'.'#1095'. '#1053#1044#1057
      end
      object sgSpecif: TStringGrid
        Left = 0
        Top = 0
        Width = 578
        Height = 249
        Align = alTop
        ColCount = 6
        FixedCols = 0
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = sgSpecifKeyDown
        ColWidths = (
          36
          223
          64
          64
          89
          90)
      end
      object eItog: TEdit
        Left = 88
        Top = 264
        Width = 121
        Height = 25
        TabOrder = 1
      end
      object eNDS: TEdit
        Left = 392
        Top = 264
        Width = 121
        Height = 25
        TabOrder = 2
      end
    end
  end
  object pButton: TPanel
    Left = 0
    Top = 332
    Width = 586
    Height = 49
    Align = alBottom
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bbForm: TBitBtn
      Left = 40
      Top = 8
      Width = 225
      Height = 33
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      TabOrder = 0
      OnClick = bbFormClick
    end
    object bbClear: TBitBtn
      Left = 320
      Top = 8
      Width = 225
      Height = 33
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
      TabOrder = 1
      OnClick = bbClearClick
    end
  end
end
