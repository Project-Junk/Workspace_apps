.class public Lcom/color/compat/ims/ImsManagerNative;
.super Ljava/lang/Object;
.source "ImsManagerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerNative"


# instance fields
.field private mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    .line 33
    new-instance v0, Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/color/inner/ims/ImsManagerWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    return-void
.end method

.method private constructor <init>(Lcom/color/inner/ims/ImsManagerWrapper;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    .line 37
    iput-object p1, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/color/compat/ims/ImsManagerNative;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 45
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/ims/ImsManagerWrapper;->getInstance(Landroid/content/Context;I)Lcom/color/inner/ims/ImsManagerWrapper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    new-instance p1, Lcom/color/compat/ims/ImsManagerNative;

    invoke-direct {p1, p0}, Lcom/color/compat/ims/ImsManagerNative;-><init>(Lcom/color/inner/ims/ImsManagerWrapper;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {v0}, Lcom/color/inner/ims/ImsManagerWrapper;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVtEnabledByUser()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {v0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVtEnabledByUser()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWfcEnabledByPlatform()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {v0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByPlatform()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWfcEnabledByUser()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {v0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByUser()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
