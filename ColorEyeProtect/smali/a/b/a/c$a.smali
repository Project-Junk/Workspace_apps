.class public final La/b/a/c$a;
.super La/b/b/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/c;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)La/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/c;

.field final synthetic b:La/d/a/m;

.field final synthetic c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>(La/b/c;La/b/c;La/d/a/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/b/a/c$a;->a:La/b/c;

    iput-object p3, p0, La/b/a/c$a;->b:La/d/a/m;

    iput-object p4, p0, La/b/a/c$a;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, La/b/b/a/i;-><init>(La/b/c;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, La/b/a/c$a;->d:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_0
    iput v1, p0, La/b/a/c$a;->d:I

    invoke-static {p1}, La/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, La/b/a/c$a;->d:I

    invoke-static {p1}, La/l;->a(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, La/b/c;

    iget-object v0, p0, La/b/a/c$a;->b:La/d/a/m;

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La/d/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/a/m;

    iget-object p0, p0, La/b/a/c$a;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, La/d/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
