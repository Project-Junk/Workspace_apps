.class public abstract Lcom/android/internal/telephony/uicc/IccServiceTable;
.super Ljava/lang/Object;
.source "IccServiceTable.java"


# instance fields
.field protected final mServiceTable:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method protected abstract getValues()[Ljava/lang/Object;
.end method

.method protected isAvailable(I)Z
    .locals 5

    .line 46
    div-int/lit8 v0, p1, 0x8

    .line 47
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAvailable for service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fails, max service is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 53
    :cond_0
    rem-int/lit8 p1, p1, 0x8

    .line 54
    aget-byte v0, v1, v0

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v1, v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x8

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    .line 66
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    aget-byte v6, v6, v4

    move v7, v5

    move v5, v3

    :goto_1
    const/16 v8, 0x8

    if-ge v5, v8, :cond_3

    const/4 v8, 0x1

    shl-int v9, v8, v5

    and-int/2addr v9, v6

    if-eqz v9, :cond_2

    if-eqz v7, :cond_0

    const-string v8, ", "

    .line 70
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    move v7, v8

    :goto_2
    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v5

    .line 75
    array-length v9, v0

    if-ge v8, v9, :cond_1

    .line 76
    aget-object v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/16 v9, 0x23

    .line 78
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_4
    const-string v0, " }"

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
