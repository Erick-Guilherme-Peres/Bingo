inherited frm_lancamento: Tfrm_lancamento
  ClientWidth = 1329
  ExplicitLeft = 8
  ExplicitWidth = 1345
  PixelsPerInch = 96
  TextHeight = 25
  inherited Panel1: TPanel
    Width = 1329
    ExplicitWidth = 124
    inherited img_proximo: TImage
      Left = 1029
    end
    inherited img_incluir: TImage
      Left = 1089
    end
    inherited img_alterar: TImage
      Left = 1149
    end
    inherited img_excluir: TImage
      Left = 1209
    end
    inherited img_sair: TImage
      Left = 1269
    end
    inherited JvLabel1: TJvLabel
      Width = 275
      Caption = 'Lan'#231'amento Financeiro'
      ExplicitWidth = 275
    end
    inherited img_anterior: TImage
      Left = 969
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 38
    Width = 1329
    Height = 275
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 1
    ExplicitWidth = 124
    object Label1: TLabel
      Left = 8
      Top = 157
      Width = 107
      Height = 25
      Caption = 'Observa'#231#245'es'
    end
    object Label2: TLabel
      Left = 8
      Top = 84
      Width = 153
      Height = 25
      Caption = 'Valor Lan'#231'amento'
    end
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 147
      Height = 25
      Caption = 'Data Lan'#231'amento'
    end
    object Label4: TLabel
      Left = 326
      Top = 13
      Width = 50
      Height = 25
      Caption = 'Conta'
    end
    object Label5: TLabel
      Left = 173
      Top = 13
      Width = 138
      Height = 25
      Caption = 'Tipo Movimento'
    end
    object Label6: TLabel
      Left = 179
      Top = 84
      Width = 75
      Height = 25
      Caption = 'Historico'
    end
    object edt_conta: TJvDBLookupCombo
      Left = 326
      Top = 42
      Width = 428
      Height = 33
      DataField = 'Codigo_Conta'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 0
      OnEnter = edt_contaEnter
    end
    object edt_historico: TJvDBLookupCombo
      Left = 179
      Top = 114
      Width = 575
      Height = 33
      DataField = 'Codigo_Historico'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 1
      OnEnter = edt_historicoEnter
    end
    object edt_observacoes: TDBMemo
      Left = 8
      Top = 186
      Width = 746
      Height = 74
      DataField = 'Observacoes'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 2
    end
    object edt_data: TDBDateEdit
      Left = 8
      Top = 42
      Width = 153
      Height = 33
      Margins.Left = 6
      Margins.Top = 1
      DataField = 'Data_Lancamento'
      DataSource = dts_principal
      Enabled = False
      NumGlyphs = 2
      TabOrder = 3
    end
    object edt_valor: TRxDBCalcEdit
      Left = 8
      Top = 114
      Width = 157
      Height = 33
      Margins.Left = 6
      Margins.Top = 1
      DecimalPlaceRound = True
      DataField = 'Valor'
      DataSource = dts_principal
      DisplayFormat = ',0.00'
      Enabled = False
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 4
    end
    object edt_tipo: TJvDBComboBox
      Left = 173
      Top = 42
      Width = 140
      Height = 33
      DataField = 'Tipo'
      DataSource = dts_principal
      Enabled = False
      Items.Strings = (
        'Entrada'
        'Saida')
      TabOrder = 5
      Values.Strings = (
        'Entrada'
        'Saida')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object cxg_dados: TcxGrid [2]
    Left = 0
    Top = 313
    Width = 1329
    Height = 432
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
        Width = 101
      end
      object cxg_dadosDBTableView1Column2: TcxGridDBColumn
        Caption = 'Data Lan'#231'amento'
        DataBinding.FieldName = 'Data_Lancamento'
        Width = 137
      end
      object cxg_dadosDBTableView1Column6: TcxGridDBColumn
        Caption = 'Tipo Movimento'
        DataBinding.FieldName = 'Tipo'
        Width = 133
      end
      object cxg_dadosDBTableView1Column5: TcxGridDBColumn
        Caption = 'Conta'
        DataBinding.FieldName = 'Codigo_Conta'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListSource = dts_conta
        Width = 411
      end
      object cxg_dadosDBTableView1Column3: TcxGridDBColumn
        Caption = 'Historico'
        DataBinding.FieldName = 'Codigo_Historico'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListSource = dts_historico
        Width = 369
      end
      object cxg_dadosDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 171
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 16
  end
  inherited GestureManager1: TGestureManager
    Left = 384
    Top = 16
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
    Left = 624
    Top = 16
  end
  inherited dts_principal: TDataSource
    OnDataChange = dts_principalDataChange
    Left = 560
    Top = 16
  end
  object tab_conta: TFDQuery
    Connection = frm_principal.sql_conecta
    Left = 360
    Top = 424
  end
  object dts_conta: TDataSource
    DataSet = tab_conta
    Left = 288
    Top = 424
  end
  object tab_historico: TFDQuery
    Connection = frm_principal.sql_conecta
    Left = 568
    Top = 424
  end
  object dts_historico: TDataSource
    DataSet = tab_historico
    Left = 496
    Top = 424
  end
end
