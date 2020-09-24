.class public final Lcom/coloros/settings/utils/a$1;
.super Landroid/os/Handler;
.source "AccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/coloros/settings/utils/a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/c/a/f;

    if-eqz p1, :cond_0

    .line 1068
    iget v0, p1, Lcom/c/a/f;->a:I

    const v1, 0x1c9c769

    if-ne v0, v1, :cond_0

    .line 2050
    iget-object p1, p1, Lcom/c/a/f;->d:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/utils/a$1;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string p1, "safe-findphone"

    const-string v0, "startLoginOppoAccount failed"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
