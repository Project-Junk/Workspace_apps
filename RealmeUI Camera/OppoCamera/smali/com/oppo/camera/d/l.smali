.class public Lcom/oppo/camera/d/l;
.super Lcom/oppo/camera/d/e;
.source "SuperMacroMode.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/oppo/camera/d/e;->P()Z

    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/oppo/camera/d/e;->X()V

    .line 226
    iget-object v0, p0, Lcom/oppo/camera/d/l;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oppo/camera/d/l;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/l$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/l$1;-><init>(Lcom/oppo/camera/d/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "macro"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_flashmode_key"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-static {p2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 246
    :cond_0
    invoke-static {p1, p2}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    .line 249
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    iget-object p1, p0, Lcom/oppo/camera/d/l;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 257
    :goto_0
    array-length v0, v2

    if-ge p1, v0, :cond_2

    .line 258
    aget-object v0, v2, p1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 266
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/e;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Z)V
    .locals 2

    const-string v0, "SuperMacroMode"

    const-string v1, "onResume"

    .line 87
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/d/l;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 91
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x8028

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 v0, 0x100

    .line 61
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_hdr_mode_key"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bp()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "pref_support_night_process"

    .line 205
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/l;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected ct()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/oppo/camera/d/l;->N:Landroid/app/Activity;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_support_switch_camera"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string v0, "pref_burst_shot_key"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_camera_vivid_effect_key"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_support_fast_capture"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_camera_hdr_mode_key"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "func_face_beauty_process"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "func_face_slender_process"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "key_beauty3d"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_ai_scene_key"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_mirror_key"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "key_high_picture_size"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_zoom_key"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "pref_support_post_view"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 123
    iget-object p1, p0, Lcom/oppo/camera/d/l;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/l;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/l;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    const-string v0, "pref_support_raw_post_process"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "pref_support_night_process"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "pref_auto_night_scence_key"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_6
    const-string v0, "pref_expand_popbar_key"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    iget-object p1, p0, Lcom/oppo/camera/d/l;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    return p1

    :cond_7
    const-string v0, "pref_camera_gradienter_key"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "func_mode_panel"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, "pref_filter_menu"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "key_fixed_focus_lens_support_tap_shutter"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "key_fixed_focus_lens_support_metering"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    const-string v0, "key_support_no_face_forbid_beauty"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "key_support_mode_change_vibrate"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 166
    :cond_c
    invoke-super {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_d
    :goto_0
    return v2

    :cond_e
    :goto_1
    return v1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected i()V
    .locals 2

    const-string v0, "SuperMacroMode"

    const-string v1, "OnStop"

    .line 96
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected l()V
    .locals 2

    const-string v0, "SuperMacroMode"

    const-string v1, "onDeInitCameraMode()"

    .line 71
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/oppo/camera/d/l;->M:Lcom/oppo/camera/ui/c;

    const v1, 0x7f0f0182

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->b(I)V

    .line 75
    invoke-super {p0}, Lcom/oppo/camera/d/e;->l()V

    return-void
.end method

.method protected n()Z
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeSnapping, mRawCaptureNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/l;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNightState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/l;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperMacroMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/oppo/camera/d/e;->n()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
