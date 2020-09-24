.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;
.super Ljava/lang/Object;
.source "NewDiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 476
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 485
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result p1

    const-wide/16 v1, 0x64

    const/16 v3, 0x66

    if-nez p1, :cond_3

    .line 486
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 487
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207cf

    .line 488
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 489
    iput v3, p1, Landroid/os/Message;->what:I

    .line 490
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    .line 493
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 494
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207de

    .line 495
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 496
    iput v3, p1, Landroid/os/Message;->what:I

    .line 497
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_2
    return p2

    .line 501
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v4, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v4, :cond_4

    .line 502
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 503
    iput v3, p1, Landroid/os/Message;->what:I

    const p2, 0x7f1207d1

    .line 504
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 505
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_4
    return p2
.end method
