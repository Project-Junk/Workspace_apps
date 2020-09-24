.class final Lcom/coloros/anim/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/coloros/anim/e<",
        "Lcom/coloros/anim/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/g$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/anim/g$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/anim/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/g$4;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/anim/g$4;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/anim/g;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/g$4;->a()Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method
