.class public Lcom/color/compat/view/WindowNative;
.super Ljava/lang/Object;
.source "WindowNative.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowNative"
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDestroyed(Landroid/view/Window;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 36
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/color/inner/view/WindowWrapper;->isDestroyed(Landroid/view/Window;)Z

    move-result p0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/view/Window;->isDestroyed()Z

    move-result p0

    goto :goto_0

    .line 41
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setCloseOnTouchOutside(Landroid/view/Window;Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 52
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/view/WindowWrapper;->setCloseOnTouchOutside(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method