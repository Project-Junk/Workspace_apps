.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;
.super Ljava/lang/Object;
.source "NewDiracMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 117
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 122
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckedChanged()  isChecked: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x64

    .line 125
    iput v0, p1, Landroid/os/Message;->what:I

    .line 126
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
