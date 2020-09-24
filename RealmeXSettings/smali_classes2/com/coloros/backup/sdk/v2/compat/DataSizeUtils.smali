.class public Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;
.super Ljava/lang/Object;
.source "DataSizeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateSize(II)J
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_b

    if-eq p0, v1, :cond_a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x110

    if-eq p0, v0, :cond_7

    const/16 v0, 0x120

    if-eq p0, v0, :cond_6

    const/16 v0, 0x130

    if-eq p0, v0, :cond_5

    const/16 v0, 0x140

    if-eq p0, v0, :cond_4

    const/16 v0, 0x150

    if-eq p0, v0, :cond_3

    const/16 v0, 0x160

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180

    if-eq p0, v0, :cond_1

    const/16 v0, 0x250

    if-eq p0, v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_0
    mul-int/lit16 p1, p1, 0xaa

    goto :goto_0

    :cond_1
    const-wide/32 p0, 0x14000

    goto :goto_1

    :cond_2
    const-wide/32 p0, 0x6e000

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x26c

    goto :goto_1

    :cond_4
    mul-int/2addr p1, v0

    goto :goto_0

    :cond_5
    mul-int/lit16 p1, p1, 0x15e

    goto :goto_0

    :cond_6
    mul-int/lit16 p1, p1, 0xfa

    goto :goto_0

    :cond_7
    mul-int/lit16 p1, p1, 0x1c2

    goto :goto_0

    :cond_8
    mul-int/lit16 p1, p1, 0x2bc

    goto :goto_0

    :cond_9
    const p0, 0x3e800

    mul-int/2addr p1, p0

    goto :goto_0

    :cond_a
    mul-int/lit16 p1, p1, 0x2ee

    :goto_0
    int-to-long p0, p1

    goto :goto_1

    :cond_b
    mul-int/lit16 p0, p1, 0x190

    .line 13
    div-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x7800

    add-int/2addr p0, p1

    int-to-long p0, p0

    :goto_1
    return-wide p0
.end method
