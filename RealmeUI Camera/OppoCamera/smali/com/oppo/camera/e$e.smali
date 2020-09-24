.class final Lcom/oppo/camera/e$e;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/e/f$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 6014
    iput-object p1, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 6014
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$e;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6023
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6024
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$e$1;-><init>(Lcom/oppo/camera/e$e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 2

    .line 6090
    iget-object p1, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, p3, p4, v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(JJ)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6095
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e;->c(Ljava/lang/String;)V

    .line 6097
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    const-string v3, "pref_support_ipa_process"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6098
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 6099
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFocalLength:F

    .line 6100
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6101
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, v2, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mISO:I

    .line 6102
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mEXP:J

    .line 6103
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->parseFaceInfo([Landroid/hardware/camera2/params/Face;)V

    .line 6105
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6106
    iget-object v2, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/oppo/camera/d/i;->h(I)I

    move-result v1

    iput v1, v2, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mbFlashTrigger:I

    :cond_0
    return-void

    .line 6113
    :cond_1
    new-instance v2, Lcom/oppo/camera/Ipa/b$b;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b$b;-><init>()V

    .line 6116
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/e/d;

    .line 6120
    iget-object v4, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->ag()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 6121
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->c()I

    move-result v4

    or-int/2addr v4, v5

    goto :goto_0

    :cond_2
    move v4, v5

    .line 6124
    :goto_0
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;

    move-result-object v6

    const-string v7, "pref_camera_slogan_key"

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6125
    invoke-static {v6}, Lcom/oppo/camera/e;->G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/u;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6126
    invoke-static {v6}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6127
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->e()I

    move-result v6

    or-int/2addr v4, v6

    .line 6128
    iput-boolean v8, v2, Lcom/oppo/camera/Ipa/b$b;->an:Z

    .line 6131
    :cond_3
    iget-boolean v6, v3, Lcom/oppo/camera/e/d;->l:Z

    if-eqz v6, :cond_6

    .line 6132
    iget-boolean v6, v3, Lcom/oppo/camera/e/d;->m:Z

    if-eqz v6, :cond_4

    or-int/lit16 v4, v4, 0x100

    .line 6134
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/d/i;->k()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    goto :goto_1

    .line 6135
    :cond_4
    iget-boolean v6, v3, Lcom/oppo/camera/e/d;->n:Z

    if-eqz v6, :cond_5

    or-int/lit16 v4, v4, 0x80

    .line 6138
    iput-boolean v8, v2, Lcom/oppo/camera/Ipa/b$b;->ar:Z

    .line 6139
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/d/i;->k()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    or-int/lit16 v4, v4, 0x80

    .line 6142
    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->ar:Z

    .line 6143
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/d/i;->k()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 6148
    iget-boolean v6, v3, Lcom/oppo/camera/e/d;->e:Z

    if-eqz v6, :cond_7

    .line 6149
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->b()I

    move-result v6

    or-int/2addr v4, v6

    .line 6150
    iget-object v6, v3, Lcom/oppo/camera/e/d;->b:Ljava/lang/String;

    iput-object v6, v2, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    .line 6151
    iget-boolean v6, v3, Lcom/oppo/camera/e/d;->c:Z

    iput-boolean v6, v2, Lcom/oppo/camera/Ipa/b$b;->P:Z

    .line 6154
    :cond_7
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    iget-boolean v9, v3, Lcom/oppo/camera/e/d;->j:Z

    invoke-static {v6, v9}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6155
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->d()I

    move-result v6

    or-int/2addr v4, v6

    .line 6159
    :cond_8
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 6160
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    .line 6161
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 6163
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCaptureCompleted, timeStamp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", isNeedAPSProcess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6164
    invoke-static {v12}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oppo/camera/d/i;->aj()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CameraManager"

    .line 6163
    invoke-static {v12, v11}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6166
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 6167
    iget-object v13, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v13}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v13

    if-nez v11, :cond_9

    move v11, v5

    goto :goto_2

    .line 6168
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 6167
    :goto_2
    invoke-virtual {v13, v11}, Lcom/oppo/camera/d/i;->h(I)I

    move-result v11

    .line 6169
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v13}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 6170
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v14}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 6171
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v15}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 6172
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object/from16 v16, v6

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 6173
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move/from16 v17, v9

    .line 6174
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-wide/from16 v18, v5

    .line 6175
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move/from16 v20, v5

    .line 6176
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v5

    move-wide/from16 v21, v5

    .line 6177
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/Face;

    .line 6178
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    move/from16 v23, v13

    iget-object v13, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6179
    invoke-static {v13}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v13

    invoke-interface {v13}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oppo/camera/e/h;->o()F

    move-result v13

    mul-float/2addr v6, v13

    if-eqz v3, :cond_a

    .line 6181
    iget-boolean v13, v3, Lcom/oppo/camera/e/d;->d:Z

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    :goto_3
    if-eqz v3, :cond_b

    move-object/from16 v24, v7

    .line 6182
    iget v7, v3, Lcom/oppo/camera/e/d;->h:I

    goto :goto_4

    :cond_b
    move-object/from16 v24, v7

    const/4 v7, 0x1

    .line 6184
    :goto_4
    iput v6, v2, Lcom/oppo/camera/Ipa/b$b;->x:F

    move/from16 v25, v7

    .line 6185
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/oppo/camera/Ipa/b$b;->b:J

    if-lez v15, :cond_c

    mul-int/2addr v14, v15

    .line 6189
    div-int/lit8 v14, v14, 0x64

    iput v14, v2, Lcom/oppo/camera/Ipa/b$b;->i:I

    goto :goto_5

    .line 6191
    :cond_c
    iput v14, v2, Lcom/oppo/camera/Ipa/b$b;->i:I

    .line 6194
    :goto_5
    iput v8, v2, Lcom/oppo/camera/Ipa/b$b;->j:F

    .line 6195
    iput v9, v2, Lcom/oppo/camera/Ipa/b$b;->k:I

    .line 6196
    iput v11, v2, Lcom/oppo/camera/Ipa/b$b;->l:I

    .line 6197
    iget-object v6, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v6}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/camera/d/i;->aj()Z

    move-result v6

    iput-boolean v6, v2, Lcom/oppo/camera/Ipa/b$b;->c:Z

    .line 6198
    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    .line 6199
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->ak(Lcom/oppo/camera/e;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    .line 6200
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v5

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->ap:I

    .line 6201
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/oppo/camera/e/f;->a(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-boolean v5, v3, Lcom/oppo/camera/e/d;->o:Z

    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v5, 0x1

    :goto_7
    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->e:Z

    .line 6202
    iput-boolean v13, v2, Lcom/oppo/camera/Ipa/b$b;->d:Z

    .line 6203
    iput-object v3, v2, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    .line 6204
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    const-string v6, "key_support_no_face_forbid_beauty"

    invoke-virtual {v5, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->H:Z

    .line 6205
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    const-string v6, "pref_high_resolution_key"

    invoke-virtual {v5, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->I:Z

    move/from16 v7, v25

    .line 6206
    iput v7, v2, Lcom/oppo/camera/Ipa/b$b;->g:I

    if-eqz v3, :cond_f

    .line 6207
    iget-boolean v5, v3, Lcom/oppo/camera/e/d;->k:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->ak:Z

    .line 6208
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v5

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->at:I

    if-eqz v3, :cond_10

    .line 6210
    iget-boolean v5, v3, Lcom/oppo/camera/e/d;->j:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    .line 6211
    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->an:Z

    :cond_10
    if-eqz v10, :cond_11

    .line 6214
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->al(Lcom/oppo/camera/e;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 6215
    iput-object v10, v2, Lcom/oppo/camera/Ipa/b$b;->m:Landroid/location/Location;

    .line 6216
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$b;->n:D

    .line 6217
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$b;->o:D

    .line 6220
    :cond_11
    invoke-virtual {v3}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    .line 6222
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->c:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6223
    invoke-static {v5}, Lcom/oppo/camera/e;->am(Lcom/oppo/camera/e;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->d:Z

    if-nez v5, :cond_12

    sget-object v5, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    .line 6225
    invoke-virtual {v3}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v6

    if-ne v5, v6, :cond_13

    :cond_12
    sget-object v5, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    .line 6226
    invoke-virtual {v3}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v6

    if-ne v5, v6, :cond_14

    .line 6227
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureCompleted, no need metainfo, so return, timeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6228
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6227
    invoke-static {v12, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz v3, :cond_15

    .line 6234
    iget-object v5, v3, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    .line 6235
    iget v5, v3, Lcom/oppo/camera/e/d;->q:I

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->R:I

    .line 6236
    iget-object v5, v3, Lcom/oppo/camera/e/d;->r:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->S:Ljava/lang/String;

    .line 6237
    iget-boolean v5, v3, Lcom/oppo/camera/e/d;->s:Z

    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->T:Z

    .line 6238
    iget-object v5, v3, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->V:Ljava/lang/String;

    .line 6239
    iget-object v5, v3, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->W:Ljava/lang/String;

    .line 6240
    iget-object v5, v3, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->U:Ljava/lang/String;

    .line 6241
    iget-object v5, v3, Lcom/oppo/camera/e/d;->w:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->X:Ljava/lang/String;

    .line 6242
    iget v5, v3, Lcom/oppo/camera/e/d;->x:I

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->Y:I

    .line 6243
    iget-object v5, v3, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    iput-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->Z:Ljava/lang/String;

    .line 6244
    iget v5, v3, Lcom/oppo/camera/e/d;->z:I

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->aa:I

    .line 6245
    iget v5, v3, Lcom/oppo/camera/e/d;->B:I

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->ab:I

    .line 6248
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 6250
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_16
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "com.oppo.aps.sat.snapshot.sensors.mask"

    const/4 v10, 0x2

    if-eqz v8, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureResult$Key;

    .line 6251
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "com.oppo.facebeauty.level"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 6252
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_16

    .line 6254
    array-length v9, v8

    if-lez v9, :cond_16

    .line 6255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureCompleted, beautyLevel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v11, v8, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6257
    aget v8, v8, v10

    iput v8, v2, Lcom/oppo/camera/Ipa/b$b;->z:I

    goto :goto_9

    .line 6259
    :cond_17
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "com.oppo.facebeauty.custom"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 6260
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_16

    .line 6262
    array-length v9, v8

    if-lez v9, :cond_16

    .line 6263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureCompleted, customBeautyParam: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6265
    iget-object v9, v2, Lcom/oppo/camera/Ipa/b$b;->A:[I

    iget-object v10, v2, Lcom/oppo/camera/Ipa/b$b;->A:[I

    array-length v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 6268
    :cond_18
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "com.oppo.beauty3d.custom.params"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 6269
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_16

    .line 6271
    array-length v9, v8

    iget-object v10, v2, Lcom/oppo/camera/Ipa/b$b;->K:[I

    array-length v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    if-lt v9, v10, :cond_16

    .line 6272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureCompleted, beauty3DParam: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 6274
    aget v10, v8, v9

    iput v10, v2, Lcom/oppo/camera/Ipa/b$b;->J:I

    .line 6275
    iget-object v10, v2, Lcom/oppo/camera/Ipa/b$b;->K:[I

    iget-object v11, v2, Lcom/oppo/camera/Ipa/b$b;->K:[I

    array-length v11, v11

    const/4 v13, 0x1

    invoke-static {v8, v13, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_9

    .line 6278
    :cond_19
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "com.oppo.upscale.input.size"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v13, 0x3

    const/4 v14, 0x4

    if-eqz v11, :cond_1b

    .line 6279
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_1a

    .line 6281
    array-length v9, v8

    if-ne v9, v14, :cond_1a

    const/4 v9, 0x0

    .line 6282
    aget v11, v8, v9

    iput v11, v2, Lcom/oppo/camera/Ipa/b$b;->ac:I

    const/4 v9, 0x1

    .line 6283
    aget v11, v8, v9

    iput v11, v2, Lcom/oppo/camera/Ipa/b$b;->ad:I

    .line 6284
    aget v9, v8, v10

    iput v9, v2, Lcom/oppo/camera/Ipa/b$b;->ae:I

    .line 6285
    aget v8, v8, v13

    iput v8, v2, Lcom/oppo/camera/Ipa/b$b;->af:I

    goto/16 :goto_9

    :cond_1a
    const-string v8, "onCaptureCompleted, upscaleInputArray is null"

    .line 6287
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6289
    :cond_1b
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "com.oppo.upscale.output.size"

    invoke-static {v11, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 6290
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_1c

    .line 6292
    array-length v9, v8

    if-ne v9, v14, :cond_1c

    const/4 v9, 0x0

    .line 6293
    aget v11, v8, v9

    iput v11, v2, Lcom/oppo/camera/Ipa/b$b;->ag:I

    const/4 v9, 0x1

    .line 6294
    aget v11, v8, v9

    iput v11, v2, Lcom/oppo/camera/Ipa/b$b;->ah:I

    .line 6295
    aget v9, v8, v10

    iput v9, v2, Lcom/oppo/camera/Ipa/b$b;->ai:I

    .line 6296
    aget v8, v8, v13

    iput v8, v2, Lcom/oppo/camera/Ipa/b$b;->aj:I

    goto/16 :goto_9

    :cond_1c
    const-string v8, "onCaptureCompleted, upscaleOutputArray is null"

    .line 6298
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6300
    :cond_1d
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.oppo.tunning.stats.debug"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 6302
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    if-eqz v8, :cond_1f

    const/4 v9, 0x0

    :goto_a
    if-ltz v13, :cond_1e

    shl-int/lit8 v9, v9, 0x8

    .line 6308
    aget-byte v10, v8, v13

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 6311
    :cond_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCaptureCompleted, dataSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v9, :cond_16

    .line 6314
    new-array v10, v9, [B

    iput-object v10, v2, Lcom/oppo/camera/Ipa/b$b;->am:[B

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v9, :cond_16

    .line 6317
    iget-object v11, v2, Lcom/oppo/camera/Ipa/b$b;->am:[B

    add-int/lit8 v13, v10, 0x4

    aget-byte v13, v8, v13

    aput-byte v13, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_1f
    const-string v8, "onCaptureCompleted, debugData is null"

    .line 6321
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6323
    :cond_20
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.oppo.aec.isoSpeedRate"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 6324
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_21

    .line 6326
    array-length v9, v8

    if-lez v9, :cond_21

    .line 6327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureCompleted, isoSpeedRate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v11, v8, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6329
    aget v8, v8, v10

    iput v8, v2, Lcom/oppo/camera/Ipa/b$b;->i:I

    goto/16 :goto_9

    :cond_21
    const-string v8, "onCaptureCompleted, isoSpeedRate is null"

    .line 6331
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6333
    :cond_22
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.oppo.picture.exif.flag"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 6334
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    if-eqz v8, :cond_23

    .line 6336
    array-length v9, v8

    if-lez v9, :cond_23

    .line 6337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCaptureCompleted, exifFlag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v11, v8, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oppo_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    goto/16 :goto_9

    :cond_23
    const-string v8, "onCaptureCompleted, exifFlag is null"

    .line 6341
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6343
    :cond_24
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.oppo.SensorName"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 6344
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    if-eqz v8, :cond_25

    .line 6346
    array-length v9, v8

    if-lez v9, :cond_25

    .line 6347
    iput-object v8, v2, Lcom/oppo/camera/Ipa/b$b;->y:[B

    goto/16 :goto_9

    :cond_25
    const-string v8, "onCaptureCompleted, sensorName is null"

    .line 6349
    invoke-static {v12, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6351
    :cond_26
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 6352
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    check-cast v6, [I

    goto/16 :goto_9

    .line 6353
    :cond_27
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.oppo.multicamera.input.cropRegion"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 6354
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    goto/16 :goto_9

    .line 6358
    :cond_28
    iget v5, v2, Lcom/oppo/camera/Ipa/b$b;->i:I

    if-nez v5, :cond_29

    .line 6359
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6360
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x64

    iput v5, v2, Lcom/oppo/camera/Ipa/b$b;->i:I

    .line 6363
    :cond_29
    iget-object v5, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/d/i;->e()Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    iput-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->B:Z

    .line 6365
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$b;->B:Z

    if-nez v5, :cond_2a

    iget-boolean v3, v3, Lcom/oppo/camera/e/d;->d:Z

    if-eqz v3, :cond_2b

    :cond_2a
    if-eqz v6, :cond_2b

    const/4 v3, 0x0

    aget v5, v6, v3

    if-lez v5, :cond_2b

    .line 6366
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->f()I

    move-result v5

    or-int/2addr v4, v5

    .line 6367
    iput-object v7, v2, Lcom/oppo/camera/Ipa/b$b;->al:[I

    .line 6369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCaptureCompleted, sensorMask(mean ultra wide when == 1): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    int-to-long v3, v4

    .line 6372
    iput-wide v3, v2, Lcom/oppo/camera/Ipa/b$b;->f:J

    .line 6373
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->ai()Z

    move-result v3

    iput-boolean v3, v2, Lcom/oppo/camera/Ipa/b$b;->C:Z

    .line 6374
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v3

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/oppo/camera/Ipa/b$b;->E:Z

    .line 6375
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "portrait"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/oppo/camera/Ipa/b$b;->F:Z

    .line 6377
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    iget-object v4, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 6378
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 6379
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v2, Lcom/oppo/camera/Ipa/b$b;->L:I

    .line 6380
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    iput v3, v2, Lcom/oppo/camera/Ipa/b$b;->M:I

    .line 6382
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6383
    invoke-static {v3}, Lcom/oppo/camera/e;->G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/u;->d()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6384
    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 6387
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3, v9, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v1

    const-string v3, "type_still_capture_yuv_main"

    if-eqz v1, :cond_2e

    .line 6389
    array-length v4, v1

    if-nez v4, :cond_2c

    goto :goto_c

    :cond_2c
    const/4 v4, 0x0

    .line 6391
    aget v5, v1, v4

    if-nez v5, :cond_2d

    const-string v3, "type_still_capture_yuv_sub"

    goto :goto_c

    .line 6393
    :cond_2d
    aget v1, v1, v4

    if-ne v10, v1, :cond_2e

    const-string v3, "type_still_capture_yuv_third"

    .line 6397
    :cond_2e
    :goto_c
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    iget-object v4, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 6400
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    move/from16 v4, v23

    invoke-virtual {v3, v1, v4}, Lcom/oppo/camera/e;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    goto :goto_d

    :cond_2f
    move/from16 v4, v23

    const-string v1, "onCaptureCompleted, surfaceSize is null, watermark will be lost !"

    .line 6402
    invoke-static {v12, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_30
    move/from16 v4, v23

    :goto_d
    move-wide/from16 v5, v21

    .line 6406
    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$b;->s:J

    move-wide/from16 v5, v18

    .line 6407
    iput-wide v5, v2, Lcom/oppo/camera/Ipa/b$b;->t:J

    move/from16 v1, v20

    .line 6408
    iput v1, v2, Lcom/oppo/camera/Ipa/b$b;->u:F

    .line 6409
    iput v4, v2, Lcom/oppo/camera/Ipa/b$b;->v:I

    move/from16 v1, v17

    .line 6410
    iput v1, v2, Lcom/oppo/camera/Ipa/b$b;->w:I

    .line 6411
    invoke-static {}, Lcom/oppo/camera/o/d;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->h:Ljava/lang/String;

    .line 6412
    invoke-static {}, Lcom/oppo/camera/o/d;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    .line 6414
    iget-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    const-string v3, "Realme"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6415
    iget-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    const-string v4, "realme"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    .line 6418
    :cond_31
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 6419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before handleActionMetaInfo, metaItem.mbMultiFrame: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/oppo/camera/Ipa/b$b;->c:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbMultiMetaHandled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6420
    invoke-static {v3}, Lcom/oppo/camera/e;->am(Lcom/oppo/camera/e;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbBurstShot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/oppo/camera/Ipa/b$b;->d:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6419
    invoke-static {v12, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6422
    iget-boolean v1, v2, Lcom/oppo/camera/Ipa/b$b;->c:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->am(Lcom/oppo/camera/e;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-boolean v1, v2, Lcom/oppo/camera/Ipa/b$b;->d:Z

    if-eqz v1, :cond_34

    .line 6423
    :cond_32
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$b;Lcom/oppo/camera/statistics/model/CaptureMsgData;)V

    .line 6425
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->d(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-nez v1, :cond_33

    .line 6426
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    iget-wide v4, v2, Lcom/oppo/camera/Ipa/b$b;->b:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/e;->a(JLjava/lang/String;ZZ)V

    goto :goto_e

    .line 6427
    :cond_33
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    const-string v3, "func_post_thumbnail"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 6428
    iget-object v3, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    iget-wide v4, v2, Lcom/oppo/camera/Ipa/b$b;->b:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/e;->a(JLjava/lang/String;ZZ)V

    .line 6433
    :cond_34
    :goto_e
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->am(Lcom/oppo/camera/e;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 6434
    iget-object v1, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;Z)Z

    :cond_35
    return-void
.end method

.method public a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 6018
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 6041
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6042
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$e$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$e$2;-><init>(Lcom/oppo/camera/e$e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 6059
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6060
    iget-object v0, p0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$e$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$e$3;-><init>(Lcom/oppo/camera/e$e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
