.class public Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;
.super Lcom/android/settings/core/a;
.source "PressKeyBacklightPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DEFAULT_MODE:I = 0x3

.field public static final DEFAULT_TIMEOUT:I = 0x1770

.field public static final KEY_PRESS_KEY_BACKLIGHT:Ljava/lang/String; = "press_key_backlight"

.field private static final MODE_ALWAYS_OFF:I = 0x2

.field private static final MODE_ALWAYS_ON:I = 0x1

.field private static final MODE_AUTO_SENSOR:I = 0x4

.field private static final MODE_AUTO_TIMEOUT:I = 0x3

.field private static final MODE_MASK:I = 0xf

.field private static final MODE_OFFSET:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PressKeyBacklightPreferenceController"


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "press_key_backlight"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private actuallySet(I)Z
    .locals 3

    and-int/lit8 v0, p1, 0xf

    .line 107
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "button_light_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mResolver:Landroid/content/ContentResolver;

    shr-int/lit8 p1, p1, 0x4

    const-string v1, "button_light_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    :cond_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "press_key_backlight"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 63
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    const-string v2, "button_light_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->mResolver:Landroid/content/ContentResolver;

    const/16 v2, 0x1770

    const-string v3, "button_light_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 102
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_1

    .line 82
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 84
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->actuallySet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/PressKeyBacklightPreferenceController;->updateState(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur ,e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PressKeyBacklightPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 72
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 74
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
