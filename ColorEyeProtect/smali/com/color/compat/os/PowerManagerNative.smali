.class public Lcom/color/compat/os/PowerManagerNative;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String; = "PowerManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayAodStatus(Landroid/os/PowerManager;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getDisplayAodStatus(Landroid/os/PowerManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/PowerManagerWrapper;->getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

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

    :try_start_0
    invoke-static {}, Lcom/color/inner/os/PowerManagerWrapper;->getRealMaximumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    :try_start_0
    invoke-static {}, Lcom/color/inner/os/PowerManagerWrapper;->getRealMinimumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/PowerManagerWrapper;->goToSleep(Landroid/os/PowerManager;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/PowerManagerWrapper;->shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/PowerManagerWrapper;->wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/color/compat/os/PowerManagerNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
