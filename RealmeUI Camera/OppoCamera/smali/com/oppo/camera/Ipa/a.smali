.class public Lcom/oppo/camera/Ipa/a;
.super Ljava/lang/Object;
.source "CaptureMsgDataReportUtil.java"


# direct methods
.method public static a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)Lcom/oppo/camera/statistics/model/CaptureMsgData;
    .locals 2

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 20
    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v0, :cond_1

    .line 23
    iget v1, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    .line 24
    iget v0, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    .line 28
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->R:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraId:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->i:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mISO:I

    .line 30
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$b;->t:J

    iput-wide v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mEXP:J

    .line 31
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->u:F

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFocalLength:F

    .line 32
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->z:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mSmooth:I

    .line 33
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHdrMode:Ljava/lang/String;

    .line 35
    iget-boolean v0, p1, Lcom/oppo/camera/Ipa/b$b;->T:Z

    iput-boolean v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mbHdrTrigger:Z

    .line 36
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->l:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mbFlashTrigger:I

    .line 38
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFilterType:Ljava/lang/String;

    .line 44
    :goto_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterTriggerType:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->X:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    .line 48
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->Y:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mScreenBrightness:I

    .line 49
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Z:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 50
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->aa:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mOrientation:I

    .line 51
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->A:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->parseFaceBeauty([I)V

    .line 52
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->parseFaceInfo([Landroid/hardware/camera2/params/Face;)V

    .line 53
    iget p1, p1, Lcom/oppo/camera/Ipa/b$b;->ab:I

    iput p1, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAiScene:I

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "CaptureMsgDataReportUtil"

    const-string p1, "packageFromMeta, captureMsgData or imageCategory is null"

    .line 14
    invoke-static {p0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
