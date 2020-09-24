.class public Lcom/android/systemui/statusbar/phone/AutoTileManager;
.super Ljava/lang/Object;
.source "AutoTileManager.java"


# static fields
.field public static final CAST:Ljava/lang/String; = "cast"

.field public static final HOTSPOT:Ljava/lang/String; = "hotspot"

.field public static final INVERSION:Ljava/lang/String; = "inversion"

.field public static final NIGHT:Ljava/lang/String; = "night"

.field public static final SAVER:Ljava/lang/String; = "saver"

.field public static final WORK:Ljava/lang/String; = "work"


# instance fields
.field private final mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

.field final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCastController:Lcom/android/systemui/statusbar/policy/CastController;

.field private mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field final mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;)V
    .locals 1
    .param p4    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 74
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    .line 76
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 80
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-nez p1, :cond_4

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "hotspot"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {p5, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "saver"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {p6, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "inversion"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    const-string p4, "accessibility_display_inversion_enabled"

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "night"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    invoke-virtual {p8, p1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "cast"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {p9, p1}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Ljava/lang/Object;)V

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "work"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {p7, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/CastController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/hardware/display/NightDisplayListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/AutoAddTracker;->destroy()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->removeCallback(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CastController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileRemoved(Ljava/lang/String;)V

    return-void
.end method
