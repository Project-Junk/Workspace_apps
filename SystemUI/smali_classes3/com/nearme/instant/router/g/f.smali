.class final Lcom/nearme/instant/router/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nearme/instant/router/g/e;


# direct methods
.method constructor <init>(Lcom/nearme/instant/router/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/g/f;->a:Lcom/nearme/instant/router/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nearme/instant/router/g/f;->a:Lcom/nearme/instant/router/g/e;

    iget-object p0, p0, Lcom/nearme/instant/router/g/e;->a:Lcom/nearme/instant/router/callback/Callback;

    invoke-static {p0}, Lcom/nearme/instant/router/g/c;->a(Lcom/nearme/instant/router/callback/Callback;)V

    return-void
.end method
