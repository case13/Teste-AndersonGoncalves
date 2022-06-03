object Form1: TForm1
  Left = 0
  Top = 0
  Margins.Left = 0
  BorderStyle = bsSingle
  Caption = 'Info Sistemas - Teste Anderson Gon'#231'alves.'
  ClientHeight = 740
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 441
    Height = 734
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 36
      Width = 435
      Height = 215
      Align = alTop
      Caption = 'Dados Pessoais'
      TabOrder = 0
      object Label3: TLabel
        Left = 12
        Top = 21
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label5: TLabel
        Left = 12
        Top = 69
        Width = 52
        Height = 13
        Caption = 'Identidade'
      end
      object Label6: TLabel
        Left = 216
        Top = 69
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label7: TLabel
        Left = 12
        Top = 117
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label8: TLabel
        Left = 12
        Top = 163
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object edtNome: TEdit
        Left = 12
        Top = 37
        Width = 408
        Height = 21
        TabOrder = 0
      end
      object edtIdentidade: TEdit
        Left = 12
        Top = 85
        Width = 198
        Height = 21
        TabOrder = 1
      end
      object edtCpf: TEdit
        Left = 216
        Top = 85
        Width = 204
        Height = 21
        TabOrder = 2
      end
      object edtTelefone: TEdit
        Left = 12
        Top = 133
        Width = 198
        Height = 21
        TabOrder = 3
      end
      object edtEmail: TEdit
        Left = 12
        Top = 179
        Width = 408
        Height = 21
        TabOrder = 4
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 257
      Width = 435
      Height = 270
      Align = alTop
      Caption = 'Endere'#231'o'
      TabOrder = 1
      object Label1: TLabel
        Left = 12
        Top = 22
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label2: TLabel
        Left = 12
        Top = 71
        Width = 55
        Height = 13
        Caption = 'Logradouro'
      end
      object Label9: TLabel
        Left = 331
        Top = 71
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label10: TLabel
        Left = 12
        Top = 118
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label11: TLabel
        Left = 240
        Top = 118
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label12: TLabel
        Left = 12
        Top = 166
        Width = 50
        Height = 13
        Caption = 'Localidade'
      end
      object Label13: TLabel
        Left = 331
        Top = 166
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label14: TLabel
        Left = 12
        Top = 212
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Button1: TButton
        Left = 184
        Top = 36
        Width = 26
        Height = 25
        Caption = 'Ok'
        TabOrder = 8
        TabStop = False
        OnClick = Button1Click
      end
      object edtCep: TEdit
        Left = 12
        Top = 38
        Width = 173
        Height = 21
        MaxLength = 8
        TabOrder = 0
        OnKeyDown = edtCepKeyDown
        OnKeyPress = edtCepKeyPress
      end
      object edtLogradouro: TEdit
        Left = 12
        Top = 87
        Width = 313
        Height = 21
        TabOrder = 1
      end
      object edtNumero: TEdit
        Left = 331
        Top = 87
        Width = 88
        Height = 21
        TabOrder = 2
      end
      object edtComplemento: TEdit
        Left = 12
        Top = 135
        Width = 222
        Height = 21
        TabOrder = 3
      end
      object edtBairro: TEdit
        Left = 240
        Top = 135
        Width = 179
        Height = 21
        TabOrder = 4
      end
      object edtLocalidade: TEdit
        Left = 12
        Top = 183
        Width = 313
        Height = 21
        TabOrder = 5
      end
      object edtUF: TEdit
        Left = 331
        Top = 183
        Width = 88
        Height = 21
        TabOrder = 6
      end
      object edtPais: TEdit
        Left = 12
        Top = 230
        Width = 313
        Height = 21
        TabOrder = 7
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 441
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblCodigo: TLabel
        AlignWithMargins = True
        Left = 53
        Top = 3
        Width = 100
        Height = 27
        Align = alLeft
        Caption = 'Novo Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object Label15: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 44
        Height = 27
        Align = alLeft
        Caption = 'Registro:'
        Layout = tlCenter
        ExplicitHeight = 13
      end
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 533
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 450
    Top = 3
    Width = 607
    Height = 734
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 41
      Width = 601
      Height = 628
      Align = alClient
      DataSource = DataSource1
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Identidade'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cpf'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Logradouro'
          Width = 292
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Localidade'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uf'
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pais'
          Width = 64
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 607
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 79
        Top = 3
        Width = 35
        Height = 32
        Hint = 'Deletar Registro'
        Margins.Left = 0
        Margins.Right = 0
        Align = alLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFE2E1FF
          979BFFC2C1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
          F7191BEF8786CAFFFFFFEDEAFF3B4CFF1538FF0D25FEADA6FCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6765E40000FF807FC4FFFFFFC0BBFF1A39FF
          2A4EFF203FFF1D2DFDE4E2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8F00000
          F70000EDEBEAEDFFFFFFC2BDFF4F66FF1F43FF2540FF0C25FE7778F8FFFFFFFF
          FFFFFFFFFFFFFFFFF7F7F7231EEA0604FF0001C9FFFFFFFFFFFFFEFDFF534FFF
          5073FF1E3BFF1E38FF0000FDE6E3FAFFFFFFFFFFFFFFFFFB3A35F10000FF0000
          EEA4A3E4FFFFFFFFFFFFFFFFFFE6E4FF1923FF395AFF1832FF1328FF3A3BF7FF
          FFFCFFFFFE716EF60000FE0A03FF1A16D3F2F1F5FFFFFFFFFFFFFFFFFFFFFFFF
          AAA5FE4550FE2644FF1629FF0008FD8483F66F6DF80000FC0F08FF0000ECD7D6
          EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE635CFB475EFF1F36FF1521FF0B
          0EF90706FE120FFF0000F9524FDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4541F7525DFD1722FF181DFF1514FF0807FF3B38E0FEFEFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A86FB1B27FD1620FF12
          17FF1312FF0000EEF1F2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C5C5FF5963FF5D79FF667BFF5E69FF666CFF5C5CFF2D2AFF3C36EFEBEBFAFFFF
          FFFFFFFFFFFFFFFFFFFFF9F6FF9499FF667FFF6C87FF677DFF5C6FFF7782FF6C
          67F47873F5918FFF4B44FF534CF6ECECF3FFFFFFFFFFFFFFFFFF878CFF7A9AFF
          7B95FF738AFF7086FF8897FE7E78F7F1F0FDD1CEF86E6AEE9692FC7972FF4947
          F9A3A3F2FFFEFBFFFFFF8893FF88A8FF7892FF859BFF909AFE7F7CF9F3F2FDFF
          FFFFFFFFFFEEEEFB908DED726DEC9C99FF7D82FD7F85F2DFDFF79792FFA3ACFF
          A2ACFF9092FDAEA7FCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECFA8583
          E18886E9969EF1777DE2F8F7FFD7D3FFD8D5FFD9D7FEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1FAD5D3F1DDDCF3}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
        ExplicitLeft = 138
      end
      object SpeedButton2: TSpeedButton
        AlignWithMargins = True
        Left = 35
        Top = 3
        Width = 35
        Height = 32
        Hint = 'Editar Registro'
        Margins.Left = 0
        Margins.Right = 0
        Align = alLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFEFEFE
          C1C1C1ADACACADADADADADADADADADADADADADADADADADADADADADB5B5B5D1D1
          D1F0F0F0FFFFFFFFFFFFFFFFFFFDFDFDB4B3B3E9E7E7EAE9E8EBEAEAECEBEBED
          ECEBEDECEBECEBEBE7E5E5DCDAD9CECCCCBDBDBDFEFEFEFFFFFFFFFFFFFDFDFD
          B4B3B3EAE8E8EBEAE9E9E8E8EEEDECEFEEEDEFEEEDEEEDEDEDECECE6E4E4DAD8
          D7A8A8A8FDFDFDFFFFFFFFFFFFFDFDFDB4B4B3EBE9E9ECEAEA93A0A89A9A9AD4
          D3D3EEEEEDEFEEEEEEEDEDEDECEBE5E4E3ABABAAFDFDFDFFFFFFFFFFFFFDFDFD
          B4B4B4ECEBEAEEEDECD4D4D44644436E6D6DACACABE2E2E1EFEEEDEEEDECECEB
          EAB3B3B2FDFDFDFFFFFFFFFFFFFDFDFDB4B4B4ECEBEAEEEDECEFEFEED2D2D148
          47468F8E8DA1A0A0C5C5C4E9E8E8ECEBEBB4B4B4FDFDFDFFFFFFFFFFFFFDFDFD
          B4B4B4ECEBEAEEEDECF0EFEEF1F0F0D3D3D24B4A4AB7B6B6C5C4C4BAB9B8DDDD
          DCB4B4B4FDFDFDFFFFFFFFFFFFFDFDFDB4B4B3EBEAE9EDEDECEFEFEEF1F1F0F3
          F2F1D4D3D34A4A4ABEBEBDE7E6E5DCDBDAB1B1B0FDFDFDFFFFFFFFFFFFFDFDFD
          B4B3B2EAE9E8ECEBEAEEEEEDF0F0EFF2F1F1F2F1F1D2D1D14A4A4ABCBBBBEAE9
          E8B4B3B2FDFDFDFFFFFFFFFFFFFDFDFDB2B1B1E7E6E5EAE9E8ECEBEAEEEDECEF
          EEEDEFEEEDEEEDECCECDCD494949B8B7B6B2B1B1FDFDFDFFFFFFFFFFFFFDFDFD
          B0AFAFE4E2E1E6E5E4E9E8E7EAE9E9EBEAEAEBEAEAEAE9E9E9E8E7C9C8C74848
          48919191FDFDFDFFFFFFFFFFFFFDFDFDAEADADDFDEDCE2E1E0E4E3E2E6E5E4E7
          E6E5E7E6E5E6E5E4E5E3E2E2E1E0C3C2C1454444C7C7C7FFFFFFFFFFFFFDFDFD
          ACABAAD9D7D5DDDCDAE0DEDDE1E0DEE2E1DFE2E1DFE1E0DEE0DEDDDDDCDAD9D8
          D69F9E9D484848D1D1D1FFFFFFFDFDFDA9A8A7D2D0CED6D4D2D9D7D5DBD9D8DC
          DAD9DCDAD9DBD9D8D9D7D5D6D4D2D2D0CEA9A9A7DDDDDDDEDEDEFFFFFFFDFDFD
          A7A6A4CAC8C5CECBC9D0CECCD2D0CED4D2D0D4D2D0D3D1CFD1CFCCCECCC9CBC8
          C5A7A6A4FDFDFDFFFFFFFFFFFFFFFFFFCCCCCCBBBBBABCBCBBBCBCBCBDBCBCBD
          BDBCBDBDBCBDBCBCBCBCBCBCBCBBBBBBBACCCCCCFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
        ExplicitLeft = 45
      end
      object SpeedButton3: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 35
        Height = 32
        Hint = 'Novo Registro'
        Margins.Left = 0
        Margins.Right = 0
        Align = alLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000F8F8F8C6C6C6
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5CACACAFAFAFAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC6C6C6F7F7F6F9F9F9FBFBFBFBFBFBFCFCFCFDFDFDFF
          FFFFEAE9E99D9D9AF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5F7F7F6
          F8F8F8FAFAFAFBFBFBFCFCFCFDFDFDFEFEFEF4F4F4CCCCCC979793EDEDEDFFFF
          FFFFFFFFFFFFFFFFFFFFC5C5C5F6F6F6F8F8F8FAFAFAFBFBFBFCFCFCFDFDFDFE
          FEFEFBFBFBC4C4C4FDFDFD999995F5F5F5FFFFFFFFFFFFFFFFFFC5C5C5F6F6F5
          F7F7F7FAFAFAFBFBFBFCFCFCFDFDFDFEFEFEFEFEFEE0E0E0C6C6C6CFCFCEA2A1
          9FFAFAFAFFFFFFFFFFFFC5C5C5F5F5F4F6F6F6F9F9F9FAFAFAFBFBFBFCFCFCFD
          FDFDFEFEFEFEFEFEFCFCFCFAFAFAF0EFEFCACACAFFFFFFFFFFFFC5C5C5F4F4F4
          F5F5F5F7F7F7FAFAFAFAFAFAFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFEFEFEFEFE
          FEC5C5C5FFFFFFFFFFFFC5C5C5F4F4F3F4F4F3F6F6F6F8F8F8FAFAFAFBFBFBFB
          FBFBFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDC5C5C5FFFFFFFFFFFFC5C5C5F2F2F2
          F2F2F2F4F4F4F6F6F6F8F8F8FAFAFAFAFAFAFBFBFBFBFBFBFCFCFCFCFCFCFCFC
          FCC5C5C5FFFFFFFFFFFFC5C5C5F1F1F0F1F1F0F3F3F2F5F5F4F6F6F6F8F8F8F9
          F9F9FAFAFAFAFAFA95DF9523C4230AAF0A1CBB1C99E399FFFFFFC5C5C5EFEFEE
          EFEFEEF1F1F0F3F3F2F4F4F4F6F6F6F7F7F7F8F8F895DD9502AD0200A31AFFFF
          FF00B03602AE0599E099C5C5C5EEEEEDEDEDEDEFEFEEF1F1F0F2F2F2F4F4F3F5
          F5F5F6F6F621B42100A00300A034FFFFFF00B06400AF3223B423C5C5C5ECECEB
          ECECEBEDEDECEFEFEEF0F0EFF1F1F1F2F2F2F3F3F3099509FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF099709C5C5C5EAE9E8E9E9E8EBEBEAEDEDECEEEEEDEFEFEEF0
          F0EFF1F1F021A6211DB61D29B43FFFFFFF29BC5A1DBC3323A923C5C5C5EAEAEA
          E9E9E8EBEBEAEDEDECEEEEEDEFEFEEF0F0EFF1F1F08FCF8F36BF3678D578FFFF
          FF78D57A37C03798D798EFEFEFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C577B5773DB03D5FC45F42B44297D897FFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
        ExplicitLeft = 3
      end
      object Shape1: TShape
        AlignWithMargins = True
        Left = 73
        Top = 5
        Width = 3
        Height = 28
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Brush.Color = 4194304
        Pen.Style = psClear
        ExplicitLeft = 99
        ExplicitTop = 3
        ExplicitHeight = 32
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 675
      Width = 601
      Height = 56
      Align = alBottom
      Caption = 'Encaminhar XML para o email'
      TabOrder = 2
      object SpeedButton5: TSpeedButton
        AlignWithMargins = True
        Left = 564
        Top = 18
        Width = 35
        Height = 33
        Hint = 'Enviar Email'
        Margins.Left = 0
        Margins.Right = 0
        Align = alRight
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4E9FFFBE0
          BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEDBFFF9CC94FFF9CB
          92FFFEF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DEBFFFF9CA90FFF9CA90FFF9CA
          90FFFCE5C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E0C8FFD88229FFF6C487FFF9CA90FFF9CA
          90FFFAD19EFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7DEC5FFD98632FFD27619FFDE903EFFF9C98FFFF9CA
          90FFF9CA90FFFDF1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9DEBFFFD8822AFFD27619FFD27619FFD27619FFE8A55CFFF9CA
          90FFF9CA90FFFBDCB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDEEDBFFF9CA91FFF6C589FFDF9241FFD27619FFD27619FFD3781CFFF0B8
          75FFF9CA90FFF9CB93FFFFFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF5
          EAFFF9CC95FFF9CA90FFF9CA90FFF9CA90FFE9A860FFD3791CFFD27619FFD782
          2AFFF6C589FFF9CA90FFFCE7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0
          BDFFF9CB92FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF1B979FFD78229FFD276
          19FFDF9241FFF9CA90FFFAD3A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFAF4FFFCE6CBFFFAD19FFFF9CA90FFF9CA90FFF9CA90FFF7C68AFFE093
          42FFD27619FFE9A860FFF9CA90FFFEF3E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF3E5FFFBDFBCFFF9CC94FFF9CA90FFF9CA
          90FFEAAB64FFD57C21FFF2BA7AFFFBDEBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8FFFDEAD3FFFAD4
          A4FFF9CA90FFF3BD7DFFDE913FFFF8C88EFFFFFCF8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEF4E9FFFBDFBCFFF8C991FFF0B775FFFDE9D2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCF9FFFDEAD3FFFBDFBCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
        ExplicitLeft = 87
        ExplicitTop = 3
        ExplicitHeight = 32
      end
      object edtEmailDestino: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 556
        Height = 33
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 320
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = cdsRegistro
    Left = 586
    Top = 195
  end
  object cdsRegistro: TClientDataSet
    PersistDataPacket.Data = {
      B70100009619E0BD01000000180000000E000000000003000000B70106436F64
      69676F040001000000010007535542545950450200490008004175746F696E63
      00044E6F6D6501004900000001000557494454480200020032000A4964656E74
      69646164650100490000000100055749445448020002001E0003437066010049
      0000000100055749445448020002001E000854656C65666F6E65010049000000
      010005574944544802000200140005456D61696C010049000000010005574944
      544802000200C800034365700100490000000100055749445448020002001400
      0A4C6F677261646F75726F010049000000010005574944544802000200C80006
      4E756D65726F0100490000000100055749445448020002001E000B436F6D706C
      656D656E746F01004900000001000557494454480200020064000A4C6F63616C
      6964616465010049000000010005574944544802000200C8000642616972726F
      0100490000000100055749445448020002003200025566010049000000010005
      5749445448020002000200045061697301004900000001000557494454480200
      0200320001000C4155544F494E4356414C55450400010001000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 586
    Top = 131
    object cdsRegistroCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object cdsRegistroNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsRegistroIdentidade: TStringField
      FieldName = 'Identidade'
      Size = 30
    end
    object cdsRegistroCpf: TStringField
      FieldName = 'Cpf'
      Size = 30
    end
    object cdsRegistroTelefone: TStringField
      FieldName = 'Telefone'
    end
    object cdsRegistroEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object cdsRegistroCep: TStringField
      FieldName = 'Cep'
    end
    object cdsRegistroLogradouro: TStringField
      FieldName = 'Logradouro'
      Size = 200
    end
    object cdsRegistroNumero: TStringField
      FieldName = 'Numero'
      Size = 30
    end
    object cdsRegistroComplemento: TStringField
      FieldName = 'Complemento'
      Size = 100
    end
    object cdsRegistroLocalidade: TStringField
      FieldName = 'Localidade'
      Size = 200
    end
    object cdsRegistroBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object cdsRegistroUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object cdsRegistroPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
  end
end
