.class public Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;
.super Lcom/android/settings/core/a;
.source "AdvancedConnectedDeviceController.java"


# static fields
.field private static final DRIVING_MODE_SETTINGS_ENABLED:Ljava/lang/String; = "gearhead:driving_mode_settings_enabled"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I
    .locals 2

    .line 54
    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController;

    const-string/jumbo v1, "toggle_nfc"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->isDrivingModeAvailable(Landroid/content/Context;)Z

    move-result p0

    .line 57
    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I

    move-result p0

    return p0
.end method

.method static getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f120620

    goto :goto_0

    :cond_0
    const p0, 0x7f12061e

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f12061f

    goto :goto_0

    :cond_2
    const p0, 0x7f12061d

    :goto_0
    return p0
.end method

.method static isDrivingModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "gearhead:driving_mode_settings_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
