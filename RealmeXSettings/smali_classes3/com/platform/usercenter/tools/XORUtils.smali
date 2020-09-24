.class public Lcom/platform/usercenter/tools/XORUtils;
.super Ljava/lang/Object;
.source "XORUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 23
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    aget-byte v2, p0, v1

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 3

    .line 55
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 58
    aget-byte v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    aget-byte v1, p1, v0

    xor-int/lit8 v1, v1, 0x12

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 4

    .line 39
    array-length v0, p1

    const/16 v1, 0x12

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 42
    aget-byte v3, p1, v2

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 43
    aget-byte v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
