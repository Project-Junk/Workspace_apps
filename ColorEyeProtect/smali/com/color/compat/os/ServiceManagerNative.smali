.class public Lcom/color/compat/os/ServiceManagerNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/color/inner/os/ServiceManagerWrapper;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/ServiceManagerWrapper;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/ServiceManagerWrapper;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
