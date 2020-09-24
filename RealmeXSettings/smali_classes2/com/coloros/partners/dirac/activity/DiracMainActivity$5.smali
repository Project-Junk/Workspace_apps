.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;
.super Ljava/lang/Object;
.source "DiracMainActivity.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;


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

    .line 238
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(ILjava/lang/String;)V
    .locals 2

    .line 242
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;IZ)V

    .line 244
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x67

    .line 245
    iput v0, p2, Landroid/os/Message;->what:I

    .line 246
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 247
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
