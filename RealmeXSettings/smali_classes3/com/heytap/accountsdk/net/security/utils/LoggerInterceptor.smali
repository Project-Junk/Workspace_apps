.class public Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;
.super Ljava/lang/Object;
.source "LoggerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "OkHttpUtils"


# instance fields
.field private showResponse:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OkHttpUtils"

    .line 27
    :cond_0
    iput-boolean p2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->showResponse:Z

    .line 28
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    return-void
.end method

.method private bodyToString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 131
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 132
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 133
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "something error when show requestBody."

    return-object p1
.end method

.method private isText(Lokhttp3/MediaType;)Z
    .locals 3

    .line 114
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p1

    const-string v0, "webviewhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private logForRequest(Lokhttp3/Request;)V
    .locals 5

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v3, "========request\'log======="

    invoke-static {v2, v3}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "method : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v3, "url : "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "headers : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestBody\'s contentType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody\'s content : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->bodyToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v0, "requestBody\'s content :  maybe [file part] , too large too print , ignored!"

    invoke-static {p1, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v0, "========request\'log=======end"

    invoke-static {p1, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logForResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 5

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "========response\'log======="

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocol : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-boolean v1, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->showResponse:Z

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "responseBody\'s contentType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v1}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v3, "responseBody\'s content : "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "responseBody\'s content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "========response\'log=======end"

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->logForRequest(Lokhttp3/Request;)V

    .line 39
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/LoggerInterceptor;->logForResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
