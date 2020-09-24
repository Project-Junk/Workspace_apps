.class public Lcom/github/javiersantos/licensing/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field public extra:Ljava/lang/String;

.field public nonce:I

.field public packageName:Ljava/lang/String;

.field public responseCode:I

.field public timestamp:J

.field public userId:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/github/javiersantos/licensing/ResponseData;
    .locals 8
    .param p0, "responseData"    # Ljava/lang/String;

    .line 52
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 54
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 55
    move-object v2, p0

    .line 56
    .local v2, "mainData":Ljava/lang/String;
    const-string v3, ""

    .local v3, "extraData":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v2    # "mainData":Ljava/lang/String;
    .end local v3    # "extraData":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 59
    .restart local v2    # "mainData":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3    # "extraData":Ljava/lang/String;
    :goto_0
    const-string v4, "|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "fields":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2

    .line 67
    new-instance v5, Lcom/github/javiersantos/licensing/ResponseData;

    invoke-direct {v5}, Lcom/github/javiersantos/licensing/ResponseData;-><init>()V

    .line 68
    .local v5, "data":Lcom/github/javiersantos/licensing/ResponseData;
    iput-object v3, v5, Lcom/github/javiersantos/licensing/ResponseData;->extra:Ljava/lang/String;

    .line 69
    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/github/javiersantos/licensing/ResponseData;->responseCode:I

    .line 70
    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/github/javiersantos/licensing/ResponseData;->nonce:I

    .line 71
    const/4 v1, 0x2

    aget-object v1, v4, v1

    iput-object v1, v5, Lcom/github/javiersantos/licensing/ResponseData;->packageName:Ljava/lang/String;

    .line 72
    const/4 v1, 0x3

    aget-object v1, v4, v1

    iput-object v1, v5, Lcom/github/javiersantos/licensing/ResponseData;->versionCode:Ljava/lang/String;

    .line 74
    const/4 v1, 0x4

    aget-object v1, v4, v1

    iput-object v1, v5, Lcom/github/javiersantos/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 75
    const/4 v1, 0x5

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/github/javiersantos/licensing/ResponseData;->timestamp:J

    .line 77
    return-object v5

    .line 64
    .end local v5    # "data":Lcom/github/javiersantos/licensing/ResponseData;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wrong number of fields."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->responseCode:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->nonce:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->versionCode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->userId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/github/javiersantos/licensing/ResponseData;->timestamp:J

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 82
    const-string v1, "|"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
