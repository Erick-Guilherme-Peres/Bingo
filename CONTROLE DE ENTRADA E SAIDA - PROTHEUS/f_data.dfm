object frm_data: Tfrm_data
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_data'
  ClientHeight = 200
  ClientWidth = 181
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 11
    Top = 5
    Width = 76
    Height = 25
    Caption = 'Data De?'
  end
  object Label2: TLabel
    Left = 11
    Top = 75
    Width = 81
    Height = 25
    Caption = 'Data At'#233'?'
  end
  object Panel1: TPanel
    Left = 0
    Top = 159
    Width = 181
    Height = 41
    ParentCustomHint = False
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    object img_incluir: TImage
      Left = 61
      Top = 0
      Width = 60
      Height = 41
      Hint = 'Incluir'
      Align = alRight
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
      ExplicitLeft = 1138
      ExplicitTop = 2
    end
    object img_excluir: TImage
      Left = 121
      Top = 0
      Width = 60
      Height = 41
      Hint = 'Excluir'
      Align = alRight
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
      ExplicitLeft = 1936
      ExplicitHeight = 75
    end
  end
  object edtDe: TDateEdit
    Left = 11
    Top = 35
    Width = 150
    Height = 33
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtAte: TDateEdit
    Left = 11
    Top = 107
    Width = 150
    Height = 33
    NumGlyphs = 2
    TabOrder = 2
  end
end
