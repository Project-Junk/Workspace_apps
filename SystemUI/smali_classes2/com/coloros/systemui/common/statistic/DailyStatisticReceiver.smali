.class public Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "DailyStatisticReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.DATE_CHANGED"

    .line 26
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
