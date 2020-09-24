.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 385
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DolbyMainActivity"

    const-string v0, "onClick music ieq radio"

    .line 389
    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)Z

    .line 391
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/partners/dolby/a;->b(Z)V

    .line 392
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V

    .line 393
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V

    :cond_0
    return-void
.end method
