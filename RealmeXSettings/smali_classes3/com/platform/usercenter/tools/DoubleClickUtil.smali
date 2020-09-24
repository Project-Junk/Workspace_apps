.class public Lcom/platform/usercenter/tools/DoubleClickUtil;
.super Ljava/lang/Object;
.source "DoubleClickUtil.java"


# static fields
.field private static final TIME_INTERVAL:J = 0x258L

.field private static mLastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDouble()Z
    .locals 6

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    sget-wide v2, Lcom/platform/usercenter/tools/DoubleClickUtil;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 25
    sput-wide v0, Lcom/platform/usercenter/tools/DoubleClickUtil;->mLastClickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
