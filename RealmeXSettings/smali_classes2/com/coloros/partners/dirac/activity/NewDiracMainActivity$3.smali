.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;
.super Landroid/os/Handler;
.source "NewDiracMainActivity.java"


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

    .line 175
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 206
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 207
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/coloros/partners/dirac/a/a;->a(I)I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_2

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    .line 200
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne v0, v1, :cond_5

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    return-void

    .line 191
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

    .line 193
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Z)V

    return-void

    .line 186
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 187
    :goto_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Z)V

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
