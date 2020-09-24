.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;
.super Landroid/hardware/face/FaceManager$EnrollmentCallback;
.source "ColorFaceEnrollOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 396
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onEnrollmentError  "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoFaceEnrollOldActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;I)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 390
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onEnrollmentHelp "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoFaceEnrollOldActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;I)V

    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 6

    .line 379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnrollmentProgress "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 382
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    move-result-object v2

    const/4 v3, 0x5

    const-wide/16 v4, 0x3e8

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->e(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
