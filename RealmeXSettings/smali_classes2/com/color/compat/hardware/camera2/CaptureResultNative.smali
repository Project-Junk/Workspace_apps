.class public Lcom/color/compat/hardware/camera2/CaptureResultNative;
.super Ljava/lang/Object;
.source "CaptureResultNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureResultNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureResultKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/hardware/camera2/CaptureResultWrapper;->captureResultKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CaptureResultNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static captureResultKey(Ljava/lang/String;Ljava/lang/Class;J)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;"
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/hardware/camera2/CaptureResultWrapper;->captureResultKey(Ljava/lang/String;Ljava/lang/Class;J)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CaptureResultNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static captureResultKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/hardware/camera2/CaptureResultWrapper;->captureResultKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CaptureResultNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
