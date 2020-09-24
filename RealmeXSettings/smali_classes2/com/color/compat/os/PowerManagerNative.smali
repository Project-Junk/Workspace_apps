.class public Lcom/color/compat/os/PowerManagerNative;
.super Ljava/lang/Object;
.source "PowerManagerNative.java"


# static fields
.field public static TAG:Ljava/lang/String; = "PowerManagerNative"
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayAodStatus(Landroid/os/PowerManager;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getDisplayAodStatus(Landroid/os/PowerManager;)Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/color/util/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDisplayAodStatus"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 104
    sget-object v1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 41
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/color/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMaximumScreenBrightnessSetting"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 47
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 50
    sget-object v0, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 59
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/color/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMinimumScreenBrightnessSetting"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 65
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 68
    sget-object v0, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getRealMaximumScreenBrightnessSetting()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 121
    :try_start_0
    invoke-static {}, Lcom/color/inner/os/PowerManagerWrapper;->getRealMaximumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method public static getRealMinimumScreenBrightnessSetting()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 141
    :try_start_0
    invoke-static {}, Lcom/color/inner/os/PowerManagerWrapper;->getRealMinimumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 85
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/PowerManagerWrapper;->goToSleep(Landroid/os/PowerManager;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 87
    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 151
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/PowerManagerWrapper;->shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 153
    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 76
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/PowerManagerWrapper;->wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 78
    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
