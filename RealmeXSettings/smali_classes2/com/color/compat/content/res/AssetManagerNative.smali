.class public Lcom/color/compat/content/res/AssetManagerNative;
.super Ljava/lang/Object;
.source "AssetManagerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 38
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1}, Lcom/color/inner/content/res/AssetManagerWrapper;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssetManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static createAssetManager()Landroid/content/res/AssetManager;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 54
    :try_start_0
    invoke-static {}, Lcom/color/inner/content/res/AssetManagerWrapper;->createAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
