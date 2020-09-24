.class public Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "EmergencyReceiver.java"


# static fields
.field private static final ACTION_SOS_EMERGENCY_CALL_PAGE:Ljava/lang/String; = "oppo.intent.action.SOS_HELPER_EMERGENCY_CALL_PAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.SOS_HELPER_EMERGENCY_CALL_PAGE"

    .line 30
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method
