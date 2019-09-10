inherited frm_cacambas: Tfrm_cacambas
  ClientHeight = 480
  ClientWidth = 850
  ExplicitWidth = 866
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 25
  object pnlTopo: TPanel [0]
    Left = 0
    Top = 38
    Width = 850
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
    TabOrder = 1
    object Label2: TLabel
      Left = 30
      Top = 86
      Width = 82
      Height = 25
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 30
      Top = 16
      Width = 61
      Height = 25
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 543
      Top = 86
      Width = 79
      Height = 25
      Caption = 'Tamanho'
    end
    object edt_descricao: TDBEdit
      Left = 30
      Top = 112
      Width = 496
      Height = 31
      DataField = 'Descricao'
      DataSource = dts_principal
      TabOrder = 0
    end
    object edt_codigo: TDBEdit
      Left = 30
      Top = 43
      Width = 91
      Height = 31
      DataField = 'codigo'
      DataSource = dts_principal
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 575
      Top = 27
      Width = 78
      Height = 15
      BiDiMode = bdRightToLeft
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dts_principal
      ParentBiDiMode = False
      TabOrder = 2
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object edt_tamanho: TDBEdit
      Left = 543
      Top = 112
      Width = 110
      Height = 31
      DataField = 'Dias'
      DataSource = dts_principal
      TabOrder = 3
    end
  end
  inherited Panel1: TPanel
    Width = 850
    ExplicitWidth = 850
    inherited img_proximo: TImage
      Left = 550
      ExplicitLeft = 490
    end
    inherited img_incluir: TImage
      Left = 610
      ExplicitLeft = 550
    end
    inherited img_alterar: TImage
      Left = 670
      ExplicitLeft = 610
    end
    inherited img_excluir: TImage
      Left = 730
      ExplicitLeft = 670
    end
    inherited img_sair: TImage
      Left = 790
      ExplicitLeft = 790
    end
    inherited JvLabel1: TJvLabel
      Width = 272
      Caption = 'Cadastro de Ca'#231'ambas'
      ExplicitWidth = 272
    end
    inherited img_anterior: TImage
      Left = 490
      ExplicitLeft = 458
      ExplicitTop = 0
    end
  end
  object cxg_dados: TcxGrid [2]
    Left = 0
    Top = 206
    Width = 850
    Height = 274
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      object cxg_dadosDBTableView1Column3: TcxGridDBColumn
        Caption = 'Tamanho'
        DataBinding.FieldName = 'Dias'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '!99999 m'#179';1;_'
        Width = 189
      end
      object cxg_dadosDBTableView1Column4: TcxGridDBColumn
        Caption = 'Ca'#231'amba Ativa'
        DataBinding.FieldName = 'Ativo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '-1'
        Properties.DisplayUnchecked = '0'
        Properties.ValueChecked = '-1'
        Properties.ValueUnchecked = '0'
        Width = 127
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 312
    Top = 64
  end
  inherited GestureManager1: TGestureManager
    Left = 392
    Top = 64
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
    Left = 256
    Top = 64
  end
  inherited dts_principal: TDataSource
    Left = 192
    Top = 64
  end
end
