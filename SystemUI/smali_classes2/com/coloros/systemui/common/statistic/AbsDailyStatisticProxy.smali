.class public abstract Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;
.super Ljava/lang/Object;
.source "AbsDailyStatisticProxy.java"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onStatistic(Landroid/content/Context;)V
.end method
