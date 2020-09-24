.class public Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;
.super Lcom/android/settings/core/a;
.source "DcBackLightModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DC_BACKLIGHT_DEFAULT_VALUE:I = 0x0

.field public static final DC_BACKLIGHT_MODE:Ljava/lang/String; = "display_dc_settings_switch"

.field public static final KEY_DC_BACKLIGHT_MODE:Ljava/lang/String; = "key_dc_backlight_mode"

.field public static final KEY_DC_BACKLIGHT_MODE_CATEGORY:Ljava/lang/String; = "key_dc_backlight_mode_category"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_dc_backlight_mode_category"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_dc_backlight_mode"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "display_dc_settings_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 59
    :cond_1
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    .line 60
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 45
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/DcBackLightModePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "display_dc_settings_switch"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
