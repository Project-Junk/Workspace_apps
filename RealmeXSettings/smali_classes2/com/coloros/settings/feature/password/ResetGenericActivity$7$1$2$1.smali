.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->onChecked(Z[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;ZLjava/lang/String;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->a:Z

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matched = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetGenericActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->a:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v1, v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "from_lock_screen"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "from_email_reset"

    .line 660
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    .line 662
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v2

    const-string v3, "lockscreen.password_type"

    .line 661
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/password/ChooseLockPassword;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v2, v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {v2, v0, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2$1;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1$2;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method
