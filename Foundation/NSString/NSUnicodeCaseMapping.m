/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */

#import <Foundation/NSData.h>
#import <Foundation/NSException.h>
#import <Foundation/NSUnicodeCaseMapping.h>

// Unicode 1.1.5

#if 0
0061 0041
0062 0042
0063 0043
0064 0044
0065 0045
0066 0046
0067 0047
0068 0048
0069 0049
006A 004A
006B 004B
006C 004C
006D 004D
006E 004E
006F 004F
0070 0050
0071 0051
0072 0052
0073 0053
0074 0054
0075 0055
0076 0056
0077 0057
0078 0058
0079 0059
007A 005A

00E0 00C0
00E1 00C1
00E2 00C2
00E3 00C3
00E4 00C4
00E5 00C5
00E6 00C6
00E7 00C7
00E8 00C8
00E9 00C9
00EA 00CA
00EB 00CB
00EC 00CC
00ED 00CD
00EE 00CE
00EF 00CF
00F0 00D0
00F1 00D1
00F2 00D2
00F3 00D3
00F4 00D4
00F5 00D5
00F6 00D6
00F8 00D8
00F9 00D9
00FA 00DA
00FB 00DB
00FC 00DC
00FD 00DD
00FE 00DE
00FF 0178

0101 0100
0103 0102
0105 0104
0107 0106
0109 0108
010B 010A
010D 010C
010F 010E
0111 0110
0113 0112
0115 0114
0117 0116
0119 0118
011B 011A
011D 011C
011F 011E
0121 0120
0123 0122
0125 0124
0127 0126
0129 0128
012B 012A
012D 012C
012F 012E
0133 0132
0135 0134
0137 0136
013A 0139
013C 013B
013E 013D
0140 013F
0142 0141
0144 0143
0146 0145
0148 0147
014B 014A
014D 014C
014F 014E
0151 0150
0153 0152
0155 0154
0157 0156
0159 0158
015B 015A
015D 015C
015F 015E
0161 0160
0163 0162
0165 0164
0167 0166
0169 0168
016B 016A
016D 016C
016F 016E
0171 0170
0173 0172
0175 0174
0177 0176
017A 0179
017C 017B
017E 017D
017F 0053
0183 0182
0185 0184
0188 0187
018C 018B
0192 0191
0199 0198
01A1 01A0
01A3 01A2
01A5 01A4
01A8 01A7
01AD 01AC
01B0 01AF
01B4 01B3
01B6 01B5
01B9 01B8
01BD 01BC
01C5 01C4
01C6 01C4
01C8 01C7
01C9 01C7
01CB 01CA
01CC 01CA
01CE 01CD
01D0 01CF
01D2 01D1
01D4 01D3
01D6 01D5
01D8 01D7
01DA 01D9
01DC 01DB
01DF 01DE
01E1 01E0
01E3 01E2
01E5 01E4
01E7 01E6
01E9 01E8
01EB 01EA
01ED 01EC
01EF 01EE
01F2 01F1
01F3 01F1
01F5 01F4
01FB 01FA
01FD 01FC
01FF 01FE

0201 0200
0203 0202
0205 0204
0207 0206
0209 0208
020B 020A
020D 020C
020F 020E
0211 0210
0213 0212
0215 0214
0217 0216
0253 0181
0254 0186
0257 018A
0258 018E
0259 018F
025B 0190
0260 0193
0263 0194
0268 0197
0269 0196
026F 019C
0272 019D
0283 01A9
0288 01AE
028A 01B1
028B 01B2
0292 01B7
03AC 0386
03AD 0388
03AE 0389
03AF 038A
03B1 0391
03B2 0392
03B3 0393
03B4 0394
03B5 0395
03B6 0396
03B7 0397
03B8 0398
03B9 0399
03BA 039A
03BB 039B
03BC 039C
03BD 039D
03BE 039E
03BF 039F
03C0 03A0
03C1 03A1
03C3 03A3
03C4 03A4
03C5 03A5
03C6 03A6
03C7 03A7
03C8 03A8
03C9 03A9
03CA 03AA
03CB 03AB
03CC 038C
03CD 038E
03CE 038F
03D0 0392
03D1 0398
03D5 03A6
03D6 03A0
03E3 03E2
03E5 03E4
03E7 03E6
03E9 03E8
03EB 03EA
03ED 03EC
03EF 03EE
03F0 039A
03F1 03A1
0430 0410
0431 0411
0432 0412
0433 0413
0434 0414
0435 0415
0436 0416
0437 0417
0438 0418
0439 0419
043A 041A
043B 041B
043C 041C
043D 041D
043E 041E
043F 041F
0440 0420
0441 0421
0442 0422
0443 0423
0444 0424
0445 0425
0446 0426
0447 0427
0448 0428
0449 0429
044A 042A
044B 042B
044C 042C
044D 042D
044E 042E
044F 042F
0451 0401
0452 0402
0453 0403
0454 0404
0455 0405
0456 0406
0457 0407
0458 0408
0459 0409
045A 040A
045B 040B
045C 040C
045E 040E
045F 040F
0461 0460
0463 0462
0465 0464
0467 0466
0469 0468
046B 046A
046D 046C
046F 046E
0471 0470
0473 0472
0475 0474
0477 0476
0479 0478
047B 047A
047D 047C
047F 047E
0481 0480
0491 0490
0493 0492
0495 0494
0497 0496
0499 0498
049B 049A
049D 049C
049F 049E
04A1 04A0
04A3 04A2
04A5 04A4
04A7 04A6
04A9 04A8
04AB 04AA
04AD 04AC
04AF 04AE
04B1 04B0
04B3 04B2
04B5 04B4
04B7 04B6
04B9 04B8
04BB 04BA
04BD 04BC
04BF 04BE
04C2 04C1
04C4 04C3
04C8 04C7
04CC 04CB
04D1 04D0
04D3 04D2
04D5 04D4
04D7 04D6
04D9 04D8
04DB 04DA
04DD 04DC
04DF 04DE
04E1 04E0
04E3 04E2
04E5 04E4
04E7 04E6
04E9 04E8
04EB 04EA
04EF 04EE
04F1 04F0
04F3 04F2
04F5 04F4
04F9 04F8
0561 0531
0562 0532
0563 0533
0564 0534
0565 0535
0566 0536
0567 0537
0568 0538
0569 0539
056A 053A
056B 053B
056C 053C
056D 053D
056E 053E
056F 053F
0570 0540
0571 0541
0572 0542
0573 0543
0574 0544
0575 0545
0576 0546
0577 0547
0578 0548
0579 0549
057A 054A
057B 054B
057C 054C
057D 054D
057E 054E
057F 054F
0580 0550
0581 0551
0582 0552
0583 0553
0584 0554
0585 0555
0586 0556
1E01 1E00
1E03 1E02
1E05 1E04
1E07 1E06
1E09 1E08
1E0B 1E0A
1E0D 1E0C
1E0F 1E0E
1E11 1E10
1E13 1E12
1E15 1E14
1E17 1E16
1E19 1E18
1E1B 1E1A
1E1D 1E1C
1E1F 1E1E
1E21 1E20
1E23 1E22
1E25 1E24
1E27 1E26
1E29 1E28
1E2B 1E2A
1E2D 1E2C
1E2F 1E2E
1E31 1E30
1E33 1E32
1E35 1E34
1E37 1E36
1E39 1E38
1E3B 1E3A
1E3D 1E3C
1E3F 1E3E
1E41 1E40
1E43 1E42
1E45 1E44
1E47 1E46
1E49 1E48
1E4B 1E4A
1E4D 1E4C
1E4F 1E4E
1E51 1E50
1E53 1E52
1E55 1E54
1E57 1E56
1E59 1E58
1E5B 1E5A
1E5D 1E5C
1E5F 1E5E
1E61 1E60
1E63 1E62
1E65 1E64
1E67 1E66
1E69 1E68
1E6B 1E6A
1E6D 1E6C
1E6F 1E6E
1E71 1E70
1E73 1E72
1E75 1E74
1E77 1E76
1E79 1E78
1E7B 1E7A
1E7D 1E7C
1E7F 1E7E
1E81 1E80
1E83 1E82
1E85 1E84
1E87 1E86
1E89 1E88
1E8B 1E8A
1E8D 1E8C
1E8F 1E8E
1E91 1E90
1E93 1E92
1E95 1E94
1EA1 1EA0
1EA3 1EA2
1EA5 1EA4
1EA7 1EA6
1EA9 1EA8
1EAB 1EAA
1EAD 1EAC
1EAF 1EAE
1EB1 1EB0
1EB3 1EB2
1EB5 1EB4
1EB7 1EB6
1EB9 1EB8
1EBB 1EBA
1EBD 1EBC
1EBF 1EBE
1EC1 1EC0
1EC3 1EC2
1EC5 1EC4
1EC7 1EC6
1EC9 1EC8
1ECB 1ECA
1ECD 1ECC
1ECF 1ECE
1ED1 1ED0
1ED3 1ED2
1ED5 1ED4
1ED7 1ED6
1ED9 1ED8
1EDB 1EDA
1EDD 1EDC
1EDF 1EDE
1EE1 1EE0
1EE3 1EE2
1EE5 1EE4
1EE7 1EE6
1EE9 1EE8
1EEB 1EEA
1EED 1EEC
1EEF 1EEE
1EF1 1EF0
1EF3 1EF2
1EF5 1EF4
1EF7 1EF6
1EF9 1EF8
1F00 1F08
1F01 1F09
1F02 1F0A
1F03 1F0B
1F04 1F0C
1F05 1F0D
1F06 1F0E
1F07 1F0F
1F10 1F18
1F11 1F19
1F12 1F1A
1F13 1F1B
1F14 1F1C
1F15 1F1D
1F20 1F28
1F21 1F29
1F22 1F2A
1F23 1F2B
1F24 1F2C
1F25 1F2D
1F26 1F2E
1F27 1F2F
1F30 1F38
1F31 1F39
1F32 1F3A
1F33 1F3B
1F34 1F3C
1F35 1F3D
1F36 1F3E
1F37 1F3F
1F40 1F48
1F41 1F49
1F42 1F4A
1F43 1F4B
1F44 1F4C
1F45 1F4D
1F51 1F59
1F53 1F5B
1F55 1F5D
1F57 1F5F
1F60 1F68
1F61 1F69
1F62 1F6A
1F63 1F6B
1F64 1F6C
1F65 1F6D
1F66 1F6E
1F67 1F6F
1F70 1FBA
1F71 1FBB
1F72 1FC8
1F73 1FC9
1F74 1FCA
1F75 1FCB
1F76 1FDA
1F77 1FDB
1F78 1FF8
1F79 1FF9
1F7A 1FEA
1F7B 1FEB
1F7C 1FFA
1F7D 1FFB
1F80 1F88
1F81 1F89
1F82 1F8A
1F83 1F8B
1F84 1F8C
1F85 1F8D
1F86 1F8E
1F87 1F8F
1F90 1F98
1F91 1F99
1F92 1F9A
1F93 1F9B
1F94 1F9C
1F95 1F9D
1F96 1F9E
1F97 1F9F
1FA0 1FA8
1FA1 1FA9
1FA2 1FAA
1FA3 1FAB
1FA4 1FAC
1FA5 1FAD
1FA6 1FAE
1FA7 1FAF
1FB0 1FB8
1FB1 1FB9
1FB3 1FBC
1FC3 1FCC
1FD0 1FD8
1FD1 1FD9
1FE0 1FE8
1FE1 1FE9
1FE5 1FEC
1FF3 1FFC
2170 2160
2171 2161
2172 2162
2173 2163
2174 2164
2175 2165
2176 2166
2177 2167
2178 2168
2179 2169
217A 216A
217B 216B
217C 216C
217D 216D
217E 216E
217F 216F
24D0 24B6
24D1 24B7
24D2 24B8
24D3 24B9
24D4 24BA
24D5 24BB
24D6 24BC
24D7 24BD
24D8 24BE
24D9 24BF
24DA 24C0
24DB 24C1
24DC 24C2
24DD 24C3
24DE 24C4
24DF 24C5
24E0 24C6
24E1 24C7
24E2 24C8
24E3 24C9
24E4 24CA
24E5 24CB
24E6 24CC
24E7 24CD
24E8 24CE
24E9 24CF

FF41 FF21
FF42 FF22
FF43 FF23
FF44 FF24
FF45 FF25
FF46 FF26
FF47 FF27
FF48 FF28
FF49 FF29
FF4A FF2A
FF4B FF2B
FF4C FF2C
FF4D FF2D
FF4E FF2E
FF4F FF2F
FF50 FF30
FF51 FF31
FF52 FF32
FF53 FF33
FF54 FF34
FF55 FF35
FF56 FF36
FF57 FF37
FF58 FF38
FF59 FF39
FF5A FF3A
#endif

static unichar _toUpperCase(unichar character) {
    if (character >= 'a' && character <= 'z')
        return character - ('a' - 'A');
    return character;
}

// FIX
void NSUnicodeToUppercase(unichar *characters, NSUInteger length) {
    NSUInteger i;

    for (i = 0; i < length; i++)
        characters[i] = _toUpperCase(characters[i]);
}

static unichar _toLowerCase(unichar character) {
    if (character >= 'A' && character <= 'Z')
        return character + ('a' - 'A');
    return character;
}

// FIX
void NSUnicodeToLowercase(unichar *characters, NSUInteger length) {
    NSUInteger i;

    for (i = 0; i < length; i++)
        characters[i] = _toLowerCase(characters[i]);
}

void NSUnicodeToCapitalized(unichar *characters, NSUInteger length) {
    NSUInteger i;
    unichar prev = ' ';

    for (i = 0; i < length; i++) {
        if (prev == ' ')
            characters[i] = _toUpperCase(characters[i]);
        else
            characters[i] = characters[i];

        prev = characters[i];
    }
}

unichar *NSUnicodeFromBytes(const unsigned char *bytes, NSUInteger length,
                            NSUInteger *resultLengthp)
{
    NSUInteger i, resultLength, resultIndex = 0;
    BOOL swap = NO;
    unichar *result;

    if (length % 2 != 0)
        [NSException raise: NSInvalidArgumentException
                    format: @"length of unicode NSData is not even (length=%d)",
                            length];

    if (length < 2)
        i = 0;
    else if (bytes[0] == 0xFE && bytes[1] == 0xFF)
        i = 2;
    else if (bytes[0] == 0xFF && bytes[1] == 0xFE) {
        swap = YES;
        i = 2;
    } else
        i = 0;

    resultLength = (length - i) / 2;
    result = NSZoneMalloc(NULL, sizeof(unichar) * resultLength);

    if (!swap) {
        for (; i < length; i += 2) {
            unichar high = bytes[i];
            unichar low = bytes[i + 1];

            result[resultIndex++] = (high << 8) | low;
        }
    } else {
        for (; i < length; i += 2) {
            unichar low = bytes[i];
            unichar high = bytes[i + 1];

            result[resultIndex++] = (high << 8) | low;
        }
    }

    *resultLengthp = resultLength;

    return result;
}

unichar *NSUnicodeFromBytesUTF16BigEndian(const unsigned char *bytes,
                                          NSUInteger length,
                                          NSUInteger *resultLengthp)
{
    NSUInteger i, resultLength, resultIndex = 0;
    unichar *result;

    if (length % 2 != 0)
        [NSException raise: NSInvalidArgumentException
                    format: @"length of unicode NSData is not even (length=%d)",
                            length];

    resultLength = length / 2;
    result = NSZoneMalloc(NULL, sizeof(unichar) * resultLength);

    i = 0;
    BOOL skippedMarker = NO;
    if (bytes[0] == 0xFE && bytes[1] == 0xFF) {
        i = 2; // Skip the marker word - internal Unicode rep doesn't use it.
        skippedMarker = YES;
    }
    for (; i < length; i += 2) {
        unichar high = bytes[i];
        unichar low = bytes[i + 1];

        result[resultIndex++] = (high << 8) | low;
    }

    *resultLengthp =
        resultLength - ((skippedMarker) ? 2 : 0); // we skipped the marker word

    return result;
}

unichar *NSUnicodeFromBytesUTF16LittleEndian(const unsigned char *bytes,
                                             NSUInteger length,
                                             NSUInteger *resultLengthp)
{
    NSUInteger i, resultLength, resultIndex = 0;
    unichar *result;

    if (length % 2 != 0)
        [NSException raise: NSInvalidArgumentException
                    format: @"length of unicode NSData is not even (length=%d)",
                            length];

    resultLength = length / 2;
    result = NSZoneMalloc(NULL, sizeof(unichar) * resultLength);

    i = 0;
    BOOL skippedMarker = NO;
    if (bytes[0] == 0xFF && bytes[1] == 0xFE) {
        i = 2; // Skip the marker word - internal Unicode rep doesn't use it.
        skippedMarker = YES;
    }
    for (; i < length; i += 2) {
        unichar high = bytes[i + 1];
        unichar low = bytes[i];

        result[resultIndex++] = (high << 8) | low;
    }

    *resultLengthp =
        resultLength - ((skippedMarker) ? 2 : 0); // we skipped the marker word

    return result;
}
