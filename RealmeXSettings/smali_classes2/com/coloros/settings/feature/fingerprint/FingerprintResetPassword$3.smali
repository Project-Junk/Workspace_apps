.class Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;
.super Ljava/lang/Object;
.source "FingerprintResetPassword.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(Z[BLjava/lang/String;)V
    .locals 1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onAuthenticationSucceeded match ="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", password = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintResetPassword"

    .line 287
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 290
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string p3, "password"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 292
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    .line 293
    invoke-virtual {p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "from_lock_screen"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 292
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "from_fingerprint_reset"

    .line 294
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object p3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result p3

    const-string v0, "lockscreen.password_type"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    iget-object p3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-virtual {p3}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/android/settings/password/ChooseLockPassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object p3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-virtual {p3, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    return-void

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    return-void
.end method
