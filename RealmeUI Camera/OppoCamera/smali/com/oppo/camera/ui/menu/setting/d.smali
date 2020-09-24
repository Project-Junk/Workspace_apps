.class public Lcom/oppo/camera/ui/menu/setting/d;
.super Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;
.source "CameraMenuOptionFirstLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private k:Lcom/oppo/camera/ui/menu/h;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/menu/a;Lcom/oppo/camera/ui/menu/setting/e;Lcom/oppo/camera/ui/d;ILjava/lang/String;Z)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/menu/a;Lcom/oppo/camera/ui/menu/setting/e;Lcom/oppo/camera/ui/d;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    .line 36
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->m:Z

    .line 43
    iput-boolean p7, p0, Lcom/oppo/camera/ui/menu/setting/d;->m:Z

    .line 44
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/d;->N()V

    return-void
.end method

.method private N()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0f013c

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_hdr_mode_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_setting_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_subsetting_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_pi_mode_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 279
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_filter_menu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_videoflashmode_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slow_video_frame_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_high_resolution_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, ""

    .line 288
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/h;->a(IZ)V

    .line 245
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/h;->setImageIcon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/oppo/camera/ui/menu/h;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    .line 204
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/h;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMenuOptionItems, key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOptionFirstLevel"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 122
    array-length p1, p2

    if-lez p1, :cond_1

    .line 123
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    .line 124
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/d;->l(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->k()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b()V
    .locals 4

    .line 49
    new-instance v0, Lcom/oppo/camera/ui/menu/h;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/d;->i:Lcom/oppo/camera/ui/d;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/setting/d;->m:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/menu/h;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;Z)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    .line 50
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/menu/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/d;->d:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/h;->setSizeRatioType(I)V

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/h;->setMenuName(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/h;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/h;->setForceDarkAllowed(Z)V

    .line 56
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/d;->m:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/h;->setSelectState(Z)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 259
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    .line 261
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz p1, :cond_0

    .line 262
    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->d:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/h;->setSizeRatioType(I)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/h;->setItemText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->H()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_high_resolution_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    sget-object v3, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 82
    invoke-static {v3}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v3

    .line 81
    invoke-static {v0, v3}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v3

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->e:Landroid/content/Context;

    const v5, 0x7f0f014e

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->w()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 90
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/menu/setting/d;->h(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->D()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/menu/setting/d;->h(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->h(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_subsetting_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/h;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/h;->invalidate()V

    .line 109
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->K()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->M()I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/d;->b(Z)V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 140
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->g:Lcom/oppo/camera/ui/menu/setting/e;

    if-eqz p1, :cond_a

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick, Key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOptionFirstLevel"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-nez p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->i()V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/d;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/menu/setting/e;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 152
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/h;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, onMenuButtonClick(Key): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " return false."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/d;->a(F)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->L()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_3

    return-void

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->I()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->H()I

    move-result p1

    .line 168
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    .line 172
    :cond_4
    iget v3, p0, Lcom/oppo/camera/ui/menu/setting/d;->j:I

    if-lt p1, v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    if-ge v3, p1, :cond_6

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 182
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/d;->g(I)V

    .line 184
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 185
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->o()V

    goto :goto_1

    .line 189
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->f()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 190
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->n()V

    goto :goto_1

    .line 192
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/d;->m()V

    .line 196
    :cond_9
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/d;->a(F)V

    :cond_a
    return-void
.end method

.method protected r()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/h;->a()V

    .line 252
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r()V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/h;->getViewWidth()I

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/d;->k:Lcom/oppo/camera/ui/menu/h;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/h;->getViewHeight()I

    move-result v0

    return v0

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t()I

    move-result v0

    return v0
.end method
