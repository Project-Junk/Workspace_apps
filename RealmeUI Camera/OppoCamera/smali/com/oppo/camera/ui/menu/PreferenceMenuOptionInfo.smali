.class public Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;
.super Lcom/oppo/camera/ui/menu/a;
.source "PreferenceMenuOptionInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceMenuOptionInfo"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/a;-><init>()V

    .line 36
    sget-object v0, Lcom/oppo/camera/R$styleable;->CameraMenuOptionInfo:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->initMenuOptionInfo(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private checkTypedArray(Landroid/content/res/TypedArray;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initMenuOptionInfo(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_1f

    const/4 v3, 0x6

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionKey(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionTitle(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionDefaultValue(Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionOnOff(Z)V

    const/4 v4, 0x5

    .line 47
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setImageTitleMode(Z)V

    const/4 v4, 0x4

    .line 48
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setImageTitleColorChangeable(Z)V

    const/4 v4, 0x2

    .line 49
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setGroupType(I)V

    :cond_0
    const/16 v4, 0xc

    .line 60
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v5, 0xb

    .line 61
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x3

    .line 62
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v7, 0xa

    .line 63
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x8

    .line 64
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x1

    .line 65
    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    .line 69
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v10

    move-object v5, v4

    :goto_0
    move-object v6, v5

    goto/16 :goto_9

    :cond_1
    move-object v4, v10

    :goto_1
    if-eqz v5, :cond_2

    .line 73
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v10

    goto :goto_0

    :cond_2
    move-object v5, v10

    :goto_2
    if-eqz v6, :cond_3

    .line 77
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v10

    goto/16 :goto_9

    :cond_3
    move-object v6, v10

    :goto_3
    if-eqz v7, :cond_4

    .line 81
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_9

    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionSingleIcon(Landroid/graphics/Bitmap;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionExpandIcon(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_6
    invoke-direct {v1, v4}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->checkTypedArray(Landroid/content/res/TypedArray;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v7, "PreferenceMenuOptionInfo"

    if-nez v2, :cond_b

    :try_start_4
    const-string v0, "initMenuOptionInfo, give preference value info Error."

    .line 93
    invoke-static {v7, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_7

    .line 155
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    if-eqz v5, :cond_8

    .line 160
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    if-eqz v6, :cond_9

    .line 165
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    if-eqz v10, :cond_a

    .line 170
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a
    return-void

    .line 98
    :cond_b
    :try_start_5
    invoke-direct {v1, v5}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->checkTypedArray(Landroid/content/res/TypedArray;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v0, "initMenuOptionInfo, give preference value name info Error."

    .line 99
    invoke-static {v7, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_c

    .line 155
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    if-eqz v5, :cond_d

    .line 160
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d
    if-eqz v6, :cond_e

    .line 165
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_e
    if-eqz v10, :cond_f

    .line 170
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_f
    return-void

    .line 104
    :cond_10
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    .line 106
    :goto_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 107
    new-instance v8, Lcom/oppo/camera/ui/menu/d;

    invoke-direct {v8}, Lcom/oppo/camera/ui/menu/d;-><init>()V

    .line 108
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/oppo/camera/ui/menu/d;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/oppo/camera/ui/menu/d;->b(Ljava/lang/String;)V

    const/4 v11, -0x1

    if-eqz v6, :cond_13

    .line 112
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    sub-int/2addr v12, v9

    if-gt v7, v12, :cond_13

    .line 113
    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->getOptionKey()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->getOptionKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_subsetting_key"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 117
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 118
    invoke-virtual {v8, v12}, Lcom/oppo/camera/ui/menu/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-le v12, v13, :cond_11

    .line 121
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 122
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 123
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 122
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 124
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {v14}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v12, v3, v3, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 128
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 129
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 128
    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 132
    :goto_6
    invoke-virtual {v8, v13}, Lcom/oppo/camera/ui/menu/d;->a(Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 134
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 135
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 134
    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 136
    invoke-virtual {v8, v9}, Lcom/oppo/camera/ui/menu/d;->a(Landroid/graphics/Bitmap;)V

    :cond_13
    :goto_7
    if-eqz v10, :cond_15

    .line 140
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    if-gt v7, v9, :cond_16

    .line 141
    invoke-virtual {v10, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-ne v11, v9, :cond_14

    .line 142
    invoke-virtual {v8}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oppo/camera/ui/menu/d;->b(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 144
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 145
    invoke-virtual {v10, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 144
    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oppo/camera/ui/menu/d;->b(Landroid/graphics/Bitmap;)V

    goto :goto_8

    :cond_15
    const/4 v12, 0x1

    .line 149
    :cond_16
    :goto_8
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v9, v12

    goto/16 :goto_5

    .line 152
    :cond_17
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/PreferenceMenuOptionInfo;->setOptionItems(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_18

    .line 155
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    if-eqz v5, :cond_19

    .line 160
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    if-eqz v6, :cond_1a

    .line 165
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    if-eqz v10, :cond_1f

    .line 170
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_a

    :goto_9
    if-eqz v4, :cond_1b

    .line 155
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1b
    if-eqz v5, :cond_1c

    .line 160
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c
    if-eqz v6, :cond_1d

    .line 165
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1d
    if-eqz v10, :cond_1e

    .line 170
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    :cond_1e
    throw v0

    :cond_1f
    :goto_a
    return-void
.end method
