object frm_cadastro: Tfrm_cadastro
  Left = 0
  Top = 0
  Width = 451
  Height = 305
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 50
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
    object JvLabel1: TJvLabel
      Left = 30
      Top = 12
      Width = 265
      Height = 33
      Caption = 'Cadastro de Visitantes'
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
      Left = 391
      Top = 0
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
      Height = 50
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
    object cgbIncluir: TcxGroupBox
      Left = 211
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Alignment = alBottomCenter
      Caption = 'Incluir'
      PanelStyle.Active = True
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      OnClick = img_incluirClick
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
        OnClick = img_incluirClick
      end
    end
    object cgbAlterar: TcxGroupBox
      Left = 271
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Alignment = alBottomCenter
      Caption = 'Alterar'
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
      OnClick = img_alterarClick
      Height = 50
      Width = 60
      object img_alterar: TImage
        Left = 0
        Top = 0
        Width = 60
        Height = 32
        Hint = 'Alterar'
        Align = alCustom
        Center = True
        ParentShowHint = False
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
          206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
          98000017709CBA513C000000097048597300000DD700000DD70142289B780000
          000774494D4507E1061E01110E9BE9D3AB0000001974455874536F6674776172
          65007777772E696E6B73636170652E6F72679BEE3C1A0000038E494441545847
          B5576B48145114B6E8416F82222A282A2222A85FBD2924220C8AFAB3E8BDA312
          5246D0FBF12B88A5901E86BB339B9115153DA9202810FAD78BACA03748BA7766
          490C05132C211F69D97766CEAEE3B8698DE3071F3B73F79CF3DDB9F7DC7BCFCD
          0812462277916ECA72B009AC8D9AF258F187BC31FCF7E022A2C4728836835D3D
          68C907E1AEF050361B1C7475650C81D0BB5EE2298A2C360D1E865A3F52377356
          9454E74FD7957C95AE0386298BD83C78E0CB2F42A4535762BFDD19252F793B10
          35B5036C1E2C0C4BEEE821A6E4F592DAD02824DF4EBC77707B4BE473EE547609
          0E31535B89E03F5924450CF71BDDCA9F118DCBD5786FC0FCEF6297E010ABCA99
          A69B5ABD57DCC58688CACD3C5D2D26917DA04B315C191A0181171EC174EC882A
          B90FD3918FE776E44A0987181810EC824BE45FF8CBFEB5B4520EE11F8629B67B
          82A763A7A1C4464CD16D575B7599159AC061FC81D63A02B5BB82A6253A7928FC
          28731886FC09B73547E2D9F3398C3F384927EB92227DF016D96325C4F8FD3796
          E6263B885F50D22160854B243D95785F5657381AB65BBADB6498C3F8070295A5
          02FE9D8DB1AABC59514B5B8CE7366AC354DCA73382C3F8030215B2405FECC48E
          B8369A1053F05C6BB729F9C950DA780EE30F7CBCF69B74C97D1E9DB8C36DDFA3
          89DC797610BFA0BD1B81FA4F3A256FB04BB2032D98860DDCE40FCE4EA73DEF25
          D69B6FE9E06137BB2618F0B01330A4E7D28879F9F54C42CE6497E000F16D69C4
          BCEC8C99620DBB04070CDF3204EF7FA7B3B4BDEC122C10FCA857AC172DED1A9B
          078B683C6769D9EBC2E1F8BA0208D91B89975468B8932E5020F843883CA3CDC4
          48C825787636946E365095C3E6C103028D8E90F8421D707635F194C53BA8BA61
          D3E01189CBD92C94641B1D28F694E0540377B3E9E0004B2FDBD3019B28A57436
          E91774F3A17D012B691D15A1E0E1D2CAD058FEBB6F40ACD823DE0EF1CB254A2C
          609314CED6C889B45CA9CEC3C814E996B80BFB8F60ABCBDF26EE89ABD82D2D52
          27258C1FB35393AEB4E3F63960C9B95448A0ED208ED5F39C0F28B17B8A804D58
          9A2FF17BD5B0C411F825B8FD1B554527AB0AC6219F16464CB1D9BEB838854A39
          9D96F86DC5E8DFA4293805C73DC921E3D2CB29241DD2B2AC4427EEA1CA3D414B
          95EE04860A4DB6BFC005D8D16824FD7EB89E93A4B8354EB926AE205E885DBB61
          0FB35D7C8A2C4AD0FFB9D922302EA85A3DBEB482BECE9E2625B652BD60A8EC39
          94D86CCAC8C8F803C38F40B5ACAF901F0000000049454E44AE426082}
        ShowHint = True
        OnClick = img_alterarClick
      end
    end
    object cgbExcluir: TcxGroupBox
      Left = 331
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Alignment = alBottomCenter
      Caption = 'Excluir'
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
      OnClick = img_excluirClick
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
        OnClick = img_excluirClick
      end
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 50
    Width = 451
    Height = 213
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 38
    object Panel2: TPanel
      Left = 0
      Top = 188
      Width = 451
      Height = 25
      Align = alBottom
      Caption = 'Mais Detalhes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Panel2Click
    end
    object pgcVisitantes: TPageControl
      Left = 0
      Top = 0
      Width = 451
      Height = 188
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 1
      TabWidth = 500
      StyleElements = []
    end
    object scbDados: TScrollBox
      Left = 0
      Top = 0
      Width = 451
      Height = 188
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 2
      StyleElements = []
      object Label1: TLabel
        Left = 20
        Top = 15
        Width = 54
        Height = 18
        Caption = 'Visitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label2: TLabel
        Left = 157
        Top = 15
        Width = 39
        Height = 18
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label3: TLabel
        Left = 518
        Top = 69
        Width = 25
        Height = 18
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label4: TLabel
        Left = 518
        Top = 125
        Width = 22
        Height = 18
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label5: TLabel
        Left = 250
        Top = 181
        Width = 84
        Height = 18
        Caption = 'Org. Emissor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label6: TLabel
        Left = 20
        Top = 181
        Width = 19
        Height = 18
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label7: TLabel
        Left = 268
        Top = 69
        Width = 87
        Height = 18
        Caption = 'Sobrenome 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label8: TLabel
        Left = 20
        Top = 69
        Width = 87
        Height = 18
        Caption = 'Sobrenome 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label9: TLabel
        Left = 596
        Top = 181
        Width = 45
        Height = 18
        Caption = 'UF C.P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label10: TLabel
        Left = 342
        Top = 181
        Width = 125
        Height = 18
        Caption = 'Carteira Profissional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label11: TLabel
        Left = 268
        Top = 125
        Width = 87
        Height = 18
        Caption = 'Sobrenome 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label12: TLabel
        Left = 20
        Top = 125
        Width = 87
        Height = 18
        Caption = 'Sobrenome 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label13: TLabel
        Left = 499
        Top = 181
        Width = 58
        Height = 18
        Caption = 'Serie C.P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label15: TLabel
        Left = 170
        Top = 238
        Width = 88
        Height = 18
        Caption = 'Titulo Eleitoral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label16: TLabel
        Left = 289
        Top = 238
        Width = 77
        Height = 18
        Caption = 'Zona/Se'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label17: TLabel
        Left = 411
        Top = 238
        Width = 117
        Height = 18
        Caption = 'Outro Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label18: TLabel
        Left = 545
        Top = 238
        Width = 184
        Height = 18
        Caption = 'Descri'#231#227'o Outro Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Reservista: TLabel
        Left = 20
        Top = 238
        Width = 67
        Height = 18
        Caption = 'Reservista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label19: TLabel
        Left = 20
        Top = 293
        Width = 57
        Height = 18
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label20: TLabel
        Left = 172
        Top = 293
        Width = 24
        Height = 18
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label21: TLabel
        Left = 326
        Top = 293
        Width = 38
        Height = 18
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label22: TLabel
        Left = 675
        Top = 293
        Width = 32
        Height = 18
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label23: TLabel
        Left = 429
        Top = 350
        Width = 113
        Height = 18
        Caption = 'Situa'#231#227'o Visitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label24: TLabel
        Left = 345
        Top = 350
        Width = 76
        Height = 18
        Caption = 'Defic. Fisico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label25: TLabel
        Left = 748
        Top = 350
        Width = 87
        Height = 18
        Caption = 'Nacionalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label26: TLabel
        Left = 20
        Top = 350
        Width = 76
        Height = 18
        Caption = 'Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label27: TLabel
        Left = 127
        Top = 350
        Width = 58
        Height = 18
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label28: TLabel
        Left = 235
        Top = 350
        Width = 78
        Height = 18
        Caption = 'Ultima Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label29: TLabel
        Left = 748
        Top = 406
        Width = 18
        Height = 18
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label30: TLabel
        Left = 602
        Top = 406
        Width = 57
        Height = 18
        Caption = 'Municipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label31: TLabel
        Left = 20
        Top = 406
        Width = 60
        Height = 18
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label32: TLabel
        Left = 447
        Top = 406
        Width = 37
        Height = 18
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label33: TLabel
        Left = 266
        Top = 406
        Width = 90
        Height = 18
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label14: TLabel
        Left = 682
        Top = 181
        Width = 68
        Height = 18
        Caption = 'Habilita'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        StyleElements = []
      end
      object Label34: TLabel
        Left = 667
        Top = 156
        Width = 165
        Height = 13
        Caption = 'Clique aqui p/ Adicionar Fotografia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        StyleElements = []
        OnClick = Label34Click
      end
      object edtVisitante: TDBEdit
        Left = 20
        Top = 36
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_VISITA'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleElements = []
      end
      object edtNome: TDBEdit
        Left = 156
        Top = 36
        Width = 504
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_NOME'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        StyleElements = []
      end
      object edtSob1: TDBEdit
        Left = 20
        Top = 90
        Width = 227
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_POSNOM1'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        StyleElements = []
      end
      object edtSob2: TDBEdit
        Left = 268
        Top = 90
        Width = 227
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_POSNOM2'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        StyleElements = []
      end
      object edtSob4: TDBEdit
        Left = 268
        Top = 146
        Width = 227
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_POSNOM3'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        StyleElements = []
      end
      object edtSob3: TDBEdit
        Left = 20
        Top = 146
        Width = 227
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_POSNOM3'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        StyleElements = []
      end
      object edtOrgEmis: TDBEdit
        Left = 250
        Top = 202
        Width = 48
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_RGORG'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        StyleElements = []
      end
      object edtUfCP: TDBEdit
        Left = 596
        Top = 202
        Width = 43
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_UFCP'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        StyleElements = []
      end
      object edtEmail: TDBEdit
        Left = 326
        Top = 314
        Width = 331
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_EMAIL'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        StyleElements = []
      end
      object edtSexo: TJvDBComboBox
        Left = 675
        Top = 314
        Width = 160
        Height = 24
        DataField = 'PW_SEXO'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          '1 - MASCULINO'
          '2 - FEMININO')
        ParentFont = False
        TabOrder = 24
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object btnUfCP: TBitBtn
        Left = 643
        Top = 202
        Width = 29
        Height = 26
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
          3CFF292929AD0000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000010000000000000000000000000000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 12
        OnClick = btnUfCPClick
      end
      object btnOrg: TBitBtn
        Left = 305
        Top = 202
        Width = 29
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
          3CFF292929AD0000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000010000000000000000000000000000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 7
        OnClick = btnOrgClick
      end
      object edtSitVis: TJvDBComboBox
        Left = 429
        Top = 371
        Width = 307
        Height = 24
        DataField = 'PW_SITVIST'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          '1 - SITUA'#199#195'O NORMAL'
          '2 - COM RESTRI'#199#195'O')
        ParentFont = False
        TabOrder = 8
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object edtDefFis: TJvDBComboBox
        Left = 345
        Top = 371
        Width = 72
        Height = 24
        DataField = 'PW_DEFIFIS'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          '1 - SIM'
          '2 - N'#195'O')
        ParentFont = False
        TabOrder = 9
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object edtNacionalidade: TDBEdit
        Left = 748
        Top = 371
        Width = 55
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_NACIONA'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        StyleElements = []
      end
      object btnNasc: TBitBtn
        Left = 810
        Top = 371
        Width = 29
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
          3CFF292929AD0000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000010000000000000000000000000000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 13
        OnClick = btnNascClick
      end
      object edtEnd: TDBEdit
        Left = 20
        Top = 427
        Width = 237
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_ENDEREC'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        StyleElements = []
      end
      object edtUF: TDBEdit
        Left = 748
        Top = 427
        Width = 55
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_ESTADO'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        StyleElements = []
      end
      object btnUF: TBitBtn
        Left = 810
        Top = 426
        Width = 29
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
          3CFF292929AD0000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000010000000000000000000000000000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 16
        OnClick = btnUFClick
      end
      object edtComp: TDBEdit
        Left = 266
        Top = 427
        Width = 171
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PW_COMPLEM'
        DataSource = dts_principal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        StyleElements = []
      end
      object BitBtn1: TBitBtn
        Left = 310
        Top = 370
        Width = 25
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000070000
          000B0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000
          000D0000000D0000000D0000000D0000000D0000000C0000000882594DBEB47C
          6AFFB37C69FFB37B6AFFB37B69FFB37B68FFB37B68FFB37A69FFB37A68FFB37A
          68FFB37A68FFB27968FFB37967FFB27967FFB27967FF7F574ABFB67F6DFFF9F2
          EEFFF9F2EEFFF9F2EDFFF9F1EDFFC69A8CFFF9F2ECFFF9F1EDFFF9F1ECFFF9F1
          ECFFC5998BFFF8F0EBFFF8F0EBFFF8F0EBFFF8F0EBFFB37B69FFB78170FFF9F3
          EFFFF7EEE9FFF8EEE8FFF8EEE9FFC79C8DFFF7EEE9FFF8EEE8FFF8EEE9FFF7EE
          E8FFC69A8BFFF8EEE8FFF7EDE8FFF7EEE8FFF9F1ECFFB57D6BFFBA8472FFFAF4
          F0FFF8EFEAFFF8F0EAFFF8EFE9FFC99D8FFFF8EFEAFFF8EFEAFFF7EEEAFFF8EF
          EAFFC89D8EFFF7EFE9FFF8EFE9FFF7EFE9FFF9F1EDFFB7806EFFBB8776FFCCA2
          95FFCAA193FFCBA193FFCAA193FFCAA192FFCBA192FFCAA091FFCA9F91FFCA9F
          91FFC99F91FFC99F90FFC99E90FFC99E8FFFC99F90FFB88371FFBD8A79FFFBF6
          F2FFF9F1ECFFF9F1ECFFF9F0EDFFCCA295FFF8F1ECFFF9F1EBFFF9F0ECFFF9F1
          ECFFCAA194FFF9F0ECFFF9F1EBFFF8F0EBFFF9F3F0FFBA8574FFC08E7CFFFBF6
          F3FFF9F2EEFFFAF2EEFFF9F1EDFFCEA697FFF9F1EDFFF9F1EDFFF9F2EDFFF9F2
          ECFFCDA496FFF9F1EDFFF9F1ECFFF9F1EDFFFBF5F1FFBC8977FFC29180FFFCF8
          F5FFF9F2EFFFFAF3EFFFFAF2EFFFCFA89AFFFAF3EEFFF9F2EEFFF9F2EEFFFAF3
          EEFFCEA799FFF9F2EEFFF9F2EEFFF9F2EDFFFBF5F2FFBF8C7AFFC88E5AFFD9AD
          80FFCE9964FFCD9763FFCD9660FFCD9460FFCB935EFFCA925DFFC9905BFFC88F
          5AFFC88E59FFC88D57FFC88C56FFC78B55FFD19D6CFFBB7943FFC98F5AFFF1DA
          B5FFE7C28DFFE7C18DFFE7C18CFFCD9660FFE6BF89FFE5BE89FFE5BD87FFE5BC
          87FFC98E59FFE4BA84FFE4BA83FFE4B983FFECCDA3FFBC7A44FFCA905CFFF1DB
          B8FFE8C28EFFE7C28DFFE7C18CFFCD9662FFE6BF8BFFE6BE89FFE5BD88FFE5BC
          87FFC98F5AFFE4BB86FFE4BB84FFE4BA83FFEDCEA5FFBD7B45FFCA915EFFF2DD
          B9FFF1DAB9FFF1DAB7FFF1D9B6FFD8AC7EFFF0D8B3FFF0D6B2FFF0D6B1FFEFD5
          AFFFD5A576FFEFD2ACFFEED2A9FFEDD1A9FFEDD1A8FFBE7B45FF976C47BECA91
          5DFFCA8F5BFFC88E5AFFC78C58FFC68B57FFC58955FFC48852FFC48651FFC284
          50FFC2834EFFC0814CFFC0804BFFBF7F49FFBE7D48FF8D5D34BF000000010000
          0002000000020000000200000002000000020000000200000002000000020000
          0003000000030000000300000003000000030000000300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 18
        OnClick = BitBtn1Click
      end
      object btnCadastro: TBitBtn
        Left = 202
        Top = 370
        Width = 25
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000070000
          000B0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000
          000D0000000D0000000D0000000D0000000D0000000C0000000882594DBEB47C
          6AFFB37C69FFB37B6AFFB37B69FFB37B68FFB37B68FFB37A69FFB37A68FFB37A
          68FFB37A68FFB27968FFB37967FFB27967FFB27967FF7F574ABFB67F6DFFF9F2
          EEFFF9F2EEFFF9F2EDFFF9F1EDFFC69A8CFFF9F2ECFFF9F1EDFFF9F1ECFFF9F1
          ECFFC5998BFFF8F0EBFFF8F0EBFFF8F0EBFFF8F0EBFFB37B69FFB78170FFF9F3
          EFFFF7EEE9FFF8EEE8FFF8EEE9FFC79C8DFFF7EEE9FFF8EEE8FFF8EEE9FFF7EE
          E8FFC69A8BFFF8EEE8FFF7EDE8FFF7EEE8FFF9F1ECFFB57D6BFFBA8472FFFAF4
          F0FFF8EFEAFFF8F0EAFFF8EFE9FFC99D8FFFF8EFEAFFF8EFEAFFF7EEEAFFF8EF
          EAFFC89D8EFFF7EFE9FFF8EFE9FFF7EFE9FFF9F1EDFFB7806EFFBB8776FFCCA2
          95FFCAA193FFCBA193FFCAA193FFCAA192FFCBA192FFCAA091FFCA9F91FFCA9F
          91FFC99F91FFC99F90FFC99E90FFC99E8FFFC99F90FFB88371FFBD8A79FFFBF6
          F2FFF9F1ECFFF9F1ECFFF9F0EDFFCCA295FFF8F1ECFFF9F1EBFFF9F0ECFFF9F1
          ECFFCAA194FFF9F0ECFFF9F1EBFFF8F0EBFFF9F3F0FFBA8574FFC08E7CFFFBF6
          F3FFF9F2EEFFFAF2EEFFF9F1EDFFCEA697FFF9F1EDFFF9F1EDFFF9F2EDFFF9F2
          ECFFCDA496FFF9F1EDFFF9F1ECFFF9F1EDFFFBF5F1FFBC8977FFC29180FFFCF8
          F5FFF9F2EFFFFAF3EFFFFAF2EFFFCFA89AFFFAF3EEFFF9F2EEFFF9F2EEFFFAF3
          EEFFCEA799FFF9F2EEFFF9F2EEFFF9F2EDFFFBF5F2FFBF8C7AFFC88E5AFFD9AD
          80FFCE9964FFCD9763FFCD9660FFCD9460FFCB935EFFCA925DFFC9905BFFC88F
          5AFFC88E59FFC88D57FFC88C56FFC78B55FFD19D6CFFBB7943FFC98F5AFFF1DA
          B5FFE7C28DFFE7C18DFFE7C18CFFCD9660FFE6BF89FFE5BE89FFE5BD87FFE5BC
          87FFC98E59FFE4BA84FFE4BA83FFE4B983FFECCDA3FFBC7A44FFCA905CFFF1DB
          B8FFE8C28EFFE7C28DFFE7C18CFFCD9662FFE6BF8BFFE6BE89FFE5BD88FFE5BC
          87FFC98F5AFFE4BB86FFE4BB84FFE4BA83FFEDCEA5FFBD7B45FFCA915EFFF2DD
          B9FFF1DAB9FFF1DAB7FFF1D9B6FFD8AC7EFFF0D8B3FFF0D6B2FFF0D6B1FFEFD5
          AFFFD5A576FFEFD2ACFFEED2A9FFEDD1A9FFEDD1A8FFBE7B45FF976C47BECA91
          5DFFCA8F5BFFC88E5AFFC78C58FFC68B57FFC58955FFC48852FFC48651FFC284
          50FFC2834EFFC0814CFFC0804BFFBF7F49FFBE7D48FF8D5D34BF000000010000
          0002000000020000000200000002000000020000000200000002000000020000
          0003000000030000000300000003000000030000000300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 19
        OnClick = btnCadastroClick
      end
      object btnNascimento: TBitBtn
        Left = 95
        Top = 370
        Width = 25
        Height = 26
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000070000
          000B0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000
          000D0000000D0000000D0000000D0000000D0000000C0000000882594DBEB47C
          6AFFB37C69FFB37B6AFFB37B69FFB37B68FFB37B68FFB37A69FFB37A68FFB37A
          68FFB37A68FFB27968FFB37967FFB27967FFB27967FF7F574ABFB67F6DFFF9F2
          EEFFF9F2EEFFF9F2EDFFF9F1EDFFC69A8CFFF9F2ECFFF9F1EDFFF9F1ECFFF9F1
          ECFFC5998BFFF8F0EBFFF8F0EBFFF8F0EBFFF8F0EBFFB37B69FFB78170FFF9F3
          EFFFF7EEE9FFF8EEE8FFF8EEE9FFC79C8DFFF7EEE9FFF8EEE8FFF8EEE9FFF7EE
          E8FFC69A8BFFF8EEE8FFF7EDE8FFF7EEE8FFF9F1ECFFB57D6BFFBA8472FFFAF4
          F0FFF8EFEAFFF8F0EAFFF8EFE9FFC99D8FFFF8EFEAFFF8EFEAFFF7EEEAFFF8EF
          EAFFC89D8EFFF7EFE9FFF8EFE9FFF7EFE9FFF9F1EDFFB7806EFFBB8776FFCCA2
          95FFCAA193FFCBA193FFCAA193FFCAA192FFCBA192FFCAA091FFCA9F91FFCA9F
          91FFC99F91FFC99F90FFC99E90FFC99E8FFFC99F90FFB88371FFBD8A79FFFBF6
          F2FFF9F1ECFFF9F1ECFFF9F0EDFFCCA295FFF8F1ECFFF9F1EBFFF9F0ECFFF9F1
          ECFFCAA194FFF9F0ECFFF9F1EBFFF8F0EBFFF9F3F0FFBA8574FFC08E7CFFFBF6
          F3FFF9F2EEFFFAF2EEFFF9F1EDFFCEA697FFF9F1EDFFF9F1EDFFF9F2EDFFF9F2
          ECFFCDA496FFF9F1EDFFF9F1ECFFF9F1EDFFFBF5F1FFBC8977FFC29180FFFCF8
          F5FFF9F2EFFFFAF3EFFFFAF2EFFFCFA89AFFFAF3EEFFF9F2EEFFF9F2EEFFFAF3
          EEFFCEA799FFF9F2EEFFF9F2EEFFF9F2EDFFFBF5F2FFBF8C7AFFC88E5AFFD9AD
          80FFCE9964FFCD9763FFCD9660FFCD9460FFCB935EFFCA925DFFC9905BFFC88F
          5AFFC88E59FFC88D57FFC88C56FFC78B55FFD19D6CFFBB7943FFC98F5AFFF1DA
          B5FFE7C28DFFE7C18DFFE7C18CFFCD9660FFE6BF89FFE5BE89FFE5BD87FFE5BC
          87FFC98E59FFE4BA84FFE4BA83FFE4B983FFECCDA3FFBC7A44FFCA905CFFF1DB
          B8FFE8C28EFFE7C28DFFE7C18CFFCD9662FFE6BF8BFFE6BE89FFE5BD88FFE5BC
          87FFC98F5AFFE4BB86FFE4BB84FFE4BA83FFEDCEA5FFBD7B45FFCA915EFFF2DD
          B9FFF1DAB9FFF1DAB7FFF1D9B6FFD8AC7EFFF0D8B3FFF0D6B2FFF0D6B1FFEFD5
          AFFFD5A576FFEFD2ACFFEED2A9FFEDD1A9FFEDD1A8FFBE7B45FF976C47BECA91
          5DFFCA8F5BFFC88E5AFFC78C58FFC68B57FFC58955FFC48852FFC48651FFC284
          50FFC2834EFFC0814CFFC0804BFFBF7F49FFBE7D48FF8D5D34BF000000010000
          0002000000020000000200000002000000020000000200000002000000020000
          0003000000030000000300000003000000030000000300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 20
        OnClick = btnNascimentoClick
      end
      object JvMonthCalendar1: TJvMonthCalendar
        Left = -281
        Top = 317
        Width = 225
        Height = 160
        Date = 42943.947172349540000000
        TabOrder = 21
        Visible = False
        OnDblClick = JvMonthCalendar1DblClick
      end
      object cxGroupBox1: TcxGroupBox
        Left = 672
        Top = 36
        PanelStyle.Active = True
        PanelStyle.OfficeBackgroundKind = pobkStyleColor
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 23
        Height = 121
        Width = 153
        object Image1: TImage
          Left = 2
          Top = 2
          Width = 149
          Height = 117
          Align = alClient
          Stretch = True
          OnClick = Image1Click
          ExplicitLeft = 1
          ExplicitTop = 3
          ExplicitHeight = 125
        end
      end
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 263
    Width = 451
    Height = 42
    Align = alClient
    TabOrder = 2
    ExplicitTop = 251
    ExplicitHeight = 54
    object cxgDados: TcxGrid
      Left = 1
      Top = 1
      Width = 720
      Height = 250
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.Style = 8
      LookAndFeel.Kind = lfFlat
      LookAndFeel.SkinName = 'LiquidSky'
      ExplicitWidth = 660
      ExplicitHeight = 253
      object cxgDadosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Entre com texto para pesquisa...'
        OnCellDblClick = cxgDadosDBTableView1CellDblClick
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
        object cxgDadosDBTableView1Column1: TcxGridDBColumn
          Caption = 'Visitante'
          DataBinding.FieldName = 'PW_VISITA'
          Options.Editing = False
          Width = 109
        end
        object cxgDadosDBTableView1Column2: TcxGridDBColumn
          Caption = 'Nome Completo'
          DataBinding.FieldName = 'PW_NOMFULL'
          Options.Editing = False
          Width = 438
        end
        object cxgDadosDBTableView1Column3: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'PW_CPF'
          Options.Editing = False
          Width = 157
        end
        object cxgDadosDBTableView1Column4: TcxGridDBColumn
          Caption = 'RG'
          DataBinding.FieldName = 'PW_RG'
          Options.Editing = False
          Width = 157
        end
      end
      object cxgDadosLevel1: TcxGridLevel
        GridView = cxgDadosDBTableView1
      end
    end
  end
  object ActionList1: TActionList
    Left = 456
    Top = 440
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object GestureManager1: TGestureManager
    Left = 368
    Top = 440
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
    SQL.Strings = (
      'SELECT * FROM SA1010')
    Left = 240
    Top = 440
  end
  object dts_principal: TDataSource
    AutoEdit = False
    DataSet = tab_principal
    OnDataChange = dts_principalDataChange
    Left = 168
    Top = 440
  end
  object popImagem: TPopupMenu
    Left = 512
    Top = 64
    object irarFoto1: TMenuItem
      Caption = 'Tirar Foto'
      OnClick = irarFoto1Click
    end
    object RemoverFoto1: TMenuItem
      Caption = 'Remover Foto'
    end
  end
  object tab_busca: TFDQuery
    Connection = frm_principal.sql_conecta
    SQL.Strings = (
      'SELECT * FROM SA1010')
    Left = 304
    Top = 320
  end
end
