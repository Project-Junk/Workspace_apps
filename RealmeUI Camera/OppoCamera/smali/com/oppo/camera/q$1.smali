.class Lcom/oppo/camera/q$1;
.super Landroid/os/Handler;
.source "PreviewImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/q;-><init>(Lcom/oppo/camera/q$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/q;


# direct methods
.method constructor <init>(Lcom/oppo/camera/q;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oppo/camera/q$1;->a:Lcom/oppo/camera/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/q$1;->a:Lcom/oppo/camera/q;

    invoke-static {p1}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/q;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/q$1;->a:Lcom/oppo/camera/q;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/q;->a(Z)V

    :goto_0
    return-void
.end method
