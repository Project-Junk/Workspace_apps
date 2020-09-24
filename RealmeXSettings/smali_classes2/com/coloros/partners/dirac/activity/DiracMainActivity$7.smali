.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;
.super Ljava/lang/Object;
.source "DiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/DiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result p1

    const-wide/16 v1, 0x64

    const/16 v3, 0x66

    if-nez p1, :cond_3

    .line 349
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 350
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207cf

    .line 351
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 352
    iput v3, p1, Landroid/os/Message;->what:I

    .line 353
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    .line 356
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 357
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207de

    .line 358
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 359
    iput v3, p1, Landroid/os/Message;->what:I

    .line 360
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_2
    return p2

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v4, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v4, :cond_4

    .line 365
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 366
    iput v3, p1, Landroid/os/Message;->what:I

    const p2, 0x7f1207d1

    .line 367
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 368
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_4
    return p2
.end method
