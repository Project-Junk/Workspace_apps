.class final Lcom/nearme/instant/router/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nearme/instant/router/callback/Callback;

.field private synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/g/g;->a:Lcom/nearme/instant/router/callback/Callback;

    iput-object p2, p0, Lcom/nearme/instant/router/g/g;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nearme/instant/router/g/g;->a:Lcom/nearme/instant/router/callback/Callback;

    iget-object p0, p0, Lcom/nearme/instant/router/g/g;->b:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/nearme/instant/router/g/c;->b(Lcom/nearme/instant/router/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method
