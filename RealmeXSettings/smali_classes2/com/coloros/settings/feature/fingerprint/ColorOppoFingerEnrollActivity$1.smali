.class Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;
.super Ljava/lang/Object;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initEnrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentError : errMsgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoEnrollActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "onEnrollmentError mContinueButtonShown"

    .line 259
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    .line 263
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$400(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentHelp :helpMsgId =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", helpString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoEnrollActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "onEnrollmentHelp mContinueButtonShown"

    .line 248
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    .line 252
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;I)V

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgressChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$600(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;ZII)V

    return-void

    :cond_0
    const-string p1, "onProgressChange mSidecar is null"

    .line 273
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFingerTouchUp()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$700(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$702(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z

    .line 281
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$800(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$900(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1000(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->stop()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$800(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1002(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z

    :cond_2
    return-void
.end method
