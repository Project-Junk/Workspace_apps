.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;
.super Landroid/os/Handler;
.source "SevenDiracMainActivity.java"


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

    .line 176
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 210
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_6

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 211
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/coloros/partners/dirac/a/a;->a(I)I

    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_2

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    .line 204
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne v0, v1, :cond_6

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    return-void

    .line 192
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

    .line 194
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 197
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Z)V

    return-void

    .line 187
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 188
    :goto_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Z)V

    :cond_6
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
