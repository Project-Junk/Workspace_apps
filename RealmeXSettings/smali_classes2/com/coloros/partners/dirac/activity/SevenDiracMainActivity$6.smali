.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;


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

    .line 221
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onProgressUpdate([I)V
    .locals 0

    return-void
.end method

.method public final varargs onUpdateFinished([I)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateFinished(int... params) , EqualizerView update,supportEqualizer():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasSupportHeadSet():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    .line 229
    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    array-length v0, p1

    const/4 v1, 0x7

    const/16 v2, 0xb

    if-ne v0, v1, :cond_3

    .line 231
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {v1, v2, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    :cond_1
    if-eqz v0, :cond_2

    .line 237
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Z)V

    .line 238
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->c([I)V

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->o()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void
.end method
