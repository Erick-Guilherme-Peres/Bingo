inherited frm_contas: Tfrm_contas
  ClientWidth = 1323
  ExplicitWidth = 1339
  ExplicitHeight = 784
  PixelsPerInch = 96
  TextHeight = 25
  inherited Panel1: TPanel
    Width = 1323
    ExplicitWidth = 1322
    inherited img_proximo: TImage
      Left = 1023
      ExplicitLeft = 1022
    end
    inherited img_incluir: TImage
      Left = 1083
      ExplicitLeft = 1082
    end
    inherited img_alterar: TImage
      Left = 1143
      ExplicitLeft = 1142
    end
    inherited img_excluir: TImage
      Left = 1203
      ExplicitLeft = 1202
    end
    inherited img_sair: TImage
      Left = 1263
      ExplicitLeft = 1262
    end
    inherited JvLabel1: TJvLabel
      Width = 233
      Caption = 'Cadastro de Contas'
      ExplicitWidth = 233
    end
    inherited img_anterior: TImage
      Left = 963
      ExplicitLeft = 962
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 38
    Width = 1323
    Height = 163
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
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
    ShowHint = False
    TabOrder = 1
    ExplicitWidth = 1322
    object Label1: TLabel
      Left = 30
      Top = 16
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
    object edt_codigo: TDBEdit
      Left = 30
      Top = 46
      Width = 79
      Height = 33
      DataField = 'Codigo'
      DataSource = dts_principal
      Enabled = False
      TabOrder = 0
    end
    object edt_descricao: TDBEdit
      Left = 30
      Top = 118
      Width = 521
      Height = 33
      DataField = 'Descricao'
      DataSource = dts_principal
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 485
      Top = 21
      Width = 66
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dts_principal
      ParentBiDiMode = False
      TabOrder = 2
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
  end
  object cxg_dados: TcxGrid [2]
    Left = 0
    Top = 201
    Width = 1323
    Height = 544
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 1322
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
        Width = 90
      end
      object cxg_dadosDBTableView1Column2: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao'
        Width = 442
      end
      object cxg_dadosDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Ativo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '-1'
        Properties.DisplayUnchecked = '0'
        Properties.ValueChecked = '-1'
        Properties.ValueUnchecked = '0'
        Width = 78
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 320
    Top = 240
  end
  inherited GestureManager1: TGestureManager
    Left = 72
    Top = 272
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
    Left = 480
    Top = 200
  end
  inherited dts_principal: TDataSource
    Left = 376
    Top = 168
  end
end
