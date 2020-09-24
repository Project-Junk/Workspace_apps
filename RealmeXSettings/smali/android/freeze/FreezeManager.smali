.class public Landroid/freeze/FreezeManager;
.super Ljava/lang/Object;
.source "FreezeManager.java"


# static fields
.field private static final FREEZE_FEATURE:Ljava/lang/String; = "com.realme.freeze.support"

.field public static final FREEZE_SETTING_CAN_REEZE:I = 0x1

.field public static final FREEZE_SETTING_NOMAL:I = 0x0

.field public static final FREEZE_SETTING_UNKNOW:I = -0x1

.field public static final FREEZE_STATE_FREEZED:I = 0x1

.field public static final FREEZE_STATE_NOMAL:I = 0x0

.field public static final FREEZE_STATE_UNKNOW:I = -0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "freeze_service"

.field private static volatile mFreezeSupport:Ljava/lang/Boolean;

.field private static volatile sFreezeManager:Landroid/freeze/FreezeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/freeze/FreezeManager;
    .locals 2

    .line 24
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Landroid/freeze/FreezeManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/freeze/FreezeManager;

    invoke-direct {v1}, Landroid/freeze/FreezeManager;-><init>()V

    sput-object v1, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    return-object v0
.end method

.method public static isFreezeSupport(Landroid/content/Context;)Z
    .locals 2

    .line 35
    sget-object v0, Landroid/freeze/FreezeManager;->mFreezeSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Landroid/freeze/FreezeManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Landroid/freeze/FreezeManager;->mFreezeSupport:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.realme.freeze.support"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/freeze/FreezeManager;->mFreezeSupport:Ljava/lang/Boolean;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 43
    :cond_1
    :goto_0
    sget-object p0, Landroid/freeze/FreezeManager;->mFreezeSupport:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPackageFreezeState(Ljava/lang/String;)I
    .locals 1

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPackageFreezeUserSetting(Ljava/lang/String;)I
    .locals 1

    .line 63
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFreezeEnabled()Z
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFreezeEnable(Z)V
    .locals 1

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageFreezeState(Ljava/lang/String;I)V
    .locals 0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageFreezeUserSetting(Ljava/lang/String;I)V
    .locals 0

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
