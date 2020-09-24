.class public Lcom/heytap/cloud/sdk/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static final BYTE_BUFFER_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MD5Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToHexString([B)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_4

    .line 112
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 118
    aget-byte v2, p0, v1

    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    :cond_1
    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    const-string v3, "0"

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const-string v0, "getMD5, close FileInputStream, e = "

    const-string v1, "getMD5, close ParcelFileDescriptor, e = "

    const/4 v2, 0x0

    const-string v3, "MD5Utils"

    if-nez p0, :cond_0

    const-string p0, "getMD5 context is null"

    .line 62
    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "getMD5 uri is null"

    .line 66
    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 74
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "r"

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 76
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 77
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "MD5"

    .line 78
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v6, 0x400

    .line 79
    :try_start_3
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 80
    invoke-virtual {v5, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    :goto_0
    if-lez v9, :cond_3

    .line 82
    invoke-virtual {v4, v7, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    invoke-virtual {v5, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    move-object v4, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v2

    goto/16 :goto_6

    :catch_2
    move-exception v6

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v2

    move-object v5, v4

    :cond_3
    if-eqz p0, :cond_4

    .line 91
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    .line 98
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p0, v2

    move-object v5, p0

    goto :goto_6

    :catch_5
    move-exception v6

    move-object p0, v2

    move-object v4, p0

    :goto_2
    move-object v5, v4

    .line 87
    :goto_3
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getMD5 uri = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p0, :cond_5

    .line 91
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    .line 98
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    .line 105
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->convertToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz p0, :cond_8

    .line 91
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 98
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_9
    :goto_8
    throw p1
.end method

.method public static getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "UTF-8"

    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getMD5 e = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MD5Utils"

    invoke-static {p1, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 51
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->convertToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMD5 e = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5Utils"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
