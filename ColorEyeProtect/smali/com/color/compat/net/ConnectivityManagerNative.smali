.class public Lcom/color/compat/net/ConnectivityManagerNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/net/ConnectivityManagerWrapper;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConnManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Lcom/color/compat/net/ConnectivityManagerNative$1;

    invoke-direct {v0, p3}, Lcom/color/compat/net/ConnectivityManagerNative$1;-><init>(Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Lcom/color/inner/net/ConnectivityManagerWrapper;->startTethering(Landroid/net/ConnectivityManager;IZLcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "ConnManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/ConnectivityManagerWrapper;->stopTethering(Landroid/net/ConnectivityManager;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConnManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
