.class Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintResetPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->onCreate(Landroid/os/Bundle;)V
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

    .line 128
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FingerprintResetPassword"

    const-string p2, "onReceive stopListening"

    .line 135
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$302(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;Z)Z

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    return-void
.end method
