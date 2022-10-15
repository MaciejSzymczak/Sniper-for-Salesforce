object FSniper: TFSniper
  Left = 320
  Top = 129
  Width = 1253
  Height = 685
  Caption = 
    'SNIPER for Salesforce.                Apex Code Mass Execution, ' +
    'version 2022.10.15'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 1242
    Top = 0
    Height = 654
    Align = alRight
  end
  object Pages: TPageControl
    Left = 0
    Top = 0
    Width = 1242
    Height = 654
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Login'
      OnResize = TabSheet1Resize
      object Panel3: TPanel
        Left = 0
        Top = 423
        Width = 1234
        Height = 200
        Align = alBottom
        TabOrder = 0
        object ButtonsPane1: TPanel
          Left = 664
          Top = 8
          Width = 641
          Height = 185
          BevelOuter = bvNone
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 8
            Top = 0
            Width = 300
            Height = 185
            Caption = 'Contact us'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object SpeedButton7: TSpeedButton
            Left = 336
            Top = 0
            Width = 300
            Height = 185
            Caption = 'Next >>'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton3Click
          end
        end
      end
      object BodyPanel1: TPanel
        Left = 0
        Top = 0
        Width = 1234
        Height = 423
        Align = alClient
        TabOrder = 1
        object LogonPanel: TPanel
          Left = 176
          Top = 56
          Width = 721
          Height = 281
          TabOrder = 0
          object Label3: TLabel
            Left = 128
            Top = 120
            Width = 81
            Height = 13
            Caption = 'Salesforce Url'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 88
            Top = 152
            Width = 127
            Height = 13
            Caption = 'Salesforce User Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 152
            Top = 176
            Width = 55
            Height = 13
            Caption = 'Password'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 40
            Top = 256
            Width = 623
            Height = 16
            Caption = 
              'Your password is NOT sent to any cloud. It is only stored in fil' +
              'e config.bat in the folder you specify in step 3.'
          end
          object Label9: TLabel
            Left = 176
            Top = 80
            Width = 277
            Height = 16
            Caption = 'Provide login access to your Salesforce'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 128
            Top = 208
            Width = 83
            Height = 13
            Caption = 'Security token'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object url: TEdit
            Left = 216
            Top = 112
            Width = 265
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvSpace
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'https://login.salesforce.com'
          end
          object User: TEdit
            Left = 216
            Top = 144
            Width = 265
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvSpace
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'yourusername@company.com'
          end
          object Password: TEdit
            Left = 216
            Top = 176
            Width = 265
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 2
            OnChange = PasswordChange
          end
          object Panel9: TPanel
            Left = 16
            Top = 16
            Width = 697
            Height = 41
            Caption = 
              'Welcome! Using Sniper you can merge records, run apex code for m' +
              'ilion records and much more!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object SecurityToken: TEdit
            Left = 216
            Top = 208
            Width = 265
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 4
            OnChange = PasswordChange
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configure'
      ImageIndex = 1
      OnResize = TabSheet2Resize
      object Panel7: TPanel
        Left = 0
        Top = 423
        Width = 1234
        Height = 200
        Align = alBottom
        TabOrder = 0
        object ButtonsPane12: TPanel
          Left = 280
          Top = 0
          Width = 649
          Height = 201
          BevelOuter = bvNone
          TabOrder = 0
          object SpeedButton5: TSpeedButton
            Left = 8
            Top = 8
            Width = 300
            Height = 185
            Caption = '<< Back'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton5Click
          end
          object SpeedButton4: TSpeedButton
            Left = 341
            Top = 8
            Width = 300
            Height = 185
            Caption = 'Next >>'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton4Click
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1234
        Height = 423
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 724
          Top = 0
          Height = 423
          Align = alRight
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 724
          Height = 423
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 0
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 722
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 280
              Top = 8
              Width = 296
              Height = 20
              Caption = 'Header: Shared code for each execution'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object HeadersHelp: TSpeedButton
              Left = 582
              Top = 5
              Width = 25
              Height = 25
              Hint = 'Kto i kiedy utworzy'#322' rekord'
              AllowAllUp = True
              Glyph.Data = {
                1E080000424D1E08000000000000360000002800000017000000160000000100
                200000000000E807000000000000000000000000000000000000FFFFFF00F9F9
                F900F9F9F900F9F9F900F9F9F900F9F9F900FBFBFB00FFFFFF00FFFFFF00F0F0
                F000DFDFDF00D7D7D700D9D9D900E6E6E600F9F9F900FFFFFF00FEFEFE00FAFA
                FA00F9F9F900F9F9F900F9F9F900F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4D4D400919191005F5F5F004646
                46003E3E3E00404040004F4F4F0074747400B0B0B000F0F0F000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00EDEDED008E8E8E003D3D3D0027272700282828002C2C2C002D2D
                2D002D2D2D002A2A2A00262626002C2C2C005C5C5C00C1C1C100FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4
                E40067676700282828002D2D2D0032323200323232002B2B2B00272727002929
                29002F2F2F0032323200313131002828280039393900A7A7A700FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1006A6A6A002828
                28003131310033333300323232002F2F2F005151510073737300646464003F3F
                3F003232320033333300333333002C2C2C0035353500F0F0F000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00E4E4E4009696960029292900323232003333
                3300333333002E2E2E0059595900E1E1E100FFFFFF00CCCCCC00888888003636
                36003232320033333300333333002C2C2C0091919100FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF008D8D8D00404040002E2E2E0033333300333333003333
                33002B2B2B007F7F7F00FFFFFF00FBFBFB00616161003A3A3A00353535003232
                32003333330033333300333333003D3D3D00DCDCDC00FFFFFF00FFFFFF00FFFF
                FF00F3F3F3004949490029292900333333003333330033333300333333002D2D
                2D0063636300F6F6F600FDFDFD006D6D6D002828280033333300333333003333
                330033333300333333002424240099999900FFFFFF00FFFFFF00FFFFFF00CECE
                CE002C2C2C002B2B2B0033333300333333003333330033333300303030003E3E
                3E00DEDEDE00FFFFFF00A4A4A4002A2A2A003333330033333300333333003333
                3300333333002626260064646400FCFCFC00FFFFFF00FFFFFF00B2B2B2002424
                24002E2E2E0033333300333333003333330033333300323232002C2C2C00ADAD
                AD00FFFFFF00D7D7D70038383800313131003333330033333300333333003333
                33002B2B2B0049494900F4F4F400FFFFFF00FFFFFF00A7A7A700242424003030
                300033333300333333003333330033333300323232002121210084848400FFFF
                FF00F5F5F500505050002E2E2E00333333003333330033333300333333002D2D
                2D0041414100EFEFEF00FFFFFF00FFFFFF00ACACAC00242424002F2F2F003333
                33003333330033333300303030004242420085858500CDCDCD00FFFFFF00EDED
                ED00494949002F2F2F00333333003333330033333300333333002C2C2C004545
                4500F2F2F200FFFFFF00FFFFFF00C1C1C100282828002D2D2D00333333003333
                330033333300313131003737370072727200A5A5A500ABABAB00676767002D2D
                2D0032323200333333003333330033333300333333002828280057575700F9F9
                F900FFFFFF00FFFFFF00E6E6E6003A3A3A002929290033333300333333003333
                3300333333003131310029292900282828002B2B2B0044444400393939003030
                3000333333003333330033333300333333002323230082828200FFFFFF00FFFF
                FF00FFFFFF00FEFEFE006E6E6E00313131003131310033333300333333003333
                330033333300323232002F2F2F0096969600E9E9E900B7B7B7003D3D3D003131
                31003333330033333300333333002D2D2D00C2C2C200FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00C5C5C5006D6D6D00282828003333330033333300333333003333
                33003232320033333300D3D3D300FFFFFF00F5F5F5004D4D4D002E2E2E003333
                3300333333003030300069696900F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FEFEFE00D5D5D500424242002B2B2B003232320033333300333333003333
                33002F2F2F0066666600B8B8B800848484003434340032323200333333003131
                310028282800D2D2D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00BABABA003C3C3C00282828003232320033333300333333003333
                33002C2C2C002E2E2E002C2C2C0031313100333333002F2F2F00272727006F6F
                6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00C3C3C30052525200262626002A2A2A0030303000323232003232
                320030303000313131002E2E2E00262626003131310084848400EEEEEE00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00E9E9E900969696004E4E4E002F2F2F0025252500242424002424
                2400282828003A3A3A006C6C6C00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00F5F5F500D1D1D100B5B5B500AAAAAA00ADADAD00C0C0
                C000E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = HeadersHelpClick
            end
            object HeaderLoadFromFile: TBitBtn
              Left = 4
              Top = 4
              Width = 75
              Height = 33
              Caption = 'Open'
              TabOrder = 0
              OnClick = HeaderLoadFromFileClick
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54A9D02A8AB570
                ABC7BCD8E6FBFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F6
                FD089CCD078CBC0CD1FF00A3D60789BF54A4CAA1D0E6EEF9FDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFA0CEE428C4E90B89B723E1FF1DDBFF19DDFF13D8FF07B1E20090
                C4399CC784C0DCD0E7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF50A2C956F4FF0D86B636E3FF2CDAFF29D9FF
                26DAFF20DAFF1CDDFF18DEFF10C1F00297CB1383B564ABCDB3D8E9F9FDFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFF148FBB70FFFF0D89B74B
                E8FF3CDFFF38DEFF34DDFF30DBFF2BDAFF26D9FF22D9FF25DCFF25DEFF20CFFD
                0FA6D80789BD499CC596C8E0E9F4FAFFFFFFFFFFFFFFFFFFFFFFFFB2D8EB3BB8
                D880FFFF0F8AB860EFFF4CE4FF48E3FF43E2FF3FE0FF3ADFFF35DDFF30DBFF2D
                DAFF2DD9FF2FD9FF31DAFF33DCFF32D9FF1DAED83A8EB6FFFFFFFFFFFFFFFFFF
                FFFFFF55A8CF84F8FD8FFFFF118DB976F4FF5CEAFF57E8FF53E7FF4EE5FF49E3
                FF44E2FF3EE0FF39DEFF37DCFF38DBFF39D9FF3AD7FF38D5FF59DDF7298EB9FF
                FFFFFFFFFFFFFFFFFCFFFF1C8EBAAAFFFFA0FFFF1390BD8AFBFF6AEFFF67EDFF
                62ECFF5DEAFF58E8FF52E7FF4DE5FF47E3FF43E1FF43DFFF44DEFF46DEFF3CCF
                F28DF3FF268CB6FFFFFFFFFFFFFFFFFFAFD9EB58C1D9AFFFFFADFFFF1493BD9F
                FFFF7BF4FF76F3FF71F1FF6CEFFF66EDFF61ECFF5BEAFF56E8FF50E6FF4DE4FF
                4EE2FF4FE1FF4DCFEAB5FFFF238DB6FFFFFFFFFFFFFFFFFF4CA5CEB5FFFFB4FF
                FFB7FFFF1393BFB2FFFF89F9FF85F8FF80F6FF7AF4FF75F2FF6FF0FF69EEFF64
                EDFF5EEBFF59E9FF59E8FF54E0F981E7F4BDFFFF258DB7FFFFFFFFFFFFF6FBFD
                2594BFD4FFFFBAFFFFC3FFFF1493C0C3FFFF97FFFF93FCFF8FFAFF88FAFF82F7
                FF7EF5FF77F3FF71F1FF6BEFFF66EDFF65EDFF5CDAEEB8FFFFC5FFFF278FB8FF
                FFFFFFFFFF9ECADE7CC8DDD6FFFFC4FFFFCDFFFF1394C3CDFFFFA1FEFF9DFDFF
                98FCFF92FAFF8DF8FF87F7FF81F5FF7BF3FF76F1FF70F0FF69EBFC89E6F0C4FF
                FFCEFFFF298FB8FFFFFFFFFFFF449AC0FEFFFFF1FFFFE2FFFFE7FFFF1B9CC7DC
                FFFFABFFFFAAFFFFA2FCFF9DFCFF96F9FF90F7FF8AF5FF85F4FF7FF2FF79F2FF
                6CE0F2BEFCFBC6FFFFD5FFFF2A91B9FFFFFFFFFFFF6DBDDE41A6D33EACD938AA
                D735A5CD0085BBD1FCFE9AEFF7A2F5F9A3FAFBA3FCFEA1FCFF9BFBFF95F9FF8E
                F6FF89F4FF80F1FF8CE5F0D3FFFFCAFFFFDDFFFF2A90BBFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFFFF2AA0CDF5FFFFBAF3F8B2EEF5A8EAF49EE4F097E3
                F08FE4F087E2F282E3F381E5F579E0F2C2F7FAD4FFFFD1FFFFE6FFFF2B92BAFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF34B4E2FFFFFFE2FFFFE3FFFF
                E3FFFFE1FFFFE2FFFFE3FFFFE3FFFFE1FFFFD7FEFECCF9FBDFFFFFDAFFFFD8FF
                FFEDFFFF2C91BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BBBE8E2
                F9FCDEF7FAEAFCFDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE8FFFFE2FFFF
                E0FFFFE0FFFFDFFFFFF5FFFF2E93BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFB3ECFF7BD0F06DCBED64C5EA55C0E74CBAE444B4DF3EB4E23DB0DC18
                93C4FFFFFFEAFFFFE8FFFFE7FFFFE7FFFFFFFFFF3194BDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF79C7E6D8EFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A97BFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2EEF92998C241A2C83D9FC63D9CC53F9D
                C32D93BD9BCADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object BitBtn1: TBitBtn
              Left = 78
              Top = 4
              Width = 139
              Height = 33
              Caption = 'Examples'
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                BE000000424DBE0000000000000076000000280000000A000000090000000100
                0400000000004800000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
                0000FFFFFFFFFF000000FFFFFFFFFF000000FFFFF0FFFF000000FFFF000FFF00
                0000FFF00000FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF00
                0000}
            end
          end
          object Header: TMemo
            Left = 1
            Top = 42
            Width = 722
            Height = 380
            Align = alClient
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
            WordWrap = False
            OnKeyUp = HeaderKeyUp
          end
        end
        object Panel1: TPanel
          Left = 727
          Top = 0
          Width = 507
          Height = 423
          Align = alRight
          Caption = 'Panel1'
          TabOrder = 1
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 505
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 80
              Top = 8
              Width = 315
              Height = 20
              Caption = 'Lines. Each line means separate execution'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LinesHelp: TSpeedButton
              Left = 401
              Top = 7
              Width = 25
              Height = 25
              Hint = 'Kto i kiedy utworzy'#322' rekord'
              AllowAllUp = True
              Glyph.Data = {
                1E080000424D1E08000000000000360000002800000017000000160000000100
                200000000000E807000000000000000000000000000000000000FFFFFF00F9F9
                F900F9F9F900F9F9F900F9F9F900F9F9F900FBFBFB00FFFFFF00FFFFFF00F0F0
                F000DFDFDF00D7D7D700D9D9D900E6E6E600F9F9F900FFFFFF00FEFEFE00FAFA
                FA00F9F9F900F9F9F900F9F9F900F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4D4D400919191005F5F5F004646
                46003E3E3E00404040004F4F4F0074747400B0B0B000F0F0F000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00EDEDED008E8E8E003D3D3D0027272700282828002C2C2C002D2D
                2D002D2D2D002A2A2A00262626002C2C2C005C5C5C00C1C1C100FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4
                E40067676700282828002D2D2D0032323200323232002B2B2B00272727002929
                29002F2F2F0032323200313131002828280039393900A7A7A700FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1006A6A6A002828
                28003131310033333300323232002F2F2F005151510073737300646464003F3F
                3F003232320033333300333333002C2C2C0035353500F0F0F000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00E4E4E4009696960029292900323232003333
                3300333333002E2E2E0059595900E1E1E100FFFFFF00CCCCCC00888888003636
                36003232320033333300333333002C2C2C0091919100FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF008D8D8D00404040002E2E2E0033333300333333003333
                33002B2B2B007F7F7F00FFFFFF00FBFBFB00616161003A3A3A00353535003232
                32003333330033333300333333003D3D3D00DCDCDC00FFFFFF00FFFFFF00FFFF
                FF00F3F3F3004949490029292900333333003333330033333300333333002D2D
                2D0063636300F6F6F600FDFDFD006D6D6D002828280033333300333333003333
                330033333300333333002424240099999900FFFFFF00FFFFFF00FFFFFF00CECE
                CE002C2C2C002B2B2B0033333300333333003333330033333300303030003E3E
                3E00DEDEDE00FFFFFF00A4A4A4002A2A2A003333330033333300333333003333
                3300333333002626260064646400FCFCFC00FFFFFF00FFFFFF00B2B2B2002424
                24002E2E2E0033333300333333003333330033333300323232002C2C2C00ADAD
                AD00FFFFFF00D7D7D70038383800313131003333330033333300333333003333
                33002B2B2B0049494900F4F4F400FFFFFF00FFFFFF00A7A7A700242424003030
                300033333300333333003333330033333300323232002121210084848400FFFF
                FF00F5F5F500505050002E2E2E00333333003333330033333300333333002D2D
                2D0041414100EFEFEF00FFFFFF00FFFFFF00ACACAC00242424002F2F2F003333
                33003333330033333300303030004242420085858500CDCDCD00FFFFFF00EDED
                ED00494949002F2F2F00333333003333330033333300333333002C2C2C004545
                4500F2F2F200FFFFFF00FFFFFF00C1C1C100282828002D2D2D00333333003333
                330033333300313131003737370072727200A5A5A500ABABAB00676767002D2D
                2D0032323200333333003333330033333300333333002828280057575700F9F9
                F900FFFFFF00FFFFFF00E6E6E6003A3A3A002929290033333300333333003333
                3300333333003131310029292900282828002B2B2B0044444400393939003030
                3000333333003333330033333300333333002323230082828200FFFFFF00FFFF
                FF00FFFFFF00FEFEFE006E6E6E00313131003131310033333300333333003333
                330033333300323232002F2F2F0096969600E9E9E900B7B7B7003D3D3D003131
                31003333330033333300333333002D2D2D00C2C2C200FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00C5C5C5006D6D6D00282828003333330033333300333333003333
                33003232320033333300D3D3D300FFFFFF00F5F5F5004D4D4D002E2E2E003333
                3300333333003030300069696900F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FEFEFE00D5D5D500424242002B2B2B003232320033333300333333003333
                33002F2F2F0066666600B8B8B800848484003434340032323200333333003131
                310028282800D2D2D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00BABABA003C3C3C00282828003232320033333300333333003333
                33002C2C2C002E2E2E002C2C2C0031313100333333002F2F2F00272727006F6F
                6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00C3C3C30052525200262626002A2A2A0030303000323232003232
                320030303000313131002E2E2E00262626003131310084848400EEEEEE00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00E9E9E900969696004E4E4E002F2F2F0025252500242424002424
                2400282828003A3A3A006C6C6C00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00F5F5F500D1D1D100B5B5B500AAAAAA00ADADAD00C0C0
                C000E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = LinesHelpClick
            end
            object LinesLoadFromFile: TBitBtn
              Left = 3
              Top = 4
              Width = 75
              Height = 33
              Caption = 'Open'
              TabOrder = 0
              OnClick = LinesLoadFromFileClick
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54A9D02A8AB570
                ABC7BCD8E6FBFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F6
                FD089CCD078CBC0CD1FF00A3D60789BF54A4CAA1D0E6EEF9FDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFA0CEE428C4E90B89B723E1FF1DDBFF19DDFF13D8FF07B1E20090
                C4399CC784C0DCD0E7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF50A2C956F4FF0D86B636E3FF2CDAFF29D9FF
                26DAFF20DAFF1CDDFF18DEFF10C1F00297CB1383B564ABCDB3D8E9F9FDFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFF148FBB70FFFF0D89B74B
                E8FF3CDFFF38DEFF34DDFF30DBFF2BDAFF26D9FF22D9FF25DCFF25DEFF20CFFD
                0FA6D80789BD499CC596C8E0E9F4FAFFFFFFFFFFFFFFFFFFFFFFFFB2D8EB3BB8
                D880FFFF0F8AB860EFFF4CE4FF48E3FF43E2FF3FE0FF3ADFFF35DDFF30DBFF2D
                DAFF2DD9FF2FD9FF31DAFF33DCFF32D9FF1DAED83A8EB6FFFFFFFFFFFFFFFFFF
                FFFFFF55A8CF84F8FD8FFFFF118DB976F4FF5CEAFF57E8FF53E7FF4EE5FF49E3
                FF44E2FF3EE0FF39DEFF37DCFF38DBFF39D9FF3AD7FF38D5FF59DDF7298EB9FF
                FFFFFFFFFFFFFFFFFCFFFF1C8EBAAAFFFFA0FFFF1390BD8AFBFF6AEFFF67EDFF
                62ECFF5DEAFF58E8FF52E7FF4DE5FF47E3FF43E1FF43DFFF44DEFF46DEFF3CCF
                F28DF3FF268CB6FFFFFFFFFFFFFFFFFFAFD9EB58C1D9AFFFFFADFFFF1493BD9F
                FFFF7BF4FF76F3FF71F1FF6CEFFF66EDFF61ECFF5BEAFF56E8FF50E6FF4DE4FF
                4EE2FF4FE1FF4DCFEAB5FFFF238DB6FFFFFFFFFFFFFFFFFF4CA5CEB5FFFFB4FF
                FFB7FFFF1393BFB2FFFF89F9FF85F8FF80F6FF7AF4FF75F2FF6FF0FF69EEFF64
                EDFF5EEBFF59E9FF59E8FF54E0F981E7F4BDFFFF258DB7FFFFFFFFFFFFF6FBFD
                2594BFD4FFFFBAFFFFC3FFFF1493C0C3FFFF97FFFF93FCFF8FFAFF88FAFF82F7
                FF7EF5FF77F3FF71F1FF6BEFFF66EDFF65EDFF5CDAEEB8FFFFC5FFFF278FB8FF
                FFFFFFFFFF9ECADE7CC8DDD6FFFFC4FFFFCDFFFF1394C3CDFFFFA1FEFF9DFDFF
                98FCFF92FAFF8DF8FF87F7FF81F5FF7BF3FF76F1FF70F0FF69EBFC89E6F0C4FF
                FFCEFFFF298FB8FFFFFFFFFFFF449AC0FEFFFFF1FFFFE2FFFFE7FFFF1B9CC7DC
                FFFFABFFFFAAFFFFA2FCFF9DFCFF96F9FF90F7FF8AF5FF85F4FF7FF2FF79F2FF
                6CE0F2BEFCFBC6FFFFD5FFFF2A91B9FFFFFFFFFFFF6DBDDE41A6D33EACD938AA
                D735A5CD0085BBD1FCFE9AEFF7A2F5F9A3FAFBA3FCFEA1FCFF9BFBFF95F9FF8E
                F6FF89F4FF80F1FF8CE5F0D3FFFFCAFFFFDDFFFF2A90BBFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFFFF2AA0CDF5FFFFBAF3F8B2EEF5A8EAF49EE4F097E3
                F08FE4F087E2F282E3F381E5F579E0F2C2F7FAD4FFFFD1FFFFE6FFFF2B92BAFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF34B4E2FFFFFFE2FFFFE3FFFF
                E3FFFFE1FFFFE2FFFFE3FFFFE3FFFFE1FFFFD7FEFECCF9FBDFFFFFDAFFFFD8FF
                FFEDFFFF2C91BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BBBE8E2
                F9FCDEF7FAEAFCFDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE8FFFFE2FFFF
                E0FFFFE0FFFFDFFFFFF5FFFF2E93BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFB3ECFF7BD0F06DCBED64C5EA55C0E74CBAE444B4DF3EB4E23DB0DC18
                93C4FFFFFFEAFFFFE8FFFFE7FFFFE7FFFFFFFFFF3194BDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF79C7E6D8EFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A97BFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2EEF92998C241A2C83D9FC63D9CC53F9D
                C32D93BD9BCADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
          end
          object Lines: TMemo
            Left = 1
            Top = 42
            Width = 505
            Height = 380
            Align = alClient
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                'merge [select id from contact where id='#39'0032X00002Hjg2RQAR'#39' ][0]' +
                ' [select id from contact  where id='#39'0032X000028YWsVQAW'#39' ][0] ;'
              
                'merge [select id from contact where id='#39'003w000001qkMH0AAM'#39' ][0]' +
                ' [select id from contact  where id='#39'003w000001y8nLGAAY'#39' ][0] ;'
              
                'merge [select id from contact where id='#39'003w000001qkMH0AAM'#39' ][0]' +
                ' [select id from contact  where id='#39'003w000001xj4SVAAY'#39' ][0] ;')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
            WordWrap = False
            OnKeyUp = LinesKeyUp
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Run !'
      ImageIndex = 2
      OnResize = TabSheet3Resize
      object Panel8: TPanel
        Left = 0
        Top = 423
        Width = 1234
        Height = 200
        Align = alBottom
        TabOrder = 0
        object ButtonsPanel3: TPanel
          Left = 272
          Top = 2
          Width = 673
          Height = 193
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            673
            193)
          object Back3: TSpeedButton
            Left = 8
            Top = 8
            Width = 300
            Height = 185
            Caption = '<< Back'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = Back3Click
          end
          object RunBtn: TSpeedButton
            Left = 340
            Top = 8
            Width = 300
            Height = 185
            Anchors = [akTop]
            Caption = 'Run !'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = RunBtnClick
          end
          object GenerateAndExecute: TSpeedButton
            Left = 641
            Top = 8
            Width = 25
            Height = 185
            Anchors = [akTop]
            Flat = True
            Glyph.Data = {
              BE000000424DBE0000000000000076000000280000000A000000090000000100
              0400000000004800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
              0000FFFFFFFFFF000000FFFFFFFFFF000000FFFFF0FFFF000000FFFF000FFF00
              0000FFF00000FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF00
              0000}
            OnClick = GenerateAndExecuteClick
          end
        end
      end
      object ConfigPanel: TGroupBox
        Left = 232
        Top = 32
        Width = 753
        Height = 153
        Caption = 'Configuration'
        TabOrder = 1
        object Label5: TLabel
          Left = 24
          Top = 24
          Width = 104
          Height = 13
          Caption = 'Parallel processes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 24
          Top = 72
          Width = 66
          Height = 13
          Caption = 'Working dir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 712
          Top = 88
          Width = 25
          Height = 21
          Caption = '...'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object Label10: TLabel
          Left = 93
          Top = 71
          Width = 208
          Height = 16
          Caption = '- folder with temporary files and log.'
        end
        object PasswordNotProvided: TLabel
          Left = 24
          Top = 120
          Width = 194
          Height = 16
          Caption = 'The password was not provided.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object processes: TEdit
          Left = 24
          Top = 40
          Width = 41
          Height = 21
          BevelKind = bkFlat
          BevelOuter = bvSpace
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1'
          OnChange = processesChange
        end
        object workingDir: TDirectoryEdit
          Left = 24
          Top = 88
          Width = 689
          Height = 21
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = '*'
    Left = 96
    Top = 328
  end
  object Popup: TPopupMenu
    Left = 448
    Top = 32
    object Basicexample1: TMenuItem
      Caption = 'Example 1: Basic example'
      OnClick = Basicexample1Click
    end
    object WritingErrorToGenerallog1: TMenuItem
      Caption = 'Example 2: Writing error to General.log'
      OnClick = WritingErrorToGenerallog1Click
    end
    object Mergeaccount1: TMenuItem
      Caption = 'Example 3: Merge accounts'
      OnClick = Mergeaccount1Click
    end
    object Example7Mergecontactsbasic1: TMenuItem
      Caption = 'Example 4: Merge contacts (basic)'
      OnClick = Example7Mergecontactsbasic1Click
    end
    object Mergecontacts1: TMenuItem
      Caption = 'Example 5: Merge contacts (advanced)'
      OnClick = Mergecontacts1Click
    end
    object Example5ConvertLead1: TMenuItem
      Caption = 'Example 6: Convert Leads'
      OnClick = Example5ConvertLead1Click
    end
    object Example6ConvertAttachmentsintoFiles1: TMenuItem
      Caption = 'Example 7: Convert Attachments into Files'
      OnClick = Example6ConvertAttachmentsintoFiles1Click
    end
    object Example8Lockopportunities1: TMenuItem
      Caption = 'Example 8: Lock opportunities'
      OnClick = Example8Lockopportunities1Click
    end
    object Example9OpportunitySplit1: TMenuItem
      Caption = 'Example 9: OpportunitySplit'
      OnClick = Example9OpportunitySplit1Click
    end
    object Example10Infiniteloop1: TMenuItem
      Caption = 'Example 10: Infinite loop'
      OnClick = Example10Infiniteloop1Click
    end
    object Example11AccountFuzzySearch1: TMenuItem
      Caption = 'Example 11:Account: Fuzzy Search'
      OnClick = Example11AccountFuzzySearch1Click
    end
  end
  object Gen: TPopupMenu
    Left = 328
    Top = 208
    object MenuItem1: TMenuItem
      Caption = 
        'Generate files but do not execute it yet (I will run it manually' +
        ' later on)'
      OnClick = MenuItem1Click
    end
  end
end
