.class public Lcom/oppo/camera/d/j;
.super Lcom/oppo/camera/d/e;
.source "NightMode.java"


# instance fields
.field private aa:J

.field private ab:J

.field private ac:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 49
    iput-wide p1, p0, Lcom/oppo/camera/d/j;->aa:J

    const-wide/32 p1, 0xc000000

    .line 50
    iput-wide p1, p0, Lcom/oppo/camera/d/j;->ab:J

    const-string p1, "ALGO_SUPERNIGHT"

    .line 52
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/j;->ac:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P()Z
    .locals 1

    .line 296
    invoke-super {p0}, Lcom/oppo/camera/d/e;->P()Z

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/j;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/j;->L:Lcom/oppo/camera/d/b;

    sget-object v1, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_NIGHT:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    .line 97
    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NightMode"

    const-string v1, "onMemoryStateChecked, memory is not enough"

    .line 98
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/e;->Y()Z

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "night"

    return-object v0
.end method

.method protected a(Z)V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onResume"

    .line 149
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ac()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x8019

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/oppo/camera/d/j;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/j;->N:Landroid/app/Activity;

    const v2, 0x7f0f0114

    .line 329
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 328
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_supernight_picture_size"

    .line 331
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/j;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    invoke-static {}, Lcom/oppo/camera/e/a;->i()I

    move-result v1

    iget v2, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/j;->a(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 336
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 337
    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v2, "standard"

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 342
    invoke-static {v1, v2, v3}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v2, "full"

    .line 343
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v2, "square"

    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 346
    invoke-static {v1, v2, v3}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPictureSize, nightOptimalSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NightMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 356
    :cond_5
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    if-eqz p1, :cond_0

    .line 386
    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_0

    .line 387
    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 388
    iget-object v0, p2, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    .line 392
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 396
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/e;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_hdr_mode_key"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_torch_mode_key"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_camera_photo_ratio_key"

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bE()Z
    .locals 4

    .line 317
    iget v0, p0, Lcom/oppo/camera/d/j;->W:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oppo/camera/d/j;->aa:J

    iget-wide v2, p0, Lcom/oppo/camera/d/j;->ab:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bp()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 252
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_FRONT_SUPERNIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "pref_support_night_process"

    .line 303
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 307
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->br()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/j;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f024d

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const-string v0, "key_supernight_picture_size"

    .line 361
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 365
    invoke-static {}, Lcom/oppo/camera/e/a;->i()I

    move-result v1

    iget v2, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/j;->a(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 366
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_0
    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 371
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawSize, nightOptimalSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NightMode"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 380
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_filter_process_key"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v0, "pref_burst_shot_key"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_vivid_effect_key"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_support_fast_capture"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_flashmode_key"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_torch_mode_key"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_hdr_mode_key"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "key_beauty3d"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_ai_scene_key"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_pi_mode_key"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "key_high_picture_size"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "func_face_beauty_process"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const-string v0, "func_face_slender_process"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "pref_support_switch_camera"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "pref_mirror_key"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "pref_support_post_view"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    iget-object p1, p0, Lcom/oppo/camera/d/j;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/j;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v1

    :cond_5
    return v2

    :cond_6
    const-string v0, "pref_support_raw_post_process"

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "pref_support_night_process"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string v0, "pref_auto_night_scence_key"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_8
    const-string v0, "pref_expand_popbar_key"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    iget-object p1, p0, Lcom/oppo/camera/d/j;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    return p1

    :cond_9
    const-string v0, "pref_camera_gradienter_key"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "func_mode_panel"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "pref_filter_menu"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const-string v0, "key_support_no_face_forbid_beauty"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const-string v0, "key_supernight_picture_size"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 234
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_SUPERNIGHT_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 235
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    return v1

    :cond_10
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    iget p1, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->br()Z

    move-result p1

    if-eqz p1, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 242
    :cond_12
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_13
    :goto_0
    return v2

    .line 192
    :cond_14
    :goto_1
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_FRONT_SUPERNIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    .line 182
    :cond_15
    :goto_2
    iget p1, p0, Lcom/oppo/camera/d/j;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_FRONT_SUPERNIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 183
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_16

    return v2

    :cond_16
    :goto_3
    return v1
.end method

.method public e()Z
    .locals 1

    .line 247
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_NIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    return v0
.end method

.method protected h()V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onPause"

    .line 282
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-super {p0}, Lcom/oppo/camera/d/e;->h()V

    return-void
.end method

.method protected i()V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "OnStop"

    .line 156
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected j()V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onDestroy"

    .line 289
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-super {p0}, Lcom/oppo/camera/d/e;->j()V

    return-void
.end method

.method protected k()V
    .locals 3

    const-string v0, "NightMode"

    const-string v1, "onInitCameraMode"

    .line 76
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Lcom/oppo/camera/d/e;->k()V

    .line 79
    iget-object v0, p0, Lcom/oppo/camera/d/j;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/j;->ac:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected l()V
    .locals 2

    const-string v0, "NightMode"

    const-string v1, "onDeInitCameraMode()"

    .line 89
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Lcom/oppo/camera/d/e;->l()V

    return-void
.end method

.method protected n()Z
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/oppo/camera/d/j;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->e(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/j;->aa:J

    .line 110
    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->p()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/j;->Z:I

    .line 112
    iget v0, p0, Lcom/oppo/camera/d/j;->Z:I

    if-ltz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/oppo/camera/d/j;->Z:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x1800000

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xa00000

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/j;->ab:J

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeSnapping, mRawCaptureNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/j;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNightState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/j;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/d/j;->aa:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mNightCaptureMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/d/j;->ab:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Lcom/oppo/camera/d/e;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-boolean v1, p0, Lcom/oppo/camera/d/j;->X:Z

    if-nez v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/oppo/camera/d/j;->bE()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/oppo/camera/d/j;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/j$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/j$1;-><init>(Lcom/oppo/camera/d/j;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/j;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/j$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/j$2;-><init>(Lcom/oppo/camera/d/j;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
