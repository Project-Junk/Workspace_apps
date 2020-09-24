.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;
.super Ljava/lang/Object;
.source "ConfirmSimplePinFragment.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


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

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Landroid/content/Intent;ZLjava/lang/String;I)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->e:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->a:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->b:Z

    iput-object p4, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->c:Ljava/lang/String;

    iput p5, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerified([BI)V
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->e:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->k(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->a:Landroid/content/Intent;

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 513
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startVerifyPassword token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmSimplePinFragment"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->b:Z

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 515
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->e:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->a:Landroid/content/Intent;

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    .line 517
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->e:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->a:Landroid/content/Intent;

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;->d:I

    invoke-static {p1, v2, v0, p2, v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;ZLandroid/content/Intent;II)V

    return-void
.end method
