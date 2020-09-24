.class Lcom/heytap/service/accountsdk/HmacHelper;
.super Ljava/lang/Object;
.source "HmacHelper.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hmacSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 13
    invoke-static {p0, p1, v0}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 17
    invoke-static {p0, p1, v0}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 21
    invoke-static {p2}, Lcom/heytap/service/accountsdk/Utilities;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    const/16 v0, 0x40

    .line 25
    new-array v1, v0, [B

    .line 26
    new-array v2, v0, [B

    .line 31
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 40
    :goto_0
    array-length p1, v3

    const/16 p2, 0x36

    invoke-static {v1, p1, v0, p2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 41
    array-length p1, v3

    const/16 v4, 0x5c

    invoke-static {v2, p1, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p1, 0x0

    move v0, p1

    .line 42
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 44
    aget-byte v5, v3, v0

    xor-int/2addr v5, p2

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 45
    aget-byte v5, v3, v0

    xor-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string p2, "MD5"

    .line 51
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    invoke-virtual {p2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 60
    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    .line 61
    invoke-virtual {p2, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    .line 62
    invoke-virtual {p2, p0, p1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/heytap/service/accountsdk/HmacHelper;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 71
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 72
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v4, "0"

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
