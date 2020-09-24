.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;
.super Landroid/os/CountDownTimer;
.source "ColorConfirmLockPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(J)V
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

    .line 365
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 385
    invoke-static {}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countdownForFingerprint onFinish"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    .line 388
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->f(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120cd5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->g(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    :cond_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 373
    div-long/2addr p1, v0

    long-to-int p1, p1

    if-lez p1, :cond_1

    .line 375
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const v1, 0x7f120b75

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
