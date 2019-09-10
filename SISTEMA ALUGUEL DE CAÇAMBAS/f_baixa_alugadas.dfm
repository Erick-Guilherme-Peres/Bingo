object frm_baixa_alugadas: Tfrm_baixa_alugadas
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
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1334
    Height = 45
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = 'pnl_principal'
    Ctl3D = False
    UseDockManager = False
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
    TabOrder = 0
    object img_sair: TImage
      Left = 1274
      Top = 0
      Width = 60
      Height = 45
      Hint = 'Sair'
      Align = alRight
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
        98000017709CBA513C000000097048597300000DD700000DD70142289B780000
        000774494D4507E1061E010B236E1B75050000001974455874536F6674776172
        65007777772E696E6B73636170652E6F72679BEE3C1A000001EF494441545847
        ED96BF4BC34014C7E32F4437C55570520445FF0007411757A1B4B9D4B5A3BA39
        8890491DD426AD14BB887307155C74F2C724221D04059B5C4584BA39AA2018DF
        C5D7F65A93B6C65C5CFA852FED5DEFBDF749DE5D52A99E74931C822D9F9C4D17
        62DD98BA3141D03BF84C3788FA27E385C41F220398BA31D9009000879E94C847
        C77453B9FB17808449E6ED1CD886C00036EEE53E883B2A160E142041C934C415
        F8C2450B05485FC73A3483AC43CC275F94B73080ADA7502FACBDE28B39D91B00
        250B3874553C47C6AB8B39D90380F29C7A243DEC28A996DA8AD33F241040DEDB
        A6E1413B814176DD20C40150726E59528B6E286B761217086100BC6A41F802C0
        9242F2944E954B579BE4832582B3BE8461B67C01B06F359557E1F179EC6468C7
        092441006511C36C096FC1F73E80BB034934438EE37449C200E0CA93A5D64002
        A7E24C22010EB47C748805BB1567AA0278E5BE57F8D70010749330663A616F4C
        E094A338802C6CD629D8A4996251DE5E00D8BB3C8243579501E4FD782E3CAC99
        CA4EB1286F6F000DBC8C2A5A40491E3E1DDB100C400D37019A001E00E46576AC
        70E8AA3A006FE015B0A69E4EB66388BFAA01709BA4CA282E13272700F630823F
        AB5DB844ACAA005EE0513C8B3F05A332807CB16946FA713A38E9E6DC083B2D19
        2BD486530D4892BE00698F1219D3C5A84F0000000049454E44AE426082}
      ShowHint = True
      OnClick = img_sairClick
      ExplicitLeft = 1263
      ExplicitHeight = 75
    end
    object JvLabel1: TJvLabel
      Left = 30
      Top = 4
      Width = 380
      Height = 33
      Caption = 'Aluguel de Ca'#231'ambas '#224' Receber'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -27
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
  end
  object cxg_dados: TcxGrid
    Left = 0
    Top = 45
    Width = 1334
    Height = 857
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 72
    ExplicitHeight = 830
    object cxg_dadosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dts_principal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Inserting = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxg_dadosDBTableView1Codigo: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo'
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 100
      end
      object cxg_dadosDBTableView1Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        MinWidth = 319
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 319
      end
      object cxg_dadosDBTableView1Endereco: TcxGridDBColumn
        DataBinding.FieldName = 'Endereco'
        MinWidth = 380
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 380
      end
      object cxg_dadosDBTableView1Telefone: TcxGridDBColumn
        DataBinding.FieldName = 'Telefone'
        MinWidth = 140
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 140
      end
      object cxg_dadosDBTableView1Celular: TcxGridDBColumn
        DataBinding.FieldName = 'Celular'
        MinWidth = 140
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 140
      end
      object cxg_dadosDBTableView1DataOrcamento: TcxGridDBColumn
        DataBinding.FieldName = 'DataOrcamento'
        MinWidth = 161
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
        Width = 161
      end
      object cxg_dadosDBTableView1Column1: TcxGridDBColumn
        Caption = 'A'#231#227'o'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actBaixar
            Default = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0002000000070000000B0000000C0000000C0000000C0000000C0000000D0000
              000D0000000D0000000D0000000C000000080000000200000000000000000000
              000619563DBE207151FF207050FF206F4FFF216D4EFF206C4DFF216B4CFF216A
              4BFF21694BFF21684AFF21674AFF174935C00000000800000000000000000000
              000925825FFF53D0A8FF45CB9FFF44CB9FFF44CB9EFF64D7B3FF82E1C5FF63D7
              B2FF43CA9DFF42CA9CFF48CCA0FF1E7754FF0000000C00000000000000000000
              0009278662FF5CD4AEFF48CDA1FF58D2ABFF70DBBBFF1C724FFF1C7350FF7CE0
              C1FF66D8B4FF4CCEA4FF4ECFA3FF207956FF0000000C00000000000000000000
              00082B8A66FF65D7B3FF4ACEA3FF3E9F7CFF2B8360FF176745FF1A6D4BFF348C
              6CFF69C5A7FF65D7B4FF53D1A7FF227C58FF0000000B00000000000000000000
              00072C8D6AFF6EDBBAFF4ECFA5FF227957FF43A886FF63C4A5FF207756FF2078
              55FF257D59FF61D6B1FF58D3ACFF237E5BFF0000000A00000000000000000000
              000730916DFF77DEC0FF51D1A8FF60D4B0FF4CA887FF27805CFF227A57FF1F74
              51FF2B8362FF4DCFA5FF5ED6B0FF26805EFF0000000900000000000000000000
              0006329471FF80E1C5FF54D2AAFF3F9F7DFF227A58FF247F5BFF287F5BFF48A9
              87FF77DBBEFF65D8B4FF65D8B4FF288361FF0000000900000000000000000000
              0005349875FF8BE6CCFF5ED9B4FF359471FF1F7351FF257E5AFF7AD0B6FF54AB
              8EFF409978FF67DAB9FF6DDBBBFF2A8663FF0000000800000000000000000000
              0005389D79FF98EBD6FF63DCB9FF5CD0ADFF318C6AFF227956FF288460FF2980
              5EFF42AA87FF5FDAB6FF79E1C5FF2E8B68FF0000000700000000000000000000
              000440A380FFA1EDD9FF69DFBDFF68DFBDFF68DEBCFF1E6F4DFF1D6F4DFF66DD
              BBFF65DCBBFF65DDBAFF80E4C9FF36926EFF0000000700000000000000000000
              000445A884FFA6F0DEFFA6F0DEFFA6EFDDFFA6EFDDFFA5EFDCFFA4EFDCFFA4EF
              DCFFA3EFDCFFA3EEDCFFA2EEDBFF3A9772FF0000000600000000000000000000
              000348AC86FF389976FF379976FF379875FF379774FF369673FF369673FF3595
              72FF349471FF339370FF32936FFF3D9A76FF0000000500000000000000000000
              000252B38FFFAFD3C5FFFEFEFEFFFDFCFCFFFCFAF9FFFAF8F6FFF8F5F3FFF7F2
              F0FFF6F0ECFFF4EDE9FFF2ECE7FF47A27FFF0000000400000000000000000000
              00013F876DBF55B693FF55B693FF56B592FF55B592FF55B592FF55B492FF55B4
              91FF55B491FF54B490FF54B390FF3E856BC00000000300000000000000000000
              0000000000010000000200000002000000020000000200000003000000030000
              0003000000030000000300000003000000020000000100000000}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsAutoWidth
        Options.ShowEditButtons = isebAlways
        Width = 78
      end
    end
    object cxg_dadosLevel1: TcxGridLevel
      GridView = cxg_dadosDBTableView1
    end
  end
  object tab_principal: TFDQuery
    Connection = frm_principal.sql_conecta
    Left = 288
    Top = 152
  end
  object dts_principal: TDataSource
    DataSet = tab_principal
    Left = 216
    Top = 152
  end
  object ActionList1: TActionList
    Left = 656
    Top = 448
    object actBaixar: TAction
      Caption = 'Baixar'
      OnExecute = actBaixarExecute
    end
  end
end
