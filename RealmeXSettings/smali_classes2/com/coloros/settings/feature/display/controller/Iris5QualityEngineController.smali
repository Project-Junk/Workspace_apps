.class public Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;
.super Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.source "Iris5QualityEngineController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# static fields
.field private static final KEY_IRIS5_SWITCH_PRE:Ljava/lang/String; = "osie_iris5_switch"


# instance fields
.field private mIris5ContentObserver:Landroid/database/ContentObserver;

.field private mIris5Switch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mMotionFluencyObserver:Landroid/database/ContentObserver;

.field private mVideoDisplayObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "osie_iris5_switch"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$2;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mVideoDisplayObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$3;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mMotionFluencyObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5Switch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->doUpdateData()V

    return-void
.end method

.method public static collectIris5SwitchEvent(Landroid/content/Context;Z)V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "osie_switch"

    .line 81
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20120"

    const-string v1, "OSIE_Switch"

    .line 82
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private doUpdateData()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "osie_iris5_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "osie_video_display_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mVideoDisplayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "osie_motion_fluency_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mMotionFluencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5Switch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5Switch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mVideoDisplayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mVideoDisplayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mMotionFluencyObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mMotionFluencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method protected updateUiData(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->i(Landroid/content/Context;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->collectIris5SwitchEvent(Landroid/content/Context;Z)V

    return-void
.end method
