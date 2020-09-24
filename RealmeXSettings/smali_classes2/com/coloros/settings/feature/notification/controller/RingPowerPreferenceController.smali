.class public Lcom/coloros/settings/feature/notification/controller/RingPowerPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "RingPowerPreferenceController.java"


# static fields
.field private static final KEY_RING_POWER:Ljava/lang/String; = "oppo_ring_power"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oppo_ring_power"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static collectRingPowerSwitchEvent(Landroid/content/Context;Z)V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "ring_power_switch"

    .line 53
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20120"

    const-string v1, "Ring_Power_Switch"

    .line 54
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    invoke-static {}, Lcom/coloros/settings/utils/bh;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RingPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aA(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RingPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/notification/controller/RingPowerPreferenceController;->collectRingPowerSwitchEvent(Landroid/content/Context;Z)V

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RingPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Z)Z

    const/4 p1, 0x1

    return p1
.end method
