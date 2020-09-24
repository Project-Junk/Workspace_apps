.class public abstract Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.super Landroid/os/Handler;
.source "StaticHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StaticHandler"


# instance fields
.field protected ref:Ljava/lang/ref/WeakReference;
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

    .line 14
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "StaticHandler"

    const-string v0, "ref.get is null."

    .line 27
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected abstract handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation
.end method
