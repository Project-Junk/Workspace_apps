.class public Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "NightProtectEyePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "key_protect_eyes"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->d:Landroid/database/ContentObserver;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;)Lcom/color/support/preference/ColorSwitchWithDividerPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    return-object p0
.end method

.method private synthetic b()V
    .locals 4

    .line 64
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.color.eyeprotect.settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.color.eyeprotect"

    const-string v3, "com.color.eyeprotect.ui.activity.ProtectEyesActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$cid7z1JFadZtmwolSLboCmTa7dY(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_protect_eyes"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$NightProtectEyePreferenceController$cid7z1JFadZtmwolSLboCmTa7dY;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/controller/-$$Lambda$NightProtectEyePreferenceController$cid7z1JFadZtmwolSLboCmTa7dY;-><init>(Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;)V

    .line 1121
    iput-object v0, p1, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/coloros/settings/a;->e:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_protect_eyes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;Z)V

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    const-string v1, "color_eyeprotect_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->b:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/NightProtectEyePreferenceController;->c:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
