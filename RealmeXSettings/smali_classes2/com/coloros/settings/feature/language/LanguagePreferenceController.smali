.class public Lcom/coloros/settings/feature/language/LanguagePreferenceController;
.super Lcom/android/settings/core/a;
.source "LanguagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_LANGUAGE_CATEGORY:Ljava/lang/String; = "phone_language_category"


# instance fields
.field private mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone_language"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getCustomizedLocalName(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300e0

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_MM"

    .line 123
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0300e3

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v1, 0x7f0300e2

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    .line 128
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 129
    aget-object v3, v0, v1

    .line 130
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    aget-object p1, p1, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->getCustomizedLocalName(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 108
    invoke-static {p1, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 110
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 114
    :cond_2
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "CN"

    const-string v1, "ro.oppo.version"

    .line 62
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.oppo.region"

    .line 63
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oppo"

    const-string v3, "ro.oppo.operator"

    .line 64
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "phone_language_category"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    const v0, 0x7f0d0226

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "phone_language"

    invoke-static {p1, v1, v0, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.LOCALE_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
