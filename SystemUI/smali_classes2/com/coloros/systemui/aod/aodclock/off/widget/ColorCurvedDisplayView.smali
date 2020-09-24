.class public Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;
.super Landroid/view/View;
.source "ColorCurvedDisplayView.java"


# static fields
.field public static final BLUE:Ljava/lang/String; = "blue"

.field private static final FADE_OUT_ALPHA_END:I = 0x0

.field private static final FADE_OUT_ALPHA_START:I = 0xff

.field private static final MASK_MOVE_START:I = 0x0

.field private static final NOTIFICATION_FADEOUT_BEZIER_CONTROL_ONE_X:F = 0.5f

.field private static final NOTIFICATION_FADEOUT_BEZIER_CONTROL_ONE_Y:F = 0.0f

.field private static final NOTIFICATION_FADEOUT_BEZIER_CONTROL_TWO_X:F = 0.85f

.field private static final NOTIFICATION_FADEOUT_BEZIER_CONTROL_TWO_Y:F = 1.0f

.field private static final NOTIFICATION_FADE_OUT_DELAY:I = 0x708

.field private static final NOTIFICATION_FADE_OUT_DURATION:I = 0x898

.field private static final NOTIFICATION_MASK_BEZIER_CONTROL_ONE_X:F = 0.37f

.field private static final NOTIFICATION_MASK_BEZIER_CONTROL_ONE_Y:F = 0.37f

.field private static final NOTIFICATION_MASK_BEZIER_CONTROL_TWO_X:F = 0.16f

.field private static final NOTIFICATION_MASK_BEZIER_CONTROL_TWO_Y:F = 0.77f

.field private static final NOTIFICATION_MASK_MOVE_DURATION:I = 0xfa0

.field private static final NOTIFICATION_MASK_MOVE_END:I = 0xc80

.field private static final NOTIFICATION_MASK_MOVE_START:I = 0x0

.field private static final NUM_0:I = 0x0

.field private static final NUM_1:I = 0x1

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field private static final NUM_4:I = 0x4

.field private static final NUM_MINUS_1:I = -0x1

.field public static final ORANGE:Ljava/lang/String; = "orange"

.field public static final RED:Ljava/lang/String; = "red"


# instance fields
.field private mAnimRepeatCount:I

.field private mColor:Ljava/lang/String;

.field private mEdgeIds:[I

.field private mNotificationOffsetY:I

.field private mNotificationPositionY:I

.field private mPDXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleHeight:F

.field private mScaleWidth:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mViewBottom:Landroid/graphics/Bitmap;

.field private mViewBottomY:I

.field private mViewLeft:Landroid/graphics/Bitmap;

.field private mViewMask:Landroid/graphics/Bitmap;

.field private mViewRight:Landroid/graphics/Bitmap;

.field private mViewRightX:I

.field private mViewTop:Landroid/graphics/Bitmap;

.field private mViewTopX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mAnimRepeatCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleWidth:F

    .line 97
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleHeight:F

    .line 101
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->setAlpha(F)V

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 104
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    .line 106
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    .line 108
    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    .line 109
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "red"

    .line 110
    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    .line 112
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 114
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->initResource(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mAnimRepeatCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)I
    .locals 2

    .line 42
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mAnimRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mAnimRepeatCount:I

    return v0
.end method

.method private convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 172
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-object p1

    .line 174
    :cond_0
    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 175
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleWidth:F

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleHeight:F

    invoke-virtual {v6, v0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    return-object p1
.end method

.method private initResource(Landroid/content/Context;)V
    .locals 6

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7f030036

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f030035

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "blue"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f030037

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "orange"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    .line 137
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 140
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    aget v0, v0, v2

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mEdgeIds:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    .line 149
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleHeight:F

    .line 150
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScaleWidth:F

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    const v0, 0x7f08061e

    .line 158
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewMask:Landroid/graphics/Bitmap;

    .line 160
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRightX:I

    .line 161
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottomY:I

    .line 162
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTopX:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAttachedToWindow$0$ColorCurvedDisplayView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 199
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mNotificationPositionY:I

    .line 200
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mNotificationOffsetY:I

    .line 201
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$1$ColorCurvedDisplayView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 215
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 187
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x2

    .line 189
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ebd70a4    # 0.37f

    const v4, 0x3e23d70a    # 0.16f

    const v5, 0x3f451eb8    # 0.77f

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    new-instance v2, Lcom/coloros/systemui/aod/aodclock/off/widget/-$$Lambda$ColorCurvedDisplayView$MlKQ8267kKk1xt3cf6ZtdLwxdsg;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/-$$Lambda$ColorCurvedDisplayView$MlKQ8267kKk1xt3cf6ZtdLwxdsg;-><init>(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 206
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x898

    .line 211
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x708

    .line 212
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 213
    new-instance v2, Lcom/coloros/systemui/aod/aodclock/off/widget/-$$Lambda$ColorCurvedDisplayView$SU4szPvrAlDioZltDc5a15WFiok;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/-$$Lambda$ColorCurvedDisplayView$SU4szPvrAlDioZltDc5a15WFiok;-><init>(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 219
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 222
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;

    invoke-direct {v0, p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;-><init>(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xc80
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 254
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 255
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewMask:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 283
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 287
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mNotificationPositionY:I

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 288
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 289
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 291
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 293
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewLeft:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRight:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewRightX:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottom:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTopX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewBottomY:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTop:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewTopX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 299
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mViewMask:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    const/4 v4, 0x1

    invoke-direct {v2, v5, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mNotificationPositionY:I

    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenWidth:I

    iget v7, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mScreenHeight:I

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
