object frm_webcam: Tfrm_webcam
  Left = 392
  Top = 223
  BorderStyle = bsDialog
  Caption = 'CONTROLE DE ENTRADA E SAIDA'
  ClientHeight = 571
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Left: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 571
    Align = alLeft
    TabOrder = 0
    inline Frame_Video1: TFrame1
      Left = 1
      Top = 1
      Width = 375
      Height = 569
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 375
      ExplicitHeight = 569
      inherited Panel_Top: TPanel
        Width = 375
        ExplicitWidth = 375
        DesignSize = (
          375
          73)
        inherited Label_Cameras: TLabel
          Width = 52
          ExplicitWidth = 52
        end
        inherited SpeedButton_Stop: TSpeedButton
          OnClick = Frame_Video1SpeedButton_StopClick
        end
        inherited Label3: TLabel
          Width = 51
          ExplicitWidth = 51
        end
        inherited Label4: TLabel
          Width = 44
          ExplicitWidth = 44
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 375
        Height = 496
        ExplicitWidth = 375
        ExplicitHeight = 496
        DesignSize = (
          375
          496)
        inherited Label_VideoSize: TLabel
          Width = 50
          ExplicitWidth = 50
        end
        inherited Label_fps: TLabel
          Width = 90
          ExplicitWidth = 90
        end
        inherited Label2: TLabel
          Width = 49
          ExplicitWidth = 49
        end
        inherited PaintBox_Video: TPaintBox
          Width = 367
          Height = 540
          ExplicitWidth = 367
          ExplicitHeight = 499
        end
      end
    end
  end
end
