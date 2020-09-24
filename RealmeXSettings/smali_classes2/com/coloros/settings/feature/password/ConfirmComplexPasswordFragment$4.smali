.class final Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmComplexPasswordFragment.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->b:Ljava/lang/String;

    iput p4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->d(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_3

    .line 408
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->e(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget v1, v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x40000

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    const/high16 v1, 0x50000

    if-eq v1, v0, :cond_1

    const/high16 v1, 0x60000

    if-eq v1, v0, :cond_1

    const/high16 v1, 0x80000

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 416
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->a:Landroid/content/Intent;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    :goto_2
    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->d:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;->c:I

    invoke-static {v0, p1, v1, p2, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;ZLandroid/content/Intent;II)V

    return-void
.end method
