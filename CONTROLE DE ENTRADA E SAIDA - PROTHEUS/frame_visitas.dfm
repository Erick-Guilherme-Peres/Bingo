object frm_visitas: Tfrm_visitas
  Left = 0
  Top = 0
  Width = 1076
  Height = 521
  Align = alClient
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 50
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 38
      Top = 7
      Width = 77
      Height = 33
      Caption = 'Visitas'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
    object cxGroupBox2: TcxGroupBox
      Left = 1015
      Top = 1
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Alignment = alBottomCenter
      Caption = 'Sair'
      PanelStyle.Active = True
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      OnClick = img_sairClick
      Height = 48
      Width = 60
      object img_sair: TImage
        Left = 0
        Top = 0
        Width = 60
        Height = 32
        Hint = 'Sair'
        Align = alCustom
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
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 1076
    Height = 471
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    TabWidth = 500
    object TabSheet1: TTabSheet
      Caption = 'VISITAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnShow = TabSheet1Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1068
        Height = 305
        Align = alTop
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1066
          Height = 303
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LockedStateImageOptions.Text = ','
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FindPanel.DisplayMode = fpdmAlways
            FindPanel.InfoText = 'Entre com texto para pesquisa...'
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = dts_principal
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.GroupByBox = False
            object cxgFun: TcxGridDBColumn
              Caption = 'Fun'#231#227'o'
              DataBinding.FieldName = 'Funcao'
              Visible = False
              VisibleForCustomization = False
              Width = 168
            end
            object cxGrid1DBTableView1Column10: TcxGridDBColumn
              Caption = 'Cod. Visita'
              DataBinding.FieldName = 'R_E_C_N_O_'
              Width = 81
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'Visitante'
              Width = 300
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = 'Empresa Visitante'
              DataBinding.FieldName = 'PY_NOMEMP'
              Width = 400
            end
            object cxGrid1DBTableView1Column9: TcxGridDBColumn
              Caption = 'Contato Visita'
              DataBinding.FieldName = 'RESPONSAVEL'
              Width = 300
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = 'Departamento Visita'
              DataBinding.FieldName = 'LocalVisita'
              Width = 300
            end
            object cxgEntrada: TcxGridDBColumn
              Caption = 'Data Entrada'
              DataBinding.FieldName = 'Entrada'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 110
            end
            object cxghEntrada: TcxGridDBColumn
              Caption = 'Hora Entrada'
              DataBinding.FieldName = 'HEntrada'
              Width = 100
            end
            object cxgTipo: TcxGridDBColumn
              DataBinding.FieldName = 'PY_TIPOVIS'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 305
        Width = 1068
        Height = 305
        Align = alTop
        TabOrder = 1
        object cxGrid3: TcxGrid
          Left = 1
          Top = 1
          Width = 1066
          Height = 303
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LockedStateImageOptions.Text = ','
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FindPanel.DisplayMode = fpdmAlways
            FindPanel.InfoText = 'Entre com texto para pesquisa...'
            OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
            DataController.DataSource = dts_principals
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.GroupByBox = False
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Fun'#231#227'o'
              DataBinding.FieldName = 'Funcao'
              Visible = False
              VisibleForCustomization = False
              Width = 168
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Cod. Visita'
              DataBinding.FieldName = 'R_E_C_N_O_'
              Width = 81
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'Visitante'
              Width = 300
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Empresa Visitante'
              DataBinding.FieldName = 'PY_NOMEMP'
              Width = 400
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Contato Visita'
              DataBinding.FieldName = 'RESPONSAVEL'
              Width = 300
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Departamento Visita'
              DataBinding.FieldName = 'LocalVisita'
              Width = 300
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = 'Data Sa'#237'da'
              DataBinding.FieldName = 'Saida'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 110
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Hora Sa'#237'da'
              DataBinding.FieldName = 'HSaida'
              Width = 100
            end
            object cxgTipoS: TcxGridDBColumn
              DataBinding.FieldName = 'PY_TIPOVIS'
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'VISITAS FINALIZADAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object cxGrid2: TcxGrid
        Left = 0
        Top = 52
        Width = 1068
        Height = 382
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LockedStateImageOptions.Text = ','
        ExplicitTop = 0
        ExplicitWidth = 443
        ExplicitHeight = 186
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = 'Entre com texto para pesquisar..'
          DataController.DataSource = dts_finalizadas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Fun'#231#227'o'
            DataBinding.FieldName = 'Funcao'
            Visible = False
            VisibleForCustomization = False
            Width = 168
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Cod. Visita'
            DataBinding.FieldName = 'R_E_C_N_O_'
            Width = 83
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Visitante'
            Width = 300
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Empresa Visitante'
            DataBinding.FieldName = 'PY_NOMEMP'
            Width = 400
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Contato Visita'
            DataBinding.FieldName = 'RESPONSAVEL'
            Width = 300
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Departamento Visita'
            DataBinding.FieldName = 'LocalVisita'
            Width = 300
          end
          object cxgEntradaR: TcxGridDBColumn
            Caption = 'Data Entrada'
            DataBinding.FieldName = 'Entrada'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '!99/99/0000;0;_'
            Width = 110
          end
          object cxghEntradaR: TcxGridDBColumn
            Caption = 'Hora Entrada'
            DataBinding.FieldName = 'HEntrada'
            Width = 100
          end
          object cxgSaidaR: TcxGridDBColumn
            Caption = 'Data Sa'#237'da'
            DataBinding.FieldName = 'Saida'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '!99/99/0000;0;_'
            Width = 110
          end
          object cxghSaidaR: TcxGridDBColumn
            Caption = 'Hora Sa'#237'da'
            DataBinding.FieldName = 'HSaida'
            Width = 100
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1068
        Height = 52
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 15
          Width = 64
          Height = 19
          Caption = 'Data De?'
        end
        object Label2: TLabel
          Left = 275
          Top = 15
          Width = 69
          Height = 19
          Caption = 'Data At'#233'?'
        end
        object edtDe: TDateEdit
          Left = 91
          Top = 8
          Width = 150
          Height = 33
          NumGlyphs = 2
          TabOrder = 0
        end
        object edtAte: TDateEdit
          Left = 355
          Top = 8
          Width = 150
          Height = 33
          NumGlyphs = 2
          TabOrder = 1
        end
        object cgbIncluir: TcxGroupBox
          Left = 947
          Top = 1
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Alignment = alBottomCenter
          Caption = 'Confirmar'
          PanelStyle.Active = True
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 50
          Width = 60
          object img_incluir: TImage
            Left = 0
            Top = 0
            Width = 60
            Height = 32
            Hint = 'Incluir'
            Align = alCustom
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
              98000017709CBA513C000000097048597300000DD700000DD70142289B780000
              000774494D4507E1061E0112206C128DA70000001974455874536F6674776172
              65007777772E696E6B73636170652E6F72679BEE3C1A0000012A494441545847
              ED96416EC2301045B3A87A132E400B6B4E404B2952ED70186E401CEEC0861517
              80537415BB4700B6B40B1897992A84000E9918A9CA93FE22F6D8EF2F2225414D
              8D2F469F834765C42C4A865D5CF28795C75ACC95963BC8D66B898C9CE2A7C419
              B99F1257E487C03B81E3BCB8C8EDBE9DC3237C94928F969D076564031F0BC320
              1733185A8D936113979DE192D3F00AF284DB57E196539C4A94925B221D4EF30E
              61D613F3F18CA32794965BE2247C87C19FECC154D691095B38FE078B9C888CE8
              C3814B2536E912AC72C2A544FC25DB95C889D8C837B8E03B7B612A1BC822B376
              949BE5844389B3292D27940E7B7061A1126C72A24809763931D6E21504174B54
              262754225F40945BA272399157C29B9CB0BF4F54C2BB9CF82D011FAEBBC86BFE
              2941B007609AFD548C123A940000000049454E44AE426082}
            ShowHint = True
          end
        end
        object cgbExcluir: TcxGroupBox
          Left = 1007
          Top = 1
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Alignment = alBottomCenter
          Caption = 'Limpar'
          PanelStyle.Active = True
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 50
          Width = 60
          object img_excluir: TImage
            Left = 0
            Top = 0
            Width = 60
            Height = 32
            Hint = 'Excluir'
            Align = alCustom
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
              98000017709CBA513C000000097048597300000DD700000DD70142289B780000
              000774494D4507E1061E01112440521A7D0000001974455874536F6674776172
              65007777772E696E6B73636170652E6F72679BEE3C1A00000102494441545847
              C5974D0E823014847B058EE33DDC588FE30154161EC22B810BBD060BED983E43
              4CA13F6FC89B641268CB7C13CA82BADBD37797D19FFAD1BFFA87BF9F87C3CE6D
              246483011698603B5C5C47FF9E79EA87E33E3E431332913D6781EDD0663E184D
              2D9182C3603BBC92FF89684A8925380CF6775FC24D7241B0AAC41A3C78FA7D6F
              B9852D25AA3399259AB31825D4199A00355CD41244838B6A02E9705149F06670
              510E109D9C53C345991229F3E0A28A127CB8A8A0C47670C8B440015C6CBAFF62
              5E890C1CE38B73EA123938E64BD6C4B83AD504D34BB404D24A6882D425D40141
              CD190CB8A83A8B091715679AFF969B1F4CCC8F66E68753DBE3B9EF3ECF9612BC
              73C28E9D0000000049454E44AE426082}
            ShowHint = True
          end
        end
      end
    end
  end
  object dts_principal: TDataSource
    DataSet = tab_principal
    Left = 168
    Top = 239
  end
  object tab_principal: TFDQuery
    Connection = frm_principal.sql_conecta
    SQL.Strings = (
      'SELECT * FROM SA1010')
    Left = 240
    Top = 239
  end
  object dts_finalizadas: TDataSource
    DataSet = tab_finalizadas
    Left = 168
    Top = 295
  end
  object tab_finalizadas: TFDQuery
    Connection = frm_principal.sql_conecta
    SQL.Strings = (
      'SELECT * FROM SA1010')
    Left = 240
    Top = 295
  end
  object dts_principals: TDataSource
    DataSet = tab_principals
    Left = 168
    Top = 191
  end
  object tab_principals: TFDQuery
    Connection = frm_principal.sql_conecta
    SQL.Strings = (
      'SELECT * FROM SA1010')
    Left = 240
    Top = 191
  end
end
