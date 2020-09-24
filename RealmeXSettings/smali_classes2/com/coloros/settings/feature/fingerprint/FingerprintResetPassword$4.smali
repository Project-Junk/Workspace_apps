.class Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;
.super Landroid/os/CountDownTimer;
.source "FingerprintResetPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->countDown(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

.field final synthetic val$isFinger:Z


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;JJZ)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    iput-boolean p6, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->val$isFinger:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$400(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$500(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;II)V

    .line 351
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$402(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;Z)Z

    .line 352
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V

    :cond_0
    const-string v0, "FingerprintResetPassword"

    const-string v1, "countDown startListening "

    .line 354
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$400(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 342
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 343
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->val$isFinger:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-static {p2, v0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->access$500(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;II)V

    :cond_1
    return-void
.end method
