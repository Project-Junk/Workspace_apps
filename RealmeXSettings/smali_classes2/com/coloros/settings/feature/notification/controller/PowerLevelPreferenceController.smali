.class public Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "PowerLevelPreferenceController.java"


# static fields
.field public static final KEY_SHOW_POWER_LEVEL:Ljava/lang/String; = "show_power_level"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "show_power_level"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "display_power_percent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "show_power_level"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_power_percent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.power_percent_display"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
