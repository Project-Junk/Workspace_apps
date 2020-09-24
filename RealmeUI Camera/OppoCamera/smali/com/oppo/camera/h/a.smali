.class public Lcom/oppo/camera/h/a;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FlashControllerCallback.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Z

.field private volatile c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:Lcom/oppo/camera/h/b;

.field private k:Lcom/oppo/camera/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/oppo/camera/e/f;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->b:Z

    .line 42
    iput v0, p0, Lcom/oppo/camera/h/a;->c:I

    .line 44
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->d:Z

    .line 45
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    .line 46
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/oppo/camera/h/a;->h:J

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lcom/oppo/camera/h/a;->i:I

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    .line 57
    iput-object p1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    .line 58
    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object p1, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p1, Lcom/oppo/camera/h/b;

    sget-object v0, Lcom/oppo/camera/h/a;->a:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/oppo/camera/h/b;-><init>(ILjava/util/Set;)V

    iput-object p1, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashControllerCallback"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput p1, p0, Lcom/oppo/camera/h/a;->i:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/oppo/camera/h/a;->b:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAeTriggerStart, mAeTriggerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/h/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashControllerCallback"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/oppo/camera/h/a;->c:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/h/a;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->b:Z

    .line 194
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->e:Z

    .line 195
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->f:Z

    .line 196
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->g:Z

    const/4 v1, -0x1

    .line 197
    iput v1, p0, Lcom/oppo/camera/h/a;->i:I

    .line 198
    iput-boolean v0, p0, Lcom/oppo/camera/h/a;->d:Z

    .line 199
    iput v0, p0, Lcom/oppo/camera/h/a;->c:I

    .line 200
    iget-object v0, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    invoke-virtual {v0}, Lcom/oppo/camera/h/b;->a()V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 11

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 69
    iget-boolean p1, p0, Lcom/oppo/camera/h/a;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FlashControllerCallback"

    if-nez p3, :cond_1

    const-string p2, "onCaptureCompleted, result is null!"

    .line 74
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/oppo/camera/e/f;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 83
    iget-object p2, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    invoke-interface {p2}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object p2

    const-string v2, "com.oppo.ae.aecsettled"

    .line 84
    invoke-virtual {p2, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const-string v3, "com.oppo.ae.preflashstate"

    .line 85
    invoke-virtual {p2, v3}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-eqz p2, :cond_4

    .line 92
    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    check-cast p2, [I

    aget v0, p2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 96
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 98
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 99
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/h/a;->c:I

    .line 108
    :cond_5
    iget p2, p0, Lcom/oppo/camera/h/a;->c:I

    if-ne v3, p2, :cond_c

    .line 109
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 110
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v4

    .line 111
    iget-object v6, p0, Lcom/oppo/camera/h/a;->j:Lcom/oppo/camera/h/b;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v7

    .line 112
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 111
    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/oppo/camera/h/b;->a(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    if-eqz v6, :cond_6

    .line 113
    invoke-interface {v6}, Lcom/oppo/camera/e/f;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/oppo/camera/h/a;->g:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :goto_3
    if-eqz p2, :cond_8

    .line 114
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_8

    move p2, v3

    goto :goto_4

    :cond_8
    move p2, v1

    .line 116
    :goto_4
    iget-boolean v6, p0, Lcom/oppo/camera/h/a;->d:Z

    if-nez v6, :cond_9

    .line 117
    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->d:Z

    .line 118
    iput-wide v4, p0, Lcom/oppo/camera/h/a;->h:J

    :cond_9
    if-eqz p2, :cond_a

    .line 126
    iget-wide v6, p0, Lcom/oppo/camera/h/a;->h:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    cmp-long p2, v4, v6

    if-gtz p2, :cond_b

    :cond_a
    if-eqz v2, :cond_c

    .line 127
    :cond_b
    iget-boolean p2, p0, Lcom/oppo/camera/h/a;->e:Z

    if-nez p2, :cond_c

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted, aeConverged and aeDone : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->e:Z

    .line 131
    iput-boolean v1, p0, Lcom/oppo/camera/h/a;->d:Z

    const-wide/16 p1, 0x0

    .line 132
    iput-wide p1, p0, Lcom/oppo/camera/h/a;->h:J

    .line 133
    iput v3, p0, Lcom/oppo/camera/h/a;->i:I

    .line 134
    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->c()V

    .line 139
    :cond_c
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 145
    iget p2, p0, Lcom/oppo/camera/h/a;->i:I

    const/4 p3, 0x2

    if-eq p3, p2, :cond_d

    .line 146
    iget-boolean p2, p0, Lcom/oppo/camera/h/a;->e:Z

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d

    .line 147
    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->f:Z

    .line 148
    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->d()V

    .line 149
    iput p3, p0, Lcom/oppo/camera/h/a;->i:I

    .line 153
    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/h/a;->k:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0xff

    if-ne v0, p1, :cond_e

    .line 154
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 155
    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->b()V

    goto :goto_5

    :cond_e
    if-ne v0, v3, :cond_f

    .line 156
    iget-boolean p1, p0, Lcom/oppo/camera/h/a;->g:Z

    if-nez p1, :cond_f

    .line 157
    iput-boolean v3, p0, Lcom/oppo/camera/h/a;->g:Z

    .line 158
    invoke-virtual {p0}, Lcom/oppo/camera/h/a;->a()V

    :cond_f
    :goto_5
    return-void
.end method
