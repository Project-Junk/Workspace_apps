.class final Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;J)V
    .locals 2

    .line 534
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    .line 549
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    .line 548
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(I)V

    return-void
.end method

.method public final onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 538
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 539
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->a:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 541
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120cf3

    .line 539
    invoke-virtual {p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Ljava/lang/CharSequence;J)V

    return-void
.end method
