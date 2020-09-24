.class public Lcom/coloros/settings/feature/privacy/CellBroadcastPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "CellBroadcastPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/coloros/settings/utils/bh;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.cellbroadcastreceiver"

    const-string v2, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/privacy/CellBroadcastPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
