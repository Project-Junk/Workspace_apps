.class final Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;
.super Landroid/os/CountDownTimer;
.source "ConfirmComplexPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;J)V
    .locals 2

    .line 656
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "ConfirmComplexPasswordFragment"

    const-string v1, "countdownForFingerprint onFinish"

    .line 676
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->j(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->f(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    .line 679
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->k(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->i(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120cad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 683
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Lcom/android/settings/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    :cond_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->i(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->j(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 664
    div-long/2addr p1, v0

    long-to-int p1, p1

    if-lez p1, :cond_1

    .line 666
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object p2, p2, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    const v1, 0x7f120b75

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 667
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
