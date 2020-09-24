.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;
.super Landroid/os/CountDownTimer;
.source "ColorConfirmLockPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;J)V
    .locals 2

    .line 706
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->C(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    .line 711
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;I)I

    .line 712
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->B(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result p1

    if-lez p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->f(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const v0, 0x7f12098d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 716
    invoke-static {p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->B(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 714
    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
