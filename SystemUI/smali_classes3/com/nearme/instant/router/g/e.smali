.class final Lcom/nearme/instant/router/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nearme/instant/router/callback/Callback;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/nearme/instant/router/callback/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/g/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/instant/router/g/e;->c:Landroid/content/Intent;

    iput-object p3, p0, Lcom/nearme/instant/router/g/e;->a:Lcom/nearme/instant/router/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nearme/instant/router/g/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nearme/instant/router/g/e;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/nearme/instant/router/g/c;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/instant/router/g/f;

    invoke-direct {v1, p0}, Lcom/nearme/instant/router/g/f;-><init>(Lcom/nearme/instant/router/g/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/nearme/instant/router/g/e;->a:Lcom/nearme/instant/router/callback/Callback;

    invoke-static {p0, v0}, Lcom/nearme/instant/router/g/c;->a(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method
