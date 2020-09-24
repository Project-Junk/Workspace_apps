.class final Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;Landroid/content/Intent;I)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->c:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerified([BI)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->c:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 511
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->c:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->c:Z

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->a:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 517
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->c:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->a:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;->b:I

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method
