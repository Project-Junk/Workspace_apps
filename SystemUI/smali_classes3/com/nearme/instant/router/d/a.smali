.class public abstract Lcom/nearme/instant/router/d/a;
.super Lcom/nearme/instant/router/Instant$Req;


# instance fields
.field a:Ljava/util/Map;

.field b:Ljava/util/Map;

.field c:Ljava/util/Map;

.field d:Ljava/util/Map;

.field e:Lcom/nearme/instant/router/callback/Callback;

.field f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nearme/instant/router/d/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/nearme/instant/router/Instant$Req;-><init>()V

    iget-object v0, p1, Lcom/nearme/instant/router/d/b;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/nearme/instant/router/d/a;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/nearme/instant/router/d/b;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/nearme/instant/router/d/a;->b:Ljava/util/Map;

    iget-object v0, p1, Lcom/nearme/instant/router/d/b;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/nearme/instant/router/d/a;->c:Ljava/util/Map;

    iget-object v0, p1, Lcom/nearme/instant/router/d/b;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/nearme/instant/router/d/a;->d:Ljava/util/Map;

    iget-object v0, p1, Lcom/nearme/instant/router/d/b;->e:Lcom/nearme/instant/router/callback/Callback;

    iput-object v0, p0, Lcom/nearme/instant/router/d/a;->e:Lcom/nearme/instant/router/callback/Callback;

    iget-object p1, p1, Lcom/nearme/instant/router/d/b;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/nearme/instant/router/d/a;->f:Ljava/lang/String;

    return-void
.end method
