.class public Lcom/color/compat/ims/ImsManagerNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerNative"


# instance fields
.field private mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    new-instance v0, Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/color/inner/ims/ImsManagerWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    return-void
.end method

.method private constructor <init>(Lcom/color/inner/ims/ImsManagerWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    iput-object p1, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/color/compat/ims/ImsManagerNative;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/ims/ImsManagerWrapper;->getInstance(Landroid/content/Context;I)Lcom/color/inner/ims/ImsManagerWrapper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/color/compat/ims/ImsManagerNative;

    invoke-direct {p1, p0}, Lcom/color/compat/ims/ImsManagerNative;-><init>(Lcom/color/inner/ims/ImsManagerWrapper;)V

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVolteEnabledByPlatform()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVtEnabledByPlatform()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVtEnabledByUser()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVtEnabledByUser()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWfcEnabledByPlatform()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByPlatform()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWfcEnabledByUser()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByUser()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEnhanced4gLteModeSetting(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/ims/ImsManagerWrapper;->setEnhanced4gLteModeSetting(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ImsManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
