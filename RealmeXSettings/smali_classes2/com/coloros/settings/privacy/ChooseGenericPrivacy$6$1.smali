.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "confirmByUrl onFailure = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseGenericPrivacy"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

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

    .line 663
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 665
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 666
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    .line 667
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "confirmByUrl onResponse result : "

    .line 668
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    .line 669
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    iget-object v1, v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->e(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Lcom/coloros/settings/privacy/a/g;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    iget-object v1, v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;[B)V

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 676
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "confirmByUrl responseStr "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    return-void
.end method
