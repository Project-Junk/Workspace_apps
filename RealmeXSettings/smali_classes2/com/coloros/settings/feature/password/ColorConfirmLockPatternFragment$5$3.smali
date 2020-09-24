.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;
.super Ljava/lang/Object;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;
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

    .line 624
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->b:Ljava/util/List;

    iput p4, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 0

    return-void
.end method

.method public final onChecked(ZI)V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->A(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->a:Landroid/content/Intent;

    const/4 v1, 0x2

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    sput-object v0, Lcom/coloros/settings/utils/z;->a:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->b:Ljava/util/List;

    .line 636
    invoke-static {v1}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object v1

    const-string v2, "password"

    .line 635
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->d:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;->c:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final onEarlyMatched()V
    .locals 0

    return-void
.end method
