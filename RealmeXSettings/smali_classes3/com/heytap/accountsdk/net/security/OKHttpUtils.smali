.class public Lcom/heytap/accountsdk/net/security/OKHttpUtils;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;
    }
.end annotation


# static fields
.field private static final CLASS_NAME_PREFIX:Ljava/lang/String; = "com.heytap.uccompiler.annotation.interceptor.UCInterceptorInject$"

.field public static final DEFAULT_MILLISECONDS:J = 0x2710L

.field private static final METHOD_NAME_REGISTER_INTERCEPTOR:Ljava/lang/String; = "registerInterceptor"

.field private static volatile mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;


# instance fields
.field private mMainThreadExecutor:Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 50
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    .line 51
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->collectInterceptors()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    .line 55
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    goto :goto_1

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 62
    :goto_1
    new-instance p1, Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;-><init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;)V

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mMainThreadExecutor:Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;

    return-void
.end method

.method private collectInterceptors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->invokeRegisterInterceptorMethod()V

    .line 196
    sget-object v1, Lcom/heytap/accountsdk/net/security/interceptor/UCInterceptorManager;->interceptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-static {v2}, Lcom/heytap/accountsdk/net/security/utils/ReflectUtils;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    instance-of v3, v2, Lokhttp3/Interceptor;

    if-eqz v3, :cond_0

    .line 200
    check-cast v2, Lokhttp3/Interceptor;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_1
    new-instance v1, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityBizDefaultHeaderInterceptor;

    invoke-direct {v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityBizDefaultHeaderInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;

    invoke-direct {v1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static get()Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;
    .locals 1

    .line 91
    new-instance v0, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;

    invoke-direct {v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/heytap/accountsdk/net/security/OKHttpUtils;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    move-result-object v0

    return-object v0
.end method

.method public static initClient(Lokhttp3/OkHttpClient;)Lcom/heytap/accountsdk/net/security/OKHttpUtils;
    .locals 2

    .line 67
    sget-object v0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    invoke-direct {v1, p0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v1, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 74
    :cond_1
    :goto_0
    sget-object p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    return-object p0
.end method

.method private invokeRegisterInterceptorMethod()V
    .locals 6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "com.heytap.uccompiler.annotation.interceptor.UCInterceptorInject$"

    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/accountsdk/net/security/utils/ReflectUtils;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "registerInterceptor"

    .line 217
    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/heytap/accountsdk/net/security/utils/ReflectUtils;->method(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 218
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/accountsdk/net/security/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static post()Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;
    .locals 1

    .line 95
    new-instance v0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;

    invoke-direct {v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;-><init>()V

    return-object v0
.end method

.method public static resetClient(Lokhttp3/OkHttpClient;)Lcom/heytap/accountsdk/net/security/OKHttpUtils;
    .locals 1

    .line 78
    new-instance v0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    invoke-direct {v0, p0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;-><init>(Lokhttp3/OkHttpClient;)V

    .line 79
    sput-object v0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mInstance:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    return-object v0
.end method


# virtual methods
.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 170
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 175
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public request(Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;Lcom/heytap/accountsdk/net/security/callback/Callback;)V
    .locals 2

    if-nez p2, :cond_0

    .line 100
    sget-object p2, Lcom/heytap/accountsdk/net/security/callback/Callback;->CALLBACK_DEFAULT:Lcom/heytap/accountsdk/net/security/callback/Callback;

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->getOkHttpRequest()Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->getCall()Lokhttp3/Call;

    move-result-object p1

    new-instance v1, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;-><init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mMainThreadExecutor:Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;

    new-instance v7, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;-><init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSuccessResultCallback(Ljava/lang/Object;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->mMainThreadExecutor:Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;

    new-instance v1, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;-><init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/OKHttpUtils$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
