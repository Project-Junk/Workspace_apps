.class public Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
.super Ljava/lang/Object;
.source "OKHttpRequestCall.java"


# instance fields
.field private call:Lokhttp3/Call;

.field private clone:Lokhttp3/OkHttpClient;

.field private connTimeOut:J

.field private okHttpRequest:Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

.field private readTimeOut:J

.field private request:Lokhttp3/Request;

.field private writeTimeOut:J


# direct methods
.method public constructor <init>(Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->okHttpRequest:Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

    return-void
.end method

.method private generateRequest(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Request;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->okHttpRequest:Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

    invoke-virtual {v0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->generateRequest(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildCall(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Call;
    .locals 6

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->generateRequest(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->request:Lokhttp3/Request;

    .line 57
    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->readTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->writeTimeOut:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->connTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->getInstance()Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    goto :goto_4

    .line 58
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->readTimeOut:J

    cmp-long p1, v0, v2

    const-wide/16 v4, 0x7530

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    :goto_1
    iput-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->readTimeOut:J

    .line 59
    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->writeTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v4

    :goto_2
    iput-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->writeTimeOut:J

    .line 60
    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->connTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v0, v4

    :goto_3
    iput-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->connTimeOut:J

    .line 62
    invoke-static {}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->getInstance()Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->readTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->writeTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->connTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->clone:Lokhttp3/OkHttpClient;

    .line 68
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->clone:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    .line 72
    :goto_4
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    return-object p1
.end method

.method public cancel()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public connTimeOut(J)Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->connTimeOut:J

    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->buildCall(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Call;

    .line 103
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/heytap/accountsdk/net/security/callback/Callback;)V
    .locals 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->buildCall(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Call;

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->getOkHttpRequest()Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onBefore(Lokhttp3/Request;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->getInstance()Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->request(Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;Lcom/heytap/accountsdk/net/security/callback/Callback;)V

    return-void
.end method

.method public getCall()Lokhttp3/Call;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public getOkHttpRequest()Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->okHttpRequest:Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public readTimeOut(J)Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->readTimeOut:J

    return-object p0
.end method

.method public writeTimeOut(J)Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->writeTimeOut:J

    return-object p0
.end method
