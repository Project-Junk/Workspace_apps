.class public abstract Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;
.super Ljava/lang/Object;
.source "UCBaseRequest.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final KEY_HOST_PATH_FORMAT:Ljava/lang/String; = "%s%s"
    .annotation runtime Lcom/platform/usercenter/annotation/NoSign;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotationUrl()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/platform/usercenter/annotation/Host;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/platform/usercenter/annotation/Path;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/platform/usercenter/annotation/Path;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/annotation/Path;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/platform/usercenter/annotation/Host;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/platform/usercenter/annotation/Host;

    .line 4
    sget-object v4, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;->sEnv:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    sget-object v5, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;->ENV_TEST_1:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    const-string v6, "%s%s"

    const/4 v7, 0x2

    if-ne v4, v5, :cond_1

    .line 5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/platform/usercenter/annotation/Host;->host_test1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v0}, Lcom/platform/usercenter/annotation/Path;->path()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v4, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;->sEnv:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    sget-object v5, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;->ENV_TEST_3:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    if-ne v4, v5, :cond_2

    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/platform/usercenter/annotation/Host;->host_test3()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v0}, Lcom/platform/usercenter/annotation/Path;->path()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    sget-object v4, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;->sEnv:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    sget-object v5, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;->ENV_DEV:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    if-ne v4, v5, :cond_3

    .line 9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/platform/usercenter/annotation/Host;->host_dev()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v0}, Lcom/platform/usercenter/annotation/Path;->path()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/platform/usercenter/annotation/Host;->host_release()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v0}, Lcom/platform/usercenter/annotation/Path;->path()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must make this class of annotations Host and Path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 12
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "\\/"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/"

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCBaseRequest param toJson = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    return-object v0
.end method
