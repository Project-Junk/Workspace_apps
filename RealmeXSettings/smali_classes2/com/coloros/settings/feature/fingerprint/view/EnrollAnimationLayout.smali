.class public Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;
.super Landroid/widget/RelativeLayout;
.source "EnrollAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;,
        Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;
    }
.end annotation


# static fields
.field static final ENROLL_COLOR:I = -0x1eaeaf

.field static final IMG_DISPLAY_PERCENT:F = 0.9f

.field static final SPACE_CHANGE_HEIGHT:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "FingerEnrollLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

.field private mFingerLayout:Landroid/widget/RelativeLayout;

.field private mFrontSensor:Z

.field private mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

.field private mInsideCompleted:Z

.field private mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

.field private mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

.field private mInsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

.field private mLayoutListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;

.field private mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

.field private mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

.field private mOutsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object p2, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_NONE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    .line 70
    new-instance p2, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;-><init>(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    .line 95
    new-instance p2, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$2;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$2;-><init>(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    .line 122
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 124
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0214

    .line 127
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0d0216

    .line 125
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    const p2, 0x7f0a0256

    .line 129
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    const p2, 0x7f0a0298

    .line 130
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a0295

    .line 131
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    const p2, 0x7f0a0257

    .line 132
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    const p2, 0x7f0a0296

    .line 133
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    const p2, 0x7f0a0297

    .line 134
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/EffectiveAnimationView;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    .line 135
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFrontSensor:Z

    .line 136
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFrontSensor:Z

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->init(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mLayoutListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideCompleted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    return-object p0
.end method

.method private init(Z)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_ONE_20:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setGlyphStrings([Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_TOW_15:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setGlyphStrings([Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_ONE_1:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setGlyphStrings([Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_TOW_1:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setGlyphStrings([Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43f00000    # 480.0f

    div-float/2addr p1, v0

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setScale(F)V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setScale(F)V

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setScale(F)V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setScale(F)V

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setEnrollAnimationListener(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;)V

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsieAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setEnrollAnimationListener(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;)V

    return-void
.end method

.method private setImageViewDisplayPercent(Landroid/widget/ImageView;I)V
    .locals 3

    .line 343
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 344
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 347
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 348
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float p2, p2

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 351
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_0

    return-void

    .line 354
    :cond_0
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public adjustGuideViewLoc(I)V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationView;->getHeight()I

    move-result v0

    const-string v1, "FingerEnrollLayout"

    if-gtz v0, :cond_1

    const-string p1, "mGuideView is not layout yet!"

    .line 176
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->aD(Landroid/content/Context;)I

    move-result v2

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->getDisplayChangeProportion(I)F

    move-result v3

    .line 181
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getOpticalFingerIconLocation()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sub-int v4, v2, v3

    sub-int/2addr v4, p1

    if-gt v0, v4, :cond_2

    const/4 v1, 0x2

    .line 184
    new-array v2, v1, [I

    .line 185
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {v3}, Lcom/coloros/anim/EffectiveAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 187
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {v3}, Lcom/coloros/anim/EffectiveAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x0

    .line 188
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v0

    .line 189
    div-int/2addr v4, v1

    add-int/2addr p1, v4

    const/4 v0, 0x1

    aget v0, v2, v0

    sub-int/2addr p1, v0

    iput p1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p1, 0xc

    .line 190
    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0xa

    .line 191
    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {p1, v3}, Lcom/coloros/anim/EffectiveAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "strange screen pixels, screenHeight = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; fingerDisToBottom = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; viewHeight = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enrollCompleted()V
    .locals 1

    .line 286
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_COMPLETE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    .line 287
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->enrollCompleted()V

    return-void
.end method

.method public fullEnrollProgressBg(Z)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0602a4

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0602b4

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    if-eqz p1, :cond_2

    const p1, -0x1eaeaf

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 257
    :goto_2
    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->fillBackground(I)V

    return-void
.end method

.method public getModeStatus()Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    return-object v0
.end method

.method public hideFingerView()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inSidePartCompleted()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->enrollCompleted()V

    return-void
.end method

.method public onWaitingForInput()V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 2

    .line 308
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_NONE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideCompleted:Z

    .line 310
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->reset()V

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->reset()V

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0602a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 317
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0602b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->reset(I)V

    .line 322
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setVisibility(I)V

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->reset(I)V

    :cond_5
    return-void
.end method

.method public setEnrollLayoutListener(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mLayoutListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;

    return-void
.end method

.method public showFingerView()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showGuideToEnrollAnimation(Z)V
    .locals 2

    .line 298
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showGuideToEnrollAnimation : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerEnrollLayout"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_ENROLL:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideFingerBg:Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public showGuideView1()V
    .locals 3

    const-string v0, "FingerEnrollLayout"

    const-string v1, "showGuideView1"

    .line 203
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f0808f5

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setBackgroundResource(I)V

    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f0808f4

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setBackgroundResource(I)V

    goto :goto_1

    .line 211
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const-string v1, "fingerprint/enroll/"

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f110013

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    return-void

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showGuideView2()V
    .locals 2

    .line 233
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mCurrentMode:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const-string v1, "fingerprint/enrolladjust/"

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f110014

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f0808f6

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setBackgroundResource(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    const v1, 0x7f0808f4

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setBackgroundResource(I)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mGuideView:Lcom/coloros/anim/EffectiveAnimationView;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mFingerLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public updateEnrollProgress(II)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mOutsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->updateProgress(II)V

    return-void
.end method

.method public updateProgress1(II)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->mInsideEnrollProgress:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->updateProgress(II)V

    return-void
.end method
