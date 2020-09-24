.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;
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

    .line 304
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 309
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 310
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result p1

    const/4 p2, 0x1

    const-wide/16 v0, 0x64

    const/16 v2, 0x66

    if-nez p1, :cond_0

    .line 311
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 312
    iput v2, p1, Landroid/os/Message;->what:I

    const v3, 0x7f1207cf

    .line 313
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 314
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v3, v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v2, v2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 318
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 319
    iput v2, p1, Landroid/os/Message;->what:I

    const v3, 0x7f1207de

    .line 320
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 321
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v3, v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v2, v2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
