inherited frm_recebida: Tfrm_recebida
  ClientWidth = 1332
  Scaled = False
  ExplicitWidth = 1338
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel [0]
    Left = 30
    Top = 46
    Width = 90
    Height = 25
    Align = alCustom
    Caption = 'Data Inicio'
  end
  object Label2: TLabel [1]
    Left = 187
    Top = 46
    Width = 74
    Height = 25
    Align = alCustom
    Caption = 'Data Fim'
  end
  inherited Panel1: TPanel
    Width = 1332
    ExplicitWidth = 1332
    inherited img_sair: TImage
      Left = 1272
      ExplicitLeft = 1276
    end
    inherited img_imprimir: TImage
      Left = 1152
      OnClick = img_imprimirClick
      ExplicitLeft = 1156
    end
    inherited img_visualizar: TImage
      Left = 1212
      OnClick = img_visualizarClick
      ExplicitLeft = 1216
    end
  end
  inherited GestureManager1: TGestureManager
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
    Left = 576
    Top = 392
  end
  object dts_principal: TDataSource
    DataSet = tab_principal
    Left = 376
    Top = 400
  end
end
