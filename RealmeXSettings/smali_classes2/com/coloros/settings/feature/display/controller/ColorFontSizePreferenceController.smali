.class public Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorFontSizePreferenceController.java"


# static fields
.field public static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "font_size"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getAssignment()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030051

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030091

    .line 54
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->a(F[Ljava/lang/String;)I

    move-result v0

    .line 57
    array-length v1, v2

    if-lt v0, v1, :cond_0

    .line 58
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    return-object v0

    .line 60
    :cond_0
    aget-object v0, v2, v0

    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 44
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorFontSizePreferenceController;->getAssignment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
