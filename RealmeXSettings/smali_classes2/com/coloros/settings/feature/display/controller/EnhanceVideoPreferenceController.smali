.class public Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;
.super Lcom/android/settings/core/a;
.source "EnhanceVideoPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ENHANCE_VIDEO:Ljava/lang/String; = "key_video_display_enhancement"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mEnhanceVideoPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_video_display_enhancement"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isSwitchChecked()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vendor_media_vpp_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mEnhanceVideoPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mEnhanceVideoPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mEnhanceVideoPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vendor_media_vpp_enable"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->mEnhanceVideoPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/EnhanceVideoPreferenceController;->isSwitchChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
