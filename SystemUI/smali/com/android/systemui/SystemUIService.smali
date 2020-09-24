.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object p0

    .line 85
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorosSystemuiDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/helper/DumpHelper;->onSystemUIServiceDump([Lcom/android/systemui/SystemUI;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 90
    array-length v1, p3

    if-nez v1, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_5

    aget-object v3, p0, v0

    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p0, v0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_4
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_5

    const-string p0, "dumping plugins:"

    .line 96
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-class p0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 72
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 73
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 46
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "debug.crash_sysui"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x3e8

    const/16 v1, 0x384

    .line 53
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 54
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    sget-object p0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 62
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    .line 54
    invoke-static {v0, p0}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method
