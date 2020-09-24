.class public Lcom/android/settings/development/PictureColorModePreferenceController;
.super Lcom/android/settingslib/development/b;
.source "PictureColorModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private a:Lcom/android/settings/development/ColorModePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference;

    iput-object p1, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->a:Lcom/android/settings/development/ColorModePreference;

    .line 60
    iget-object p1, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->a:Lcom/android/settings/development/ColorModePreference;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/settings/development/ColorModePreference;->a()V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "picture_color_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->a:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    return-void

    .line 3077
    :cond_0
    iget-object v1, v0, Lcom/android/settings/development/ColorModePreference;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->a:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    return-void

    .line 3073
    :cond_0
    iget-object v1, v0, Lcom/android/settings/development/ColorModePreference;->a:Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->a:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->a()V

    return-void
.end method
