.class public Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationNavbarPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120079

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120061

    goto :goto_0

    :cond_1
    const v0, 0x7f120060

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "preference_key"

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f12007b

    const-string/jumbo v1, "title_res"

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v0, 0x7f12007a

    const-string v1, "summary_res"

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    const-string v1, "from_suw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_navbar_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    return-void
.end method
