.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Landroid/view/View;)V
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

    .line 422
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 425
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DolbyMainActivity"

    const-string v0, "onClick music geq radio"

    .line 426
    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)Z

    .line 428
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/partners/dolby/a;->b(Z)V

    .line 429
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V

    .line 430
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V

    .line 431
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p1, p1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
