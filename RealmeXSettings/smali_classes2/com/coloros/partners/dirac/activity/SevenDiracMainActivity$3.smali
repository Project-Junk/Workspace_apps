.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 781
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_1

    const/16 p1, 0xb

    if-le p3, p1, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->o()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;IZ)V

    .line 789
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x67

    .line 790
    iput p2, p1, Landroid/os/Message;->what:I

    .line 791
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 792
    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p3, p3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    const-wide/16 p3, 0x5dc

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    .line 795
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
