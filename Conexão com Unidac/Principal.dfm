object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Teste Unidac Connection'
  ClientHeight = 476
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 416
    Width = 129
    Height = 25
    Caption = 'Order By DsDetalhe'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 72
    Width = 809
    Height = 306
    DataSource = UniDataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 352
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 2
    Text = 'P'#195'O DE QUEIJO + CAF'#201
  end
  object NavigatorBindSourceDB1: TBindNavigator
    Left = 320
    Top = 41
    Width = 240
    Height = 25
    DataSource = BindSourceDB1
    Orientation = orHorizontal
    TabOrder = 3
  end
  object UniConnection1: TUniConnection
    ProviderName = 'postgreSQL'
    Port = 5432
    Database = 'Delphi'
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 8
    EncryptedPassword = 'DCFF9EFF9DFF9CFFCEFFCDFFCCFFDCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 64
    Top = 8
  end
  object UniTable1: TUniTable
    TableName = '"Delphi".wshop.detalhe'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 8
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 160
    Top = 8
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = UniTable1
    ScopeMappings = <>
    Left = 800
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 220
    Top = 13
    object LinkControlToFielddsdetalhe: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'dsdetalhe'
      Control = Edit1
      Track = True
    end
  end
end
