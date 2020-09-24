.class public final Lcom/b/a/w;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)[B
    .locals 1

    const-string v0, "MD5"

    .line 1058
    invoke-static {v0}, Lcom/b/a/w;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method
