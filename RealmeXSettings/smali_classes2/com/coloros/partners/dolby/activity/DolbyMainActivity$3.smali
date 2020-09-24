.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;
.super Landroid/os/Handler;
.source "DolbyMainActivity.java"


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

    .line 155
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)V

    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V

    :cond_4
    :goto_2
    return-void
.end method
