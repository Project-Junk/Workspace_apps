.class public Lcom/heytap/openid/sdk/HeytapIDSDK;
.super Ljava/lang/Object;
.source "HeytapIDSDK.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static hasInit:Z = false

.field private static isSupported:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 59
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "APID"

    invoke-virtual {v0, p0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;->getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 54
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;->getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 49
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;->getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 39
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;->getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 44
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;->getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper;->getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/heytap/openid/sdk/OpenIDHelper;->isSupported(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/heytap/openid/sdk/HeytapIDSDK;->isSupported:Z

    const/4 p0, 0x1

    .line 30
    sput-boolean p0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .line 34
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->hasInit:Z

    if-eqz v0, :cond_0

    .line 35
    sget-boolean v0, Lcom/heytap/openid/sdk/HeytapIDSDK;->isSupported:Z

    return v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK Need Init First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
