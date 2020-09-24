.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# static fields
.field static final PERMISSION:Ljava/lang/String; = "android.permission.CONTROL_KEYGUARD"

.field static final TAG:Ljava/lang/String; = "KeyguardService"


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    return-object p0
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardService"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 57
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onCreate()V

    .line 62
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 63
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    const-class v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 64
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 68
    invoke-static {}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;->getInstance()Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;->countCrashTimes(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onDestroy()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
