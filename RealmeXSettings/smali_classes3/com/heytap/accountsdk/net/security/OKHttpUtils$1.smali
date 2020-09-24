.class Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accountsdk/net/security/OKHttpUtils;->request(Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;Lcom/heytap/accountsdk/net/security/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

.field final synthetic val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iput-object p2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iput-object p3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 114
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    :cond_0
    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/heytap/accountsdk/net/security/callback/Callback;->validateReponse(Lokhttp3/Response;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request failed , reponse\'s code is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    :cond_2
    return-void

    .line 126
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/heytap/accountsdk/net/security/callback/Callback;->parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendSuccessResultCallback(Ljava/lang/Object;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 132
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$finalCallback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 134
    :cond_5
    throw p1
.end method
