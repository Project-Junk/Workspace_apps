.class public final Lcom/coloros/settings/feature/weather/a/e;
.super Landroid/os/Handler;
.source "StaticHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/a/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/weather/a/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/weather/a/e$a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/a/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/settings/feature/weather/a/e$a;Landroid/os/Looper;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/a/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/weather/a/e$a;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/a/e$a;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
