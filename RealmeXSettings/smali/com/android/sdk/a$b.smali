.class public Lcom/android/sdk/a$b;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/sdk/a;


# direct methods
.method protected constructor <init>(Lcom/android/sdk/a;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 1

    .line 462
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/sdk/a$b;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    invoke-static {v0}, Lcom/android/sdk/a;->d(Lcom/android/sdk/a;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/sdk/a;->p:I

    .line 448
    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/sdk/a;->n:I

    .line 449
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    iget-boolean v0, v0, Lcom/android/sdk/a;->q:Z

    if-eq p1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    iput-boolean p1, v0, Lcom/android/sdk/a;->q:Z

    .line 452
    invoke-static {v0}, Lcom/android/sdk/a;->e(Lcom/android/sdk/a;)Lcom/android/sdk/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->e(Lcom/android/sdk/a;)Lcom/android/sdk/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    iget-boolean v0, v0, Lcom/android/sdk/a;->q:Z

    iget-object v1, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    invoke-virtual {v1}, Lcom/android/sdk/a;->a()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/sdk/a$a;->a(ZZ)V

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/android/sdk/a$b;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->b()V

    :cond_1
    return-void
.end method
