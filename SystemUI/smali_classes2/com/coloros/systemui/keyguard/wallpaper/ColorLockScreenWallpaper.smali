.class public Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;
.super Ljava/lang/Object;
.source "ColorLockScreenWallpaper.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;
.implements Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorLockScreenWallpaper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentType:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

.field private mCurrentUserId:I

.field private mEngineWallpaperHelper:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

.field private mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

.field private mWallpaperChangeWatch:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

.field private mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    .line 245
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->openConnection()V

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 66
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 70
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeWatch:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    .line 71
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->initWallpaperHelper(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->isPictorialType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->isLocalType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->refreshHelperAndSetWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->isEngineType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeWatch:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;)Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    return-object p0
.end method

.method private changeHelper(Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentType:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    if-eq v0, p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->disable()V

    .line 112
    :cond_0
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->enable()V

    :cond_1
    return-void
.end method

.method private initWallpaperHelper(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    .line 78
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    .line 79
    new-instance v0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mEngineWallpaperHelper:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->setWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mEngineWallpaperHelper:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->setWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/OnWallpaperChangeListener;)V

    .line 83
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->selectWallpaperHelper()V

    return-void
.end method

.method private isDefaultKeyguard()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isEngineType()Z
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    instance-of p0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    return p0
.end method

.method private isLocalType()Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    instance-of p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    return p0
.end method

.method private isPictorialEnable()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result p0

    return p0
.end method

.method private isPictorialType()Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    instance-of p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    return p0
.end method

.method private loadBitmap()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBitmap drawable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ColorLockScreenWallpaper"

    invoke-static {v4, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 172
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    if-eq v1, p0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBitmap local wallpaper drawable :  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private loadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    if-eq v1, v2, :cond_1

    .line 185
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    move-result-object v0

    .line 187
    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->saveCurrentKeyguardWallpaperMode(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V

    return-object v0
.end method

.method private refreshHelperAndSetWallpaper()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->selectWallpaperHelper()V

    return-void
.end method

.method private saveCurrentKeyguardWallpaperMode(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLastWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isLocalType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->saveKeyguardPictorialUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isEngineType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->saveKeyguardPictorialUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    move-object v2, p1

    check-cast v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 202
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    .line 201
    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->saveKeyguardPictorialUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 205
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLastWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    return-void
.end method

.method private selectWallpaperHelper()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mEngineWallpaperHelper:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    if-nez v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->isDefaultKeyguard()Z

    move-result v0

    const-string v1, "ColorLockScreenWallpaper"

    if-eqz v0, :cond_2

    const-string v0, "selectWallpaperHelper ***isDefaultKeyguard***"

    .line 93
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->isPictorialEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Pictorial:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->changeHelper(Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Local:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->changeHelper(Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;)V

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Engine:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mEngineWallpaperHelper:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;

    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->changeHelper(Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentType:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select wallpaper helper is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentType:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->loadBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 141
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mWallpaperChangeWatch:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->loadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->dispatchWallpaperChange(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)V

    return-object v0
.end method

.method public onPictorialAutoSwitchChange(Z)V
    .locals 1

    const-string p1, "ColorLockScreenWallpaper"

    const-string v0, "onPictorialAutoSwitchChange"

    .line 210
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->refreshHelperAndSetWallpaper()V

    .line 212
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 147
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentUserId:I

    if-eq p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 151
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentUserId:I

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->setCurrentUser(I)V

    :cond_1
    return-void
.end method

.method public setSelectedUser(Landroid/os/UserHandle;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    .line 162
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mLocalWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->setSelectedUser(Landroid/os/UserHandle;)V

    return-void
.end method
