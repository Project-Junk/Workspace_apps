.class public abstract Lcom/coloros/c/a/a/c;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/c/a/a/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/coloros/c/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/c/a/a/c;->a(Landroid/os/Message;)V

    return-void
.end method
