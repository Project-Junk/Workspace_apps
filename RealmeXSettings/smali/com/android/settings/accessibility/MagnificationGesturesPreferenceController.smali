.class public Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationGesturesPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method

.method public static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3

    const-string v0, "accessibility_display_magnification_enabled"

    const-string v1, "preference_key"

    .line 86
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f12007f

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string p1, "checked"

    .line 93
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const p1, 0x7f110001

    const-string/jumbo v0, "video_resource"

    .line 97
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12007c

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120061

    goto :goto_0

    :cond_1
    const v0, 0x7f120060

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    const-string v1, "from_suw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_gestures_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method
