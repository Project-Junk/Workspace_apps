.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "ResetGenericActivity"

    const-string p2, "checkVerificationCode onFailure"

    .line 627
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object p1, p1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$1;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "ResetGenericActivity"

    .line 641
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 643
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 644
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    .line 645
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "checkVerificationCode onResponse result : "

    .line 646
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    .line 647
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    new-instance v1, Lcom/coloros/settings/privacy/a/j;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 649
    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;)V

    .line 1193
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "ScreenLockResetController"

    if-eqz v3, :cond_0

    :try_start_1
    const-string v0, "checkRequestIdGetPassword only main user need do this"

    .line 1194
    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1197
    :cond_0
    iget v3, v1, Lcom/coloros/settings/privacy/a/j;->a:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const-string v3, "not system_type"

    .line 1198
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_1
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1201
    new-instance v3, Lcom/coloros/settings/privacy/a/d;

    sget-object v5, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v3, v5}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 1202
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v1, v1, Lcom/coloros/settings/privacy/a/j;->a:I

    invoke-virtual {v3, v5, v1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1203
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    const/4 v5, 0x4

    invoke-virtual {v3, v1, v5}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1204
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v3, v1, v0}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 1206
    invoke-virtual {v3}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1208
    :try_start_2
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object v0

    .line 1209
    invoke-static {v0}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object v0

    .line 1210
    sget-object v1, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/a/j;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1211
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v1

    .line 1234
    iget-object v1, v1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 1213
    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "checkRequestIdGetPassword succeed"

    .line 1214
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->c:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2234
    iget-object v0, v0, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 1218
    invoke-static {v0}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1219
    invoke-static {v0}, Lcom/coloros/settings/privacy/a/k;->d([B)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 1220
    invoke-interface {v2, v3, v1, v0}, Lcom/coloros/settings/privacy/a/j$b;->onChecked(Z[BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "checkRequestIdGetPassword e = "

    .line 1227
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "checkRequestIdGetPassword fail"

    .line 1229
    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 1230
    invoke-interface {v2, v0, v1, v3}, Lcom/coloros/settings/privacy/a/j$b;->onChecked(Z[BLjava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 675
    :catch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "checkVerificationCode responseStr "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object p1, p1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$3;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
