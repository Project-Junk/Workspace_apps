.class public Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;
.super Lcom/android/settings/security/ScreenPinningPreferenceController;
.source "ColorScreenPinningPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_to_app_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12163e

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12163c

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 36
    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
