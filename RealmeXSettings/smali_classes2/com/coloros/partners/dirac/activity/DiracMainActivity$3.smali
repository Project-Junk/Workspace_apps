.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;
.super Landroid/os/Handler;
.source "DiracMainActivity.java"


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

    .line 159
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 190
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 191
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/coloros/partners/dirac/a/a;->a(I)I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_2

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    .line 184
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne v0, v1, :cond_5

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    return-void

    .line 175
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;Z)V

    return-void

    .line 170
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 171
    :goto_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;Z)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
