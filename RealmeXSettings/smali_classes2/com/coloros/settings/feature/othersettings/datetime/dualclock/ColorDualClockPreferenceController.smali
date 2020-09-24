.class public Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorDualClockPreferenceController.java"


# static fields
.field public static final KEY_DUAL_CLOCK_SWITCH:Ljava/lang/String; = "key_dual_clock_switch"

.field private static final TAG:Ljava/lang/String; = "ColorDualClockPreferenceController"


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V
    .locals 1

    const-string v0, "key_dual_clock_switch"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;->mCallback:Lcom/android/settings/datetime/f;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isDualClockOpen = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDualClockPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;->mCallback:Lcom/android/settings/datetime/f;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/android/settings/datetime/f;->a_()V

    :cond_0
    return p1
.end method
