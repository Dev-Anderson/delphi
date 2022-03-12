object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 80
    Width = 97
    Height = 23
    Caption = 'Sua altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 115
    Top = 120
    Width = 86
    Height = 23
    Caption = 'Seu Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 144
    Top = 160
    Width = 46
    Height = 23
    Caption = 'Sexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 41
    Align = alTop
    Caption = 'CALCULADORA - INDICE DE MASSA CORPORAL'
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
  end
  object edtAltura: TEdit
    Left = 224
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtPeso: TEdit
    Left = 224
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object cbSexo: TComboBox
    Left = 224
    Top = 165
    Width = 121
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'F'
      'M')
  end
  object btnResultado: TButton
    Left = 104
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Resultado'
    TabOrder = 4
  end
  object btnRequisitos: TButton
    Left = 270
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Requisitos'
    TabOrder = 5
  end
end
