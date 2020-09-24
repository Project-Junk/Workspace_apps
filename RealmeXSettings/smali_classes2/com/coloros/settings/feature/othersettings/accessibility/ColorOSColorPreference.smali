.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;
.super Lcom/android/settings/accessibility/ColorPreference;
.source "ColorOSColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/Paint;

.field private static final i:Landroid/graphics/Xfermode;


# instance fields
.field g:I

.field private final j:[I

.field private k:Landroid/content/Context;

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->i:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    .line 48
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->j:[I

    .line 52
    sget p2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;->a:I

    iput p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->g:I

    const p2, 0x7f0d00a7

    .line 58
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->setLayoutResource(I)V

    const p2, 0x7f0d018c

    .line 59
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->setDialogLayoutResource(I)V

    const p2, 0x7f0d007b

    .line 1081
    iput p2, p0, Lcom/android/settings/accessibility/ListDialogPreference;->d:I

    .line 61
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->k:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0804ea
        0x7f0804eb
        0x7f0804ec
        0x7f0804ed
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1133
    iget-object v3, v0, Lcom/android/settings/accessibility/ListDialogPreference;->b:[I

    aget v3, v3, v2

    .line 96
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const v5, 0x7f0a0182

    .line 99
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x0

    .line 100
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->c()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->c()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->c()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->c()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->c()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    iget v7, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->g:I

    sget v8, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;->b:I

    if-ne v7, v8, :cond_1

    .line 109
    :try_start_0
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->j:[I

    aget v4, v4, v2

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xff

    const v8, 0x7f0804e9

    if-ge v4, v7, :cond_3

    .line 114
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 116
    instance-of v7, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_2

    .line 117
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 119
    :cond_2
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 124
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/settings/utils/al;->ai(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 125
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2069
    :cond_4
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->l:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 2070
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->l:Landroid/graphics/Bitmap;

    .line 2073
    :cond_5
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->l:Landroid/graphics/Bitmap;

    .line 2146
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2147
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2148
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2150
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2151
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2152
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2154
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2155
    sget-object v12, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2156
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int v12, v7, v12

    int-to-float v12, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    .line 2157
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v8, v15

    int-to-float v15, v15

    div-float/2addr v15, v14

    sget-object v6, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    .line 2156
    invoke-virtual {v11, v4, v12, v15, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2158
    sget-object v4, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    sget-object v6, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->i:Landroid/graphics/Xfermode;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2159
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    div-float/2addr v4, v14

    .line 2160
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    div-float/2addr v6, v14

    sget-object v7, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    .line 2159
    invoke-virtual {v11, v9, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2161
    sget-object v4, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2162
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    :catch_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    const v4, 0x7f0a0687

    .line 135
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->a()I

    move-result v2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
