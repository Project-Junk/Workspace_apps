.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;
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

    .line 299
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 304
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 305
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result p1

    const/4 p2, 0x1

    const-wide/16 v0, 0x64

    const/16 v2, 0x66

    if-nez p1, :cond_0

    .line 306
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 307
    iput v2, p1, Landroid/os/Message;->what:I

    const v3, 0x7f1207cf

    .line 308
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 309
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v3, v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v2, v2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 316
    iput v2, p1, Landroid/os/Message;->what:I

    const v3, 0x7f1207de

    .line 317
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 318
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v3, v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v2, v2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
