.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;
.super Ljava/lang/Object;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->b:Ljava/util/List;

    iput p4, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerified([BI)V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 536
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->a:Landroid/content/Intent;

    const-string v2, "face_hw_auth__token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 1015
    sput-object p1, Lcom/coloros/settings/utils/z;->a:Ljava/lang/String;

    .line 544
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 546
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object p1, p1, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;->c:I

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method
