.class public Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;
.super Ljava/lang/Object;
.source "JsonWriterHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonWriterHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsonWriter:Lcom/google/b/d/c;

.field private mPFD:Landroid/os/ParcelFileDescriptor;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    .line 33
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 34
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    .line 36
    iput-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public appendJsonArrayToFile(Lcom/google/b/i;)Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "JsonWriterHelper"

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "appendJsonArrayToFile jsonArray is null, uri = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    if-nez v2, :cond_1

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "appendJsonArrayToFile mJsonWriter is null, uri = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/google/b/i;->a()I

    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appendJsonArrayToFile, size = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    :goto_0
    const-string v4, ", uri = "

    const/4 v5, 0x1

    if-ge v3, v2, :cond_3

    .line 86
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/google/b/i;->a(I)Lcom/google/b/k;

    move-result-object v6

    check-cast v6, Lcom/google/b/n;

    if-eqz v6, :cond_2

    .line 88
    iget-object v7, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    invoke-virtual {v6}, Lcom/google/b/n;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/b/d/c;->b(Ljava/lang/String;)Lcom/google/b/d/c;

    goto :goto_1

    .line 90
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appendJsonArrayToFile jsonObject is null, i = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    invoke-virtual {p1}, Lcom/google/b/d/c;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appendJsonArrayToFile e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v5

    :goto_2
    if-nez p1, :cond_4

    return v5

    :cond_4
    return v0
.end method

.method public appendJsonObjectToFile(Lcom/google/b/n;)Z
    .locals 5

    const-string v0, "JsonWriterHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "appendJsonObjectToFile jsonArray is null, uri = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    if-nez v2, :cond_1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "appendJsonObjectToFile mJsonWriter is null, uri = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v3, 0x1

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/google/b/n;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/b/d/c;->b(Ljava/lang/String;)Lcom/google/b/d/c;

    .line 113
    iget-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    invoke-virtual {p1}, Lcom/google/b/d/c;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "appendJsonObjectToFile e = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    :goto_0
    if-nez p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public close()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    const-string v1, ", uri = "

    const-string v2, "JsonWriterHelper"

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-virtual {v0}, Lcom/google/b/d/c;->b()Lcom/google/b/d/c;

    .line 129
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    invoke-virtual {v0}, Lcom/google/b/d/c;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close endArray, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 136
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close mPFD Exception, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    if-eqz v0, :cond_2

    .line 144
    :try_start_2
    invoke-virtual {v0}, Lcom/google/b/d/c;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close mJsonWriter Exception, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    .line 150
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroid/net/Uri;)Z
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "JsonWriterHelper"

    if-nez v0, :cond_0

    const-string p1, "open context is null !"

    .line 41
    invoke-static {v2, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "open uri is null !"

    .line 46
    invoke-static {v2, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mUri:Landroid/net/Uri;

    .line 53
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wa"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 54
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 56
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    .line 57
    new-instance v0, Lcom/google/b/d/c;

    invoke-direct {v0, v3}, Lcom/google/b/d/c;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    .line 58
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->mJsonWriter:Lcom/google/b/d/c;

    invoke-virtual {v0}, Lcom/google/b/d/c;->a()Lcom/google/b/d/c;

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "open, mPFD is null, uri = "

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open, exception uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->close()V

    return v1
.end method
