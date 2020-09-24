.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;
.super Ljava/lang/Object;
.source "NewDiracMainActivity.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;


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

    .line 217
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onProgressUpdate([I)V
    .locals 0

    return-void
.end method

.method public final varargs onUpdateFinished([I)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateFinished(int... params) , EqualizerView update,supportEqualizer():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasSupportHeadSet():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    .line 225
    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 227
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Z)V

    .line 232
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c([I)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {v1, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;[I)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v1, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I)V

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    .line 243
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void
.end method
