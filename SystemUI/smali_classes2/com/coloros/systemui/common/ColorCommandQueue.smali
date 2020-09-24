.class public Lcom/coloros/systemui/common/ColorCommandQueue;
.super Lcom/android/systemui/statusbar/CommandQueue;
.source "ColorCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorCommandQueue"


# instance fields
.field private mColorStatusBar:Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mRemote:Landroid/os/IBinder;

    .line 47
    new-instance v1, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;-><init>(Lcom/coloros/systemui/common/ColorCommandQueue;Lcom/coloros/systemui/common/ColorCommandQueue$1;)V

    iput-object v1, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mColorStatusBar:Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 50
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mContext:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mColorStatusBar:Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/ColorCommandQueue;->registerColorStatusBarCallback(Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/common/ColorCommandQueue;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/common/ColorCommandQueue;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private registerColorStatusBarCallback(Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    .line 60
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mRemote:Landroid/os/IBinder;

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.app.IStatusBarManager"

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2712

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    throw p0

    .line 70
    :catch_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method


# virtual methods
.method public panelsEnabled()Z
    .locals 4

    .line 128
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ColorCommandQueue"

    const-string v3, "Statusbar"

    if-nez v0, :cond_3

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isAtoVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "panelsEnabled--isDeviceProvisioned disable"

    .line 137
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 143
    :cond_1
    invoke-static {}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->getInstance()Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->isStatusBarExpandDisableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "panelsEnabled--isStatusBarExpandDisableMode disable"

    .line 144
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 148
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "panelsEnabled--isChildrenMode disable"

    .line 129
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
