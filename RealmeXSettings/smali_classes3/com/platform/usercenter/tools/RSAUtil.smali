.class public Lcom/platform/usercenter/tools/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final Key:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDpgSW5VkZ6/xvh+wMXezrOokNdiupuvuMj4RVJy44byWDupl4H37z907A26RVdFzMeyLUQB4rsDIaXdxCODlljWW+/K96uF5MsDtOFUBw7VlOclIjcYTv/YDQEul8JoXoOuy1Yf3b5sbTpTuVTcl97tAuLJ8PoGe2K7N3B1eUQqQIDAQAB"

.field private static final algorithm:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# instance fields
.field private privateKey:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJ/m+IalifV25G33DPBxrVIS4v7DCcF8F/NrSdO4s9hHm5nKF5SgUj5y50314HiOW9eKPjIDEfn0wvwGFVRpv+P5OZ4OwJ744umzB0dYRe1jUdpwunD/CmwpAcFBliEABFlHH/gnn9+LP+klwfmpUZgrRi7xz0I2X394cNCSP0uhAgMBAAECgYA3G2inLsG+4LyU0UGaU/MBiBTG6/yeu9+dOmp1FwCUFwmfFLDPvfjaIMtqaMR1h8pLHA+XOMunMx1HsekD8HX61B2AT3gHRNHWCO+XUOnrUZmz1fBuxltE6f6VNKtZIsyIbzFL+C6Deae2JUC7R0Y0lHvRadJxjzdEPKvNkHFlaQJBAO08FSWuTAjwo7uwZNTcSEv6zr3DDW3C23P6b41Jae0UusqMXbwXk0i1/nGPMzmtOw/MFsWyP5v+zE/p32Q9cv8CQQCsjO76QDKOdSGYs3BqPHaOriVjE/0vjapx1/kN/ohC0QZWBRISjSzzxgOskldbvp2u6Tf1TTBI5XSGWnC8IWFfAkEAuljCp7mUokUb5/d0DLwH0h7tvKN1be1s4loqu8mZ+g+Zdjbx/ihqmefTOTJp43lOdmcy0BHm40svA+rKffvC0wJAMMgnR9iecmfq96DDR0WQvwW8zCX6jlceuNC2OJ6dJ0aw4+DLGzOOYdy5bTByQh3BtpF4oIESBYnZR6KJ/KXzQQJBAOM8ajM0k36VCIj4tWjXLCL7dCdsBpzYKDzJ4rl6Jg8synUUKnJJTUWzistsoMUBgmCzQDzZuRP3wuVW2T0s/cI="

    .line 30
    iput-object v0, p0, Lcom/platform/usercenter/tools/RSAUtil;->privateKey:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCf5viGpYn1duRt9wzwca1SEuL+wwnBfBfza0nTuLPYR5uZyheUoFI+cudN9eB4jlvXij4yAxH59ML8BhVUab/j+TmeDsCe+OLpswdHWEXtY1HacLpw/wpsKQHBQZYhAARZRx/4J5/fiz/pJcH5qVGYK0Yu8c9CNl9/eHDQkj9LoQIDAQAB"

    .line 41
    iput-object v0, p0, Lcom/platform/usercenter/tools/RSAUtil;->publicKey:Ljava/lang/String;

    return-void
.end method

.method private static base64Decode([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 210
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 181
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 182
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lcom/platform/usercenter/tools/RSAUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "RSA"

    .line 104
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 105
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 106
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    .line 107
    invoke-static {p0}, Lcom/platform/usercenter/tools/RSAUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 108
    invoke-static {p0, p1}, Lcom/platform/usercenter/tools/RSAUtil;->splitBytes([BI)[[B

    move-result-object p0

    .line 109
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 111
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/platform/usercenter/tools/RSAUtil;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 139
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 140
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 141
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    .line 142
    invoke-static {p0}, Lcom/platform/usercenter/tools/RSAUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 143
    invoke-static {p0, p1}, Lcom/platform/usercenter/tools/RSAUtil;->splitBytes([BI)[[B

    move-result-object p0

    .line 144
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 146
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lcom/platform/usercenter/tools/RSAUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "RSA"

    .line 122
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 124
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0xb

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/platform/usercenter/tools/RSAUtil;->splitBytes([BI)[[B

    move-result-object p0

    .line 126
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 128
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/RSAUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/platform/usercenter/tools/RSAUtil;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 87
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0xb

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/platform/usercenter/tools/RSAUtil;->splitBytes([BI)[[B

    move-result-object p0

    .line 91
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 93
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/RSAUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generalKeyPair()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 46
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x400

    .line 47
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 49
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    .line 53
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u516c\u94a5\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/tools/RSAUtil;->base64Decode([B)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u79c1\u94a5\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/RSAUtil;->base64Decode([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/tools/RSAUtil;->base64Decode([B)[B

    move-result-object p0

    .line 76
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 77
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 78
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/tools/RSAUtil;->base64Decode([B)[B

    move-result-object p0

    .line 66
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 67
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 5

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 195
    new-array v1, v0, [B

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 199
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/platform/usercenter/tools/RSAUtil;->toByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/RSAUtil;->toByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static splitBytes([BI)[[B
    .locals 7

    .line 155
    array-length v0, p0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 157
    array-length v0, p0

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    .line 161
    :goto_0
    new-array v1, v0, [[B

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1

    .line 165
    array-length v4, p0

    rem-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 166
    array-length v4, p0

    rem-int/2addr v4, p1

    new-array v4, v4, [B

    mul-int v5, v3, p1

    .line 167
    array-length v6, p0

    rem-int/2addr v6, p1

    invoke-static {p0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 169
    :cond_1
    new-array v4, p1, [B

    mul-int v5, v3, p1

    .line 170
    invoke-static {p0, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :goto_2
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private static toByte(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method
