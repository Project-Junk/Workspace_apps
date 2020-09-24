.class public Lcom/android/settings/display/AutoBrightnessPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoBrightnessPreferenceController.java"


# instance fields
.field private final DEFAULT_VALUE:I

.field private final SYSTEM_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "screen_brightness_mode"

    .line 30
    iput-object p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->SYSTEM_KEY:Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->DEFAULT_VALUE:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_automatic_brightness_available"

    .line 54
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12026d

    goto :goto_0

    :cond_0
    const v1, 0x7f12026c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
