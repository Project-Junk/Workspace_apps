.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/activity/DolbyMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCheckedChanged() isChecked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mForbidUpdateEffectStatus:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    .line 124
    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DolbyMainActivity"

    .line 123
    invoke-static {v0, p1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x64

    .line 129
    iput v0, p1, Landroid/os/Message;->what:I

    .line 130
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p2, p2, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method