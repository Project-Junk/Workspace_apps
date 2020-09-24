.class public Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;
.super Lcom/android/settings/core/a;
.source "ColorLanguageUpdateController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final PREF_KEY:Ljava/lang/String; = "language_update"


# instance fields
.field private mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

.field protected mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->updateCornerMark()V

    return-void
.end method

.method private updateCornerMark()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, v0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/language/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "language_update"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/coloros/settings/feature/language/a;->a()Landroid/content/Intent;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController$1;-><init>(Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "language_new_version_flag"

    .line 1039
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->mLanguageUpdateDataObserver:Landroid/database/ContentObserver;

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->updateCornerMark()V

    :cond_0
    return-void
.end method
