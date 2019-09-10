object frm_aluguel: Tfrm_aluguel
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '  ALUGUEL DE CA'#199'AMBAS - SISTEMA DE GERENCIAMENTO'
  ClientHeight = 902
  ClientWidth = 1334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poNone
  Scaled = False
  Touch.GestureManager = GestureManager1
  Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanInertia, igoParentPassthrough]
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1334
    Height = 875
    ParentCustomHint = False
    Align = alClient
    BiDiMode = bdLeftToRight
    Caption = 'Panel1'
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 401
      Align = alClient
      Caption = 'Ca'#231'ambas 3m'#179
      PanelStyle.CaptionIndent = 20
      TabOrder = 0
      Height = 473
      Width = 1332
      object scb_Cacambas: TScrollBox
        Left = 2
        Top = 30
        Width = 1328
        Height = 441
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Ca'#231'ambas 5m'#179
      PanelStyle.CaptionIndent = 20
      TabOrder = 1
      Height = 400
      Width = 1332
      object scbCacambas: TScrollBox
        Left = 2
        Top = 30
        Width = 1328
        Height = 368
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 875
    Width = 1334
    Height = 27
    ParentCustomHint = False
    Align = alBottom
    BiDiMode = bdLeftToRight
    Caption = 'Panel1'
    Color = clWhite
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 1
    StyleElements = []
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 235
      Height = 25
      Align = alLeft
      Caption = 'Ca'#231'amba n'#227'o DISPONIV'#201'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 16
    end
    object Label2: TLabel
      Left = 1027
      Top = 1
      Width = 306
      Height = 25
      Align = alRight
      Caption = '                      Ca'#231'amba DISPONIV'#201'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 1032
    end
    object Label3: TLabel
      Left = 474
      Top = 1
      Width = 553
      Height = 25
      Align = alClient
      Alignment = taCenter
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Fechar Painel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = []
      OnClick = Label3Click
      ExplicitWidth = 117
    end
    object Label4: TLabel
      Left = 236
      Top = 1
      Width = 238
      Height = 25
      Align = alLeft
      Caption = '       Pedido :                           '
    end
    object edt_Pedido: TEdit
      Left = 353
      Top = -1
      Width = 100
      Height = 33
      TabOrder = 0
      OnKeyPress = edt_PedidoKeyPress
    end
  end
  object ActionList1: TActionList
    Left = 344
    Top = 104
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object GestureManager1: TGestureManager
    Left = 336
    Top = 176
    GestureData = <
      item
        Control = Owner
        Collection = <
          item
            Action = Action1
            GestureID = sgiUp
          end>
      end>
  end
  object tab_principal: TFDQuery
    Connection = frm_principal.sql_conecta
    Left = 224
    Top = 176
  end
  object dts_principal: TDataSource
    DataSet = tab_principal
    Left = 152
    Top = 176
  end
  object cxHint: TBalloonHint
    Delay = 1000
    Left = 656
    Top = 448
  end
end
