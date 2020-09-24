.class public final Lcom/nearme/instant/router/callback/a;
.super Lcom/nearme/instant/router/callback/Callback;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/nearme/instant/router/callback/Callback;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/router/callback/Callback;)V
    .locals 0

    invoke-direct {p0}, Lcom/nearme/instant/router/callback/Callback;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/nearme/instant/router/callback/b;

    invoke-direct {p1}, Lcom/nearme/instant/router/callback/b;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/router/callback/a;->b:Lcom/nearme/instant/router/callback/Callback;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/nearme/instant/router/callback/a;->b:Lcom/nearme/instant/router/callback/Callback;

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nearme/instant/router/callback/Callback$Response;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/nearme/instant/router/callback/Callback$Response;->getMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failMsg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/nearme/instant/router/f/a;->a()Lcom/nearme/instant/router/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nearme/instant/router/f/a;->b()Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nearme/instant/router/Instant$IStatisticsProvider;->onStat(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lcom/nearme/instant/router/callback/Callback$Response;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "router_response"

    invoke-static {v1, v0}, Lcom/nearme/instant/router/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nearme/instant/router/callback/a;->b:Lcom/nearme/instant/router/callback/Callback;

    invoke-virtual {p0, p1}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Lcom/nearme/instant/router/callback/Callback$Response;)V

    return-void
.end method
