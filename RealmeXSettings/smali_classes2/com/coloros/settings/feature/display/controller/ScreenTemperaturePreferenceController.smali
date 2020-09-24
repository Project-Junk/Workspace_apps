.class public Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ScreenTemperaturePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field private b:Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

.field private c:Landroidx/preference/Preference;

.field private d:Landroid/database/ContentObserver;

.field private e:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->d:Landroid/database/ContentObserver;

    .line 149
    new-instance v0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;-><init>(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->e:Landroid/database/ContentObserver;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;ZI)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .locals 6

    const v0, 0x7f120f88

    const-string v1, ""

    const v2, 0x7f1212e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_4

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    const/4 p2, -0x2

    const-string v2, "setting_enable_color_temperature_regulation"

    invoke-static {p1, v2, v4, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v4

    :goto_0
    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move v5, v4

    move v4, v3

    move v3, v5

    .line 137
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->b:Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

    invoke-virtual {p1, v4}, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;->setEnabled(Z)V

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "screen_color_temperature"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->b:Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

    const-string v0, "screen_color_summary"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->c:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screen_color_temperature"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->b:Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

    .line 1089
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/screencolortemp/a;

    if-eqz v1, :cond_0

    .line 1090
    iget-object v0, v0, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/screencolortemp/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->b()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->e:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->b:Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;

    .line 1083
    iget-object v1, v0, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/screencolortemp/a;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v0, v0, Lcom/coloros/settings/feature/display/screencolortemp/ScreenColorTemperaturePreference;->a:Lcom/coloros/settings/feature/display/screencolortemp/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    const-string v1, "color_eyeprotect_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    const-string v1, "setting_enable_color_temperature_regulation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a(ZI)V

    return-void
.end method
