.class public Lcom/android/settings/notification/ChargingSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "ChargingSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 6

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance p1, Lcom/android/settings/notification/r;

    const/4 p2, 0x0

    new-array v5, p2, [I

    const/4 v1, 0x3

    const-string v2, "charging_sounds"

    const-string v3, "charging_sounds_enabled"

    const/4 v4, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/r;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/ChargingSoundPreferenceController;->b:Lcom/android/settings/notification/r;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/ChargingSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
