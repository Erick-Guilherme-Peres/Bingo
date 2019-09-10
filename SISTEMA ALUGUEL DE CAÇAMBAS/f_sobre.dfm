object frm_sobre: Tfrm_sobre
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 434
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Touch.GestureManager = GestureManager1
  Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanInertia, igoParentPassthrough]
  PixelsPerInch = 96
  TextHeight = 25
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderColor = clBtnText
    Style.BorderStyle = ebsFlat
    Style.Shadow = False
    Style.TransparentBorder = False
    StyleDisabled.BorderStyle = ebsFlat
    TabOrder = 0
    ExplicitTop = 335
    ExplicitHeight = 65
    Height = 434
    Width = 359
    object Label1: TLabel
      Left = 2
      Top = 134
      Width = 355
      Height = 298
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 
        #13#10'  Este software '#233' protegido por leis de direitos autorais e tr' +
        'atador internacionais.'#13#10#13#10'  A reprodu'#231#227'o ou distribui'#231#227'o n'#227'o aut' +
        'orizada deste programa ou parte dele por escrito e reconhecido p' +
        'elo autor, pode resultar em penas civis ou criminais severas, qu' +
        'e ser'#227'o aplicadas na extens'#227'o maxima da Lei.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = Label1Click
      ExplicitLeft = 8
      ExplicitTop = 100
      ExplicitWidth = 402
      ExplicitHeight = 138
    end
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 355
      Height = 132
      Align = alTop
      Alignment = taCenter
      Caption = 'Aluguel de Ca'#231'ambas'#13#10'Sistema de Gerenciamento'#13#10#13#10'Login'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = []
      OnClick = Label2Click
      ExplicitWidth = 317
    end
  end
  object ActionList1: TActionList
    Left = 120
    Top = 32
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object GestureManager1: TGestureManager
    Left = 48
    Top = 32
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
end
