.class public Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;
.super Lcom/android/settings/core/a;
.source "ColorModePreferenceFragmentController.java"


# static fields
.field public static final KEY_COLOR_MODE:Ljava/lang/String; = "key_color_mode"

.field public static final KEY_COLOR_TEMPERATURE_CATEGORY:Ljava/lang/String; = "screen_color_temperature_category"

.field private static final TAG:Ljava/lang/String; = "ColorModePreferenceFragmentController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_color_mode"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getAssignment()Ljava/lang/String;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/coloros/settings/utils/al;->v()I

    move-result v1

    const-string v2, "oppo_color_mode"

    const/4 v3, -0x2

    .line 68
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 70
    invoke-static {}, Lcom/coloros/settings/utils/bh;->r()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    const v1, 0x7f12058b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    const v1, 0x7f120594

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    const v1, 0x7f120586

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    const v1, 0x7f120588

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->mContext:Landroid/content/Context;

    const v1, 0x7f12059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "screen_color_temperature_category"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    const-string v1, "key_color_mode"

    .line 50
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 90
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAvailabilityStatus = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorModePreferenceFragmentController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 60
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorModePreferenceFragmentController;->getAssignment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
