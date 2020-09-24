.class public Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;
.super Ljava/lang/Object;
.source "JsonReaderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonReaderHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsonReader:Lcom/google/b/d/a;

.field private mPFD:Landroid/os/ParcelFileDescriptor;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    .line 35
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 36
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    .line 39
    iput-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    const-string v1, ", uri = "

    const-string v2, "JsonReaderHelper"

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {v0}, Lcom/google/b/d/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close endArray, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 156
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close mPFD Exception, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    if-eqz v0, :cond_2

    .line 164
    :try_start_2
    invoke-virtual {v0}, Lcom/google/b/d/a;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close mJsonWriter Exception, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    .line 170
    iput-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    const-string v1, "JsonReaderHelper"

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {v0}, Lcom/google/b/d/a;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasNext e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasNext mJsonReader is null, uri = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/net/Uri;)Z
    .locals 5

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open uri = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonReaderHelper"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "open uri is null!"

    .line 45
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    return v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    .line 55
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 56
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mPFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 59
    new-instance v2, Lcom/google/b/d/a;

    invoke-direct {v2, v3}, Lcom/google/b/d/a;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    .line 60
    iget-object v2, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    invoke-virtual {v2}, Lcom/google/b/d/a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v2, "open, mPFD is null, uri = "

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open, exception uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->close()V

    return v0
.end method

.method public readNextJsonElement()Lcom/google/b/k;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObjectString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/google/b/p;

    invoke-direct {v1}, Lcom/google/b/p;-><init>()V

    invoke-static {v0}, Lcom/google/b/p;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readNextJsonObject()Lcom/google/b/n;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObjectString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/google/b/p;

    invoke-direct {v1}, Lcom/google/b/p;-><init>()V

    invoke-static {v0}, Lcom/google/b/p;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v0

    check-cast v0, Lcom/google/b/n;

    check-cast v0, Lcom/google/b/n;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readNextJsonObjectString()Ljava/lang/String;
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mJsonReader:Lcom/google/b/d/a;

    const/4 v1, 0x0

    const-string v2, "JsonReaderHelper"

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "readNextJsonObjectString mJsonReader is null, uri = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/b/d/a;->i()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readNextJsonObjectString e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public readNextJsonObjects(I)Lcom/google/b/i;
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v1, Lcom/google/b/i;

    invoke-direct {v1}, Lcom/google/b/i;-><init>()V

    const/4 v2, 0x0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObject()Lcom/google/b/n;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 118
    invoke-virtual {v1, v3}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    :cond_2
    if-lt v2, p1, :cond_1

    .line 125
    :cond_3
    invoke-virtual {v1}, Lcom/google/b/i;->a()I

    move-result p1

    if-lez p1, :cond_4

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "readNextJsonObject, size = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/b/i;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JsonReaderHelper"

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    return-object v0
.end method
