inherited frm_historico: Tfrm_historico
  ExplicitLeft = 8
  PixelsPerInch = 96
  TextHeight = 25
  inherited Panel1: TPanel
    ExplicitWidth = 124
    inherited JvLabel1: TJvLabel
      Width = 267
      Caption = 'Cadastro de Hist'#243'ricos'
      ExplicitWidth = 267
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 38
    Width = 1324
    Height = 163
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = 'Panel2'
    Ctl3D = True
    UseDockManager = False
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
    TabOrder = 1
    ExplicitWidth = 124
    object Label1: TLabel
      Left = 30
      Top = 8
      Width = 61
      Height = 25
      Caption = 'Codigo'
    end
    object Label3: TLabel
      Left = 30
      Top = 88
      Width = 82
      Height = 25
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 463
      Top = 88
      Width = 143
      Height = 25
      Caption = 'Tipo de Hist'#243'rico'
    end
    object edt_codigo: TDBEdit
      Left = 30
      Top = 35
      Width = 79
      Height = 33
      DataField = 'Codigo'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 0
    end
    object edt_descricao: TDBEdit
      Left = 30
      Top = 115
      Width = 410
      Height = 33
      DataField = 'Descricao'
      DataSource = dts_principal
      TabOrder = 1
    end
    object edt_tipo: TJvDBComboBox
      Left = 463
      Top = 115
      Width = 157
      Height = 33
      DataField = 'Tipo'
      DataSource = dts_principal
      Items.Strings = (
        'Entrada'
        'Saida')
      TabOrder = 2
      Values.Strings = (
        'Entrada'
        'Saida')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object ckb_ativo: TDBCheckBox
      Left = 552
      Top = 14
      Width = 68
      Height = 15
      BiDiMode = bdRightToLeft
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dts_principal
      ParentBiDiMode = False
      TabOrder = 3
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object ckb_implementacao: TDBCheckBox
      Left = 284
      Top = 43
      Width = 336
      Height = 25
      BiDiMode = bdRightToLeft
      Caption = 'Historico de Implementa'#231#227'o de Saldo'
      DataField = 'Implementacao_Saldo'
      DataSource = dts_principal
      ParentBiDiMode = False
      TabOrder = 4
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
  end
  object cxg_dados: TcxGrid [2]
    Left = 0
    Top = 201
    Width = 1324
    Height = 544
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
        Width = 177
      end
      object cxg_dadosDBTableView1Column2: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao'
        Width = 778
      end
      object cxg_dadosDBTableView1Column3: TcxGridDBColumn
        Caption = 'Tipo de Hist'#243'rico'
        DataBinding.FieldName = 'Tipo'
        Width = 284
      end
      object cxg_dadosDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Ativo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '-1'
        Properties.DisplayUnchecked = '0'
        Properties.ValueChecked = '-1'
        Properties.ValueUnchecked = '0'
        Width = 83
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 65520
  end
  inherited GestureManager1: TGestureManager
    Left = 264
    Top = 24
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
    Left = 656
    Top = 32
  end
  inherited dts_principal: TDataSource
    Left = 144
    Top = 24
  end
end
