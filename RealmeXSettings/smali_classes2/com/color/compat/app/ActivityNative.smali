.class public Lcom/color/compat/app/ActivityNative;
.super Ljava/lang/Object;
.source "ActivityNative.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromTranslucent(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 85
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/color/inner/app/ActivityWrapper;->convertFromTranslucent(Landroid/app/Activity;)V

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->convertFromTranslucent()V

    return-void

    .line 90
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static convertToTranslucent(Landroid/app/Activity;Landroid/app/ActivityOptions;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 59
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, p1}, Lcom/color/inner/app/ActivityWrapper;->convertToTranslucent(Landroid/app/Activity;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0

    .line 61
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
