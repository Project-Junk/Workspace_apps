.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;
.super Ljava/lang/Object;
.source "ConfirmSimplePinFragment.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->b:Ljava/lang/String;

    iput p4, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->k(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->l(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    .line 539
    invoke-static {v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->m(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const-string v2, "type"

    .line 538
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->b:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->d:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;->c:I

    invoke-static {v0, p1, v1, p2, v2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;ZLandroid/content/Intent;II)V

    return-void
.end method
