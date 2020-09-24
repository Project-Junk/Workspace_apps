.class public abstract Lcom/nearme/instant/router/callback/Callback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nearme/instant/router/callback/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/router/callback/Callback$Response;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V
.end method

.method public onResponse(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 2

    invoke-static {p2}, Lcom/nearme/instant/router/g/h;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/nearme/instant/router/callback/Callback$Response;

    invoke-direct {p2}, Lcom/nearme/instant/router/callback/Callback$Response;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p2, Lcom/nearme/instant/router/callback/Callback$Response;->a:I

    const-string v0, "msg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p2, Lcom/nearme/instant/router/callback/Callback$Response;->a:I

    const-string p1, "fail to get response"

    :goto_0
    iput-object p1, p2, Lcom/nearme/instant/router/callback/Callback$Response;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V

    return-void
.end method
