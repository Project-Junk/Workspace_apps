.class public Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;
.super Ljava/lang/Object;
.source "WeatherBaseDataTask.java"

# interfaces
.implements Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;


# static fields
.field private static final AIDL_IS_DISCONNECTED:Ljava/lang/String; = "aidl is disconnected"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final OTHER_ERROR_MESSAGE:Ljava/lang/String; = "other error message"

.field private static final REQUEST_ID:Ljava/lang/String; = "mRequestID"

.field private static final TAG:Ljava/lang/String; = "WeatherBaseDataTask"


# instance fields
.field private mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

.field private volatile mCancelAll:Z

.field private volatile mCanceledRequestId:Ljava/lang/String;

.field private mClazz:Ljava/lang/Class;

.field private mContext:Landroid/content/Context;

.field private mRequest:Lcom/oppo/servicesdk/WeatherRequest;

.field private mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Lcom/oppo/servicesdk/WeatherRequest;Lcom/oppo/weatherservicesdk/BaseCallBack;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    .line 32
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    .line 34
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mClazz:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mType:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    .line 37
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    .line 43
    iput-object p4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    .line 44
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mClazz:Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->bindUpdateService(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Landroid/content/Context;Lcom/oppo/servicesdk/WeatherRequest;Lcom/oppo/weatherservicesdk/BaseCallBack;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    .line 32
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    .line 34
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mClazz:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mType:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    .line 37
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    .line 51
    iput-object p4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    .line 52
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mType:Ljava/lang/reflect/Type;

    .line 53
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->bindUpdateService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->getMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    return-void
.end method

.method private callBackOnFailed(Ljava/lang/String;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    if-eqz p0, :cond_0

    .line 212
    invoke-interface {p0, p1}, Lcom/oppo/weatherservicesdk/BaseCallBack;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private executeRequest()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->getInstance()Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->getIOPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;

    invoke-direct {v1, p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask$1;-><init>(Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getMethodName()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/servicesdk/WeatherRequest;->getCallMethodName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private interceptForFakeCancel()Z
    .locals 6

    .line 193
    iget-boolean v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, " doRequestFromWeatherService "

    const-string v4, "WeatherBaseDataTask"

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    invoke-virtual {v3}, Lcom/oppo/servicesdk/WeatherRequest;->getCallMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cancel all "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-boolean v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    invoke-virtual {v5}, Lcom/oppo/servicesdk/WeatherRequest;->getRequestID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    invoke-virtual {v2}, Lcom/oppo/servicesdk/WeatherRequest;->getCallMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " canceled id= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oppo/weatherservicesdk/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    return-void
.end method

.method public cancelAll()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCanceledRequestId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCancelAll:Z

    return-void
.end method

.method protected doRequestFromWeatherService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getWeatherService()Lcom/oppo/servicesdk/ICommonService;

    move-result-object v0

    const-string v1, "WeatherBaseDataTask"

    if-nez v0, :cond_0

    const-string v0, "aidl is disconnected"

    .line 131
    invoke-direct {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    .line 132
    invoke-static {v1, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    invoke-interface {v0, v2}, Lcom/oppo/servicesdk/ICommonService;->execute(Lcom/oppo/servicesdk/WeatherRequest;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after doRequestFromWeatherService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "other error message"

    if-eqz v0, :cond_b

    .line 140
    new-instance v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;

    invoke-direct {v3}, Lcom/oppo/weatherservicesdk/model/WeatherResponse;-><init>()V

    .line 142
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errorCode"

    .line 143
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorCode:I

    const-string v0, "mRequestID"

    .line 144
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->mRequestID:Ljava/lang/String;

    const-string v0, "errorMessage"

    .line 145
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorMessage:Ljava/lang/String;

    const-string v0, "data"

    .line 146
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 148
    iget-object v4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mClazz:Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mClazz:Ljava/lang/Class;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->data:Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_2
    iget-object v4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mType:Ljava/lang/reflect/Type;

    if-eqz v4, :cond_3

    .line 151
    iget-object v4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mType:Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->data:Ljava/lang/Object;

    .line 156
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " doRequestFromWeatherService "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    invoke-virtual {v4}, Lcom/oppo/servicesdk/WeatherRequest;->getCallMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " response data "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    if-eqz v0, :cond_7

    .line 160
    iget v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorCode:I

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mCallBack:Lcom/oppo/weatherservicesdk/BaseCallBack;

    iget-object v2, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->data:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/oppo/weatherservicesdk/BaseCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :cond_6
    iget-object v0, v3, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 183
    :cond_7
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 184
    :cond_8
    invoke-direct {p0, v2}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, " Exception "

    .line 173
    invoke-static {v1, v2, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 175
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v2, " JSONException "

    .line 168
    invoke-static {v1, v2, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 170
    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_b
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->interceptForFakeCancel()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 180
    :cond_c
    invoke-direct {p0, v2}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->callBackOnFailed(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentRestId()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/servicesdk/WeatherRequest;->getRequestID()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onServiceConnected()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->executeRequest()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const-string p0, "WeatherBaseDataTask"

    const-string v0, "onServiceDisconnected"

    .line 228
    invoke-static {p0, v0}, Lcom/oppo/weatherservicesdk/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startServiceRequest()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->isStartService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->executeRequest()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->bindUpdateService(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->registerCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V

    :goto_0
    return-void
.end method

.method public startServiceRequest(Landroid/content/Context;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->startServiceRequest()V

    return-void
.end method

.method public startServiceRequest(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1, p2}, Lcom/oppo/servicesdk/WeatherRequest;->setRequestID(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->startServiceRequest()V

    return-void
.end method

.method public startServiceRequest(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mRequest:Lcom/oppo/servicesdk/WeatherRequest;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/oppo/servicesdk/WeatherRequest;->setRequestID(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->startServiceRequest()V

    return-void
.end method

.method public unRegisterConnectCallback()V
    .locals 1

    .line 217
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->unregisterCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V

    .line 218
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->unBindUpdateService(Landroid/content/Context;)V

    return-void
.end method
