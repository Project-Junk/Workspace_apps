.class public Lcom/color/compat/view/OppoWindowManagerNative;
.super Ljava/lang/Object;
.source "OppoWindowManagerNative.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OppoWindowManagerNative"


# instance fields
.field private mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

.field private mOppoWindowManager:Landroid/view/OppoWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v0}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    .line 24
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/view/OppoWindowManager;

    invoke-direct {v0}, Landroid/view/OppoWindowManager;-><init>()V

    iput-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentFocus()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 188
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0}, Landroid/view/OppoWindowManager;->getCurrentFocus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/IOppoWindowManagerImpl;->getCurrentFocus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getFloatWindowRect(I)Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 33
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->getFloatWindowRect(I)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/IOppoWindowManagerImpl;->getFloatWindowRect(I)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 41
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFocusedWindowIgnoreHomeMenuKey()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 65
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0}, Landroid/view/OppoWindowManager;->getFocusedWindowIgnoreHomeMenuKey()I

    move-result v0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLongshotSurfaceLayerByType(I)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 119
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->getLongshotSurfaceLayerByType(I)I

    move-result p1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/IOppoWindowManagerImpl;->getLongshotSurfaceLayerByType(I)I

    move-result p1

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isInFreeformMode()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v1}, Landroid/view/OppoWindowManager;->isInFreeformMode()Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.view.WindowManagerGlobal"

    .line 83
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWindowManagerService"

    .line 84
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isInFreeformMode"

    .line 87
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 88
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Lcom/color/util/a;

    invoke-direct {v1}, Lcom/color/util/a;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 93
    sget-object v2, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isInputShow()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 102
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0}, Landroid/view/OppoWindowManager;->isInputShow()Z

    move-result v0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/IOppoWindowManagerImpl;->isInputShow()Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerOppoWindowStateObserver(Landroid/view/IOppoWindowStateObserver;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 135
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->registerOppoWindowStateObserver(Landroid/view/IOppoWindowStateObserver;)V

    return-void

    .line 138
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 141
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestKeyguard(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 49
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->requestKeyguard(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mIOppoWindowManager:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/IOppoWindowManagerImpl;->requestKeyguard(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 57
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMagnification(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 161
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->setMagnification(Landroid/os/Bundle;)V

    return-void

    .line 164
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 167
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startColorDragWindow(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 174
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/OppoWindowManager;->startColorDragWindow(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    .line 177
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 180
    sget-object p2, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterOppoWindowStateObserver(Landroid/view/IOppoWindowStateObserver;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 148
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/color/compat/view/OppoWindowManagerNative;->mOppoWindowManager:Landroid/view/OppoWindowManager;

    invoke-virtual {v0, p1}, Landroid/view/OppoWindowManager;->unregisterOppoWindowStateObserver(Landroid/view/IOppoWindowStateObserver;)V

    return-void

    .line 151
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 154
    sget-object v0, Lcom/color/compat/view/OppoWindowManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
