.class Lcom/coloros/anim/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/anim/f;


# direct methods
.method constructor <init>(Lcom/coloros/anim/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/f$1;->a:Lcom/coloros/anim/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/f$1;->a:Lcom/coloros/anim/f;

    invoke-static {p0}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/f;)V

    :goto_0
    return-void
.end method
