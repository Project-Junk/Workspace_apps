.class public Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "Iris5VideoDisplayEnhancementController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# static fields
.field private static final KEY_IRIS5_VIDEO_PRE:Ljava/lang/String; = "osie_iris5_video_display_enhancement"


# instance fields
.field private mIris5ContentObserver:Landroid/database/ContentObserver;

.field private mSettingSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "osie_iris5_video_display_enhancement"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mSettingSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private collectVideoDisplaySwitchEvent(Landroid/content/Context;Z)V
    .locals 2

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v1, "sdr2hdr_switch_key"

    .line 70
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20120"

    const-string v1, "SDR2HDR_Switch"

    .line 71
    invoke-static {p1, p2, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mSettingSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mSettingSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;Z)Z

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->collectVideoDisplaySwitchEvent(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1
.end method
