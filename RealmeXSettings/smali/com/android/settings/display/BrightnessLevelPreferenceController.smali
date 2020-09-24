.class public Lcom/android/settings/display/BrightnessLevelPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "BrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/content/ContentResolver;

.field private i:Landroidx/preference/Preference;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "screen_brightness"

    .line 64
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr"

    .line 65
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->b:Landroid/net/Uri;

    const-string v0, "screen_auto_brightness_adj"

    .line 66
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->j:Landroid/database/ContentObserver;

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const-string p2, "power"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 83
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->d:I

    .line 84
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->e:I

    .line 85
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->f:I

    .line 86
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->g:I

    .line 87
    iget-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    return-void
.end method

.method private a()D
    .locals 3

    .line 131
    invoke-static {}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->e:I

    const-string v2, "screen_brightness_for_vr"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->f:I

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->g:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/f/a;->a(III)I

    move-result v0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->d:I

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->d:I

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->e:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/f/a;->a(III)I

    move-result v0

    :goto_0
    int-to-double v0, v0

    .line 141
    invoke-static {v0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(D)D
    .locals 5

    const-wide v0, 0x408ff80000000000L    # 1023.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    return-wide v2

    :cond_1
    sub-double/2addr p0, v2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->i:Landroidx/preference/Preference;

    return-object p0
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method private static b()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "vrmanager"

    .line 1156
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BrightnessPrefCtrl"

    const-string v2, "Failed to check vr mode!"

    .line 167
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brightness"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->i:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "brightness"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->j:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->h:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method
