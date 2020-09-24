.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 352
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result p1

    const-wide/16 v1, 0x64

    const/16 v3, 0x66

    if-nez p1, :cond_3

    .line 353
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207cf

    .line 355
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 356
    iput v3, p1, Landroid/os/Message;->what:I

    .line 357
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 361
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const p2, 0x7f1207de

    .line 362
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 363
    iput v3, p1, Landroid/os/Message;->what:I

    .line 364
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_2
    return p2

    .line 368
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v4, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v4, :cond_4

    .line 369
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 370
    iput v3, p1, Landroid/os/Message;->what:I

    const p2, 0x7f1207d1

    .line 371
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 372
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_4
    return p2
.end method
