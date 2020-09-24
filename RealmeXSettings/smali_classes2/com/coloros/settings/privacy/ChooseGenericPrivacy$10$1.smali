.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "ChooseGenericPrivacy"

    const-string p2, "checkVerificationCode onFailure"

    .line 857
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$1;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "ChooseGenericPrivacy"

    .line 870
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 872
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 873
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkVerificationCode onResponse result : "

    .line 874
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    .line 875
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "requestId"

    .line 876
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object v1, v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->e(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Lcom/coloros/settings/privacy/a/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object v1, v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;[B)V

    .line 880
    invoke-static {}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "-8"

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$2;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 894
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "checkVerificationCode responseStr "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
