.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->a()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "ChooseGenericPrivacy"

    const-string p2, "requestVerificationCode onFailure"

    .line 773
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-boolean p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->b:Z

    if-nez p1, :cond_0

    .line 775
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->f:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$1;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "ChooseGenericPrivacy"

    .line 787
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 789
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 790
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    .line 791
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "requestVerificationCode onResponse result : "

    .line 792
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-boolean v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->b:Z

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->f:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$2;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 808
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "requestVerificationCode responseStr "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-boolean p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->b:Z

    if-nez p1, :cond_2

    .line 811
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->f:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$3;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1$3;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
