.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;
.super Ljava/lang/Object;
.source "DiracMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 104
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckedChanged()  isChecked: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x64

    .line 112
    iput v0, p1, Landroid/os/Message;->what:I

    .line 113
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
