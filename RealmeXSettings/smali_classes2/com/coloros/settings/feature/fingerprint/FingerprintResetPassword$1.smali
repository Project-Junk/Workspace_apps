.class Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;
.super Landroid/os/Handler;
.source "FingerprintResetPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;
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

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/b/a;->b()V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V

    :cond_0
    return-void
.end method
