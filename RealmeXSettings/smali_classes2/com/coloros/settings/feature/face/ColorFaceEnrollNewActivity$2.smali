.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;
.super Landroid/hardware/face/FaceManager$EnrollmentCallback;
.source "ColorFaceEnrollNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 421
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onEnrollmentError  "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoFaceEnrollNewActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;I)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 411
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onEnrollmentHelp "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoFaceEnrollNewActivity"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;I)V

    .line 413
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    move-result-object p1

    const-string p2, "FaceRecordAnimView"

    const-string v0, "pause"

    .line 2391
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2392
    iput-boolean p2, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->f:Z

    .line 2393
    iget v0, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->h:F

    iput v0, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->g:F

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z

    :cond_0
    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 6

    .line 396
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnrollmentProgress "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 399
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    move-result-object v2

    const/4 v3, 0x5

    const-wide/16 v4, 0x3e8

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    move-result-object v0

    const-string v2, "FaceRecordAnimView"

    const-string v3, "resume"

    .line 1397
    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iput-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->f:Z

    const/4 v2, 0x0

    .line 1399
    iput v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->d:F

    .line 1400
    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->j:I

    .line 404
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
