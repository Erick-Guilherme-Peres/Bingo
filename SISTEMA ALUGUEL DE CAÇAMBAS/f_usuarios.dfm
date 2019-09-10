inherited frm_usuarios: Tfrm_usuarios
  ExplicitWidth = 1340
  ExplicitHeight = 784
  PixelsPerInch = 96
  TextHeight = 25
  inherited Panel1: TPanel
    inherited JvLabel1: TJvLabel
      Width = 104
      Caption = 'Usu'#225'rios'
      ExplicitWidth = 104
    end
  end
  object cxg_dados: TcxGrid [1]
    Left = 0
    Top = 206
    Width = 1324
    Height = 539
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 124
    object cxg_dadosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      DataController.DataSource = dts_principal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxg_dadosDBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 297
      end
      object cxg_dadosDBTableView1Column2: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'Usuario'
        Width = 1025
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  object pnlTopo: TPanel [2]
    Left = 0
    Top = 38
    Width = 1324
    Height = 168
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Ctl3D = False
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
    TabOrder = 2
    ExplicitWidth = 124
    object Label1: TLabel
      Left = 30
      Top = 8
      Width = 61
      Height = 25
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 411
      Top = 80
      Width = 52
      Height = 25
      Caption = 'Senha'
    end
    object Label3: TLabel
      Left = 30
      Top = 80
      Width = 65
      Height = 25
      Caption = 'Usu'#225'rio'
    end
    object edt_codigo: TDBEdit
      Left = 30
      Top = 35
      Width = 115
      Height = 31
      DataField = 'Codigo'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 0
    end
    object edt_senha: TEdit
      Left = 411
      Top = 108
      Width = 116
      Height = 31
      PasswordChar = '*'
      TabOrder = 1
    end
    object edt_usuario: TDBEdit
      Left = 30
      Top = 106
      Width = 368
      Height = 31
      DataField = 'Usuario'
      DataSource = dts_principal
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 144
    Top = 272
  end
  inherited GestureManager1: TGestureManager
    Left = 64
    Top = 288
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
  inherited tab_principal: TFDQuery
    Left = 216
    Top = 304
  end
  inherited dts_principal: TDataSource
    Left = 104
    Top = 288
  end
end
