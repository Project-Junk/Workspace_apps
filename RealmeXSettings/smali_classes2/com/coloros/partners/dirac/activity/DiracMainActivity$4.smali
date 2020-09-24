.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;
.super Ljava/lang/Object;
.source "DiracMainActivity.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;


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

    .line 201
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

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

    .line 205
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateFinished(int... params) , EqualizerView update,supportEqualizer():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasSupportHeadSet():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    .line 209
    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Z)V

    .line 216
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a([I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {v1, v2, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    .line 221
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {v1, v0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z[I)V

    .line 225
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    .line 226
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void
.end method
