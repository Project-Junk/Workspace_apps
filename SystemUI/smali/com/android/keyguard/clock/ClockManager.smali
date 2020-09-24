.class public final Lcom/android/keyguard/clock/ClockManager;
.super Ljava/lang/Object;
.source "ClockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/ClockManager$AvailableClocks;,
        Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockOptsProvider"


# instance fields
.field private final mBuiltinClocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

.field private final mCurrentUserObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mHeight:I

.field private mIsDocked:Z

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;",
            "Lcom/android/keyguard/clock/ClockManager$AvailableClocks;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field private final mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$1;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$1;-><init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$hg7TNpAa_jeQQKjwxI39ao59w9U;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    .line 103
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/ClockManager$2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    .line 151
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mContext:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 153
    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 154
    iput-object p7, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    .line 155
    iput-object p6, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    .line 156
    iput-object p8, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 157
    new-instance p3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 170
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOppoClockStyle()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 171
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qcpjSm9nfcenHjNSU7lKV-TGsX4;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 173
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mCJuewhSbfqGAUXaP_8PWw4nqZs;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$mCJuewhSbfqGAUXaP_8PWw4nqZs;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$KuKx3QjFfullqZu9O8YrysFYdRw;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$KuKx3QjFfullqZu9O8YrysFYdRw;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 176
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$eaNA02iZUZJQJ5-qxkJww3veoBg;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$eaNA02iZUZJQJ5-qxkJww3veoBg;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$PTxXa4NJTfXpfMZeNRAQjc0KKNc;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$PTxXa4NJTfXpfMZeNRAQjc0KKNc;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 180
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$asFCCaBCbJR_fHqK_MS5trnRxBs;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$asFCCaBCbJR_fHqK_MS5trnRxBs;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 181
    new-instance p2, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$rgoqkkbgXeF79jasDe-AluCia7A;

    invoke-direct {p2, p3, p1, p4}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$rgoqkkbgXeF79jasDe-AluCia7A;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-direct {p0, p2}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 186
    :goto_0
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 187
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    .line 188
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;)V
    .locals 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {v6, p1}, Lcom/android/systemui/settings/CurrentUserObservable;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/keyguard/clock/SettingsWrapper;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/android/keyguard/clock/SettingsWrapper;-><init>(Landroid/content/ContentResolver;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    .line 139
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/clock/ClockManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/systemui/settings/CurrentUserObservable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/clock/ClockManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/keyguard/clock/SettingsWrapper;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/clock/ClockManager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return p0
.end method

.method private addBuiltinClock(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 247
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 172
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 173
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$3(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 175
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/SingleClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/systemui/keyguard/clock/SingleClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 176
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/DualClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/systemui/keyguard/clock/DualClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 179
    new-instance v0, Lcom/android/keyguard/clock/DefaultClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/DefaultClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$6(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 180
    new-instance v0, Lcom/android/keyguard/clock/BubbleClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/BubbleClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$new$7(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)Lcom/android/systemui/plugins/ClockPlugin;
    .locals 1

    .line 181
    new-instance v0, Lcom/android/keyguard/clock/AnalogClockController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/clock/AnalogClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    return-object v0
.end method

.method static synthetic lambda$reload$8(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V
    .locals 1

    .line 276
    invoke-virtual {p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reload()V

    .line 277
    invoke-virtual {p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object p1

    .line 278
    instance-of v0, p1, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 279
    invoke-interface {p0, p1}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    :goto_0
    return-void
.end method

.method private register()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const-class v2, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_custom_clock_face"

    .line 253
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "docked_clock_face"

    .line 256
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 255
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->register()V

    .line 198
    :cond_0
    new-instance v0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V

    const/4 v1, 0x0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method getClockInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getContentObserver()Landroid/database/ContentObserver;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 241
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object p0

    return-object p0
.end method

.method isDocked()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 236
    iget-boolean p0, p0, Lcom/android/keyguard/clock/ClockManager;->mIsDocked:Z

    return p0
.end method

.method public synthetic lambda$new$0$ClockManager(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reload()V

    .line 275
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    sget-object v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$zp1dTpWUqJXJTWtb24SQMCqkt1g;->INSTANCE:Lcom/android/keyguard/clock/-$$Lambda$ClockManager$zp1dTpWUqJXJTWtb24SQMCqkt1g;

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 213
    iget-object p1, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager;->unregister()V

    :cond_0
    return-void
.end method
