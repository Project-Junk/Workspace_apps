.class final Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 2

    .line 612
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;I)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 616
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 617
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p2, p2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f120cf3

    .line 617
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
