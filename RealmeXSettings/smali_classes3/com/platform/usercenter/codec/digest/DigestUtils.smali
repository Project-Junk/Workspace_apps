.class public Lcom/platform/usercenter/codec/digest/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMd5Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    .line 57
    invoke-static {v0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getShaDigest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA"

    .line 69
    invoke-static {v0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->md5([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B)[B
    .locals 1

    .line 81
    invoke-static {}, Lcom/platform/usercenter/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->md5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static sha(Ljava/lang/String;)[B
    .locals 0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->sha([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha([B)[B
    .locals 1

    .line 128
    invoke-static {}, Lcom/platform/usercenter/codec/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static shaHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->sha(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static shaHex([B)Ljava/lang/String;
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/platform/usercenter/codec/digest/DigestUtils;->sha([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
