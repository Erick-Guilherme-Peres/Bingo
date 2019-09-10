object frm_busca: Tfrm_busca
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'CONTROLE DE ENTRADA E SAIDA'
  ClientHeight = 364
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanInertia, igoParentPassthrough]
  PixelsPerInch = 96
  TextHeight = 25
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 696
    Height = 325
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button1: TButton
    Left = 593
    Top = 331
    Width = 90
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ModalResult = 1
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 484
    Top = 331
    Width = 101
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
    StyleElements = []
    OnClick = Button2Click
  end
  object dts_principal: TDataSource
    AutoEdit = False
    DataSet = tab_bprincipal
    Left = 280
    Top = 144
  end
  object tab_bprincipal: TFDQuery
    Connection = frm_principal.sql_conecta
    Left = 352
    Top = 144
  end
end
