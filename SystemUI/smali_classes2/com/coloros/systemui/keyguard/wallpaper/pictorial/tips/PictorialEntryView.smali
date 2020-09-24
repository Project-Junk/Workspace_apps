.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;
.super Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;
.source "PictorialEntryView.java"


# static fields
.field private static final RED_POINT_R:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "TipsView-PictorialEntryView"


# instance fields
.field private mEntryViewMarginRight:I

.field private mEntryViewMarginTop:I

.field private mNeedShowRedPoint:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRedPointPadding:[I

.field private mRedPointPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 43
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPadding:[I

    return-void
.end method

.method private clickEnterPreloadView()V
    .locals 3

    const-string v0, "TipsView-PictorialEntryView"

    const-string v1, "clickEnterPreloadView"

    .line 94
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string p0, "clickEnterPreloadView is Translation, return"

    .line 96
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mNeedShowRedPoint:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyRedDotAlreadyShow()V

    :cond_1
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->makeShowRedPoint(Z)V

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->onClickEntry()V

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->markShow()V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->invalidate()V

    return-void
.end method

.method private hide()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 235
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mShow:Z

    return-void
.end method

.method private isRTL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private makeShowRedPoint(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mNeedShowRedPoint:Z

    return-void
.end method

.method private show()V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mShow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isRedDotShow()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->makeShowRedPoint(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->invalidate()V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isEntryShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mAllowState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isRedDotShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->statisticEntryIconUsers()V

    :cond_1
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mShow:Z

    return-void
.end method

.method private updateLayoutParams()V
    .locals 13

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 151
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginLeft()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 152
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginTop()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 153
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointR()I

    move-result v0

    if-gtz v0, :cond_8

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getEntryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080c04

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 161
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginLeft()I

    move-result v3

    int-to-float v3, v3

    .line 162
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginTop()I

    move-result v4

    int-to-float v4, v4

    .line 163
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v5}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointR()I

    move-result v5

    int-to-float v5, v5

    .line 171
    iget v6, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mEntryViewMarginTop:I

    .line 172
    iget v7, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mEntryViewMarginRight:I

    add-float v8, v3, v5

    int-to-float v9, v1

    cmpl-float v9, v8, v9

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/4 v12, 0x0

    if-lez v9, :cond_1

    float-to-int v3, v8

    sub-int v1, v3, v1

    sub-int/2addr v7, v1

    move v8, v7

    move v7, v1

    move v1, v3

    move v3, v12

    goto :goto_0

    :cond_1
    sub-float v8, v3, v5

    cmpg-float v8, v8, v10

    if-gez v8, :cond_2

    sub-float v3, v5, v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    move v8, v7

    move v7, v12

    goto :goto_0

    :cond_2
    move v8, v7

    move v1, v11

    move v3, v12

    move v7, v3

    :goto_0
    sub-float v9, v4, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    sub-float/2addr v5, v4

    float-to-int v4, v5

    add-int v11, v2, v4

    .line 191
    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mEntryViewMarginTop:I

    sub-int v6, v2, v4

    move v2, v12

    goto :goto_1

    :cond_3
    add-float/2addr v4, v5

    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    float-to-int v11, v4

    sub-int v2, v11, v2

    move v4, v12

    goto :goto_1

    :cond_4
    move v2, v12

    move v4, v2

    .line 198
    :goto_1
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPadding:[I

    aput v3, v5, v12

    const/4 v3, 0x1

    .line 199
    aput v4, v5, v3

    const/4 v3, 0x2

    .line 200
    aput v7, v5, v3

    const/4 v3, 0x3

    .line 201
    aput v2, v5, v3

    .line 203
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    :goto_2
    or-int/lit8 v1, v3, 0x30

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_3

    :cond_6
    move v1, v12

    :goto_3
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_7

    move v8, v12

    :cond_7
    invoke-virtual {v2, v1, v6, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 3

    const-string p1, "TipsView-PictorialEntryView"

    const-string v0, "init"

    .line 52
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07041c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mEntryViewMarginRight:I

    .line 63
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07041d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mEntryViewMarginTop:I

    .line 64
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialEntryView$5hdC_LbudrELda_7SnqThAyi1t0;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialEntryView$5hdC_LbudrELda_7SnqThAyi1t0;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->setClickable(Z)V

    return-void
.end method

.method public isNeedShow()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 87
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isEntryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mAllowState:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mCreate:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$init$0$PictorialEntryView(Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->clickEnterPreloadView()V

    return-void
.end method

.method public markShow()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mNeedShowRedPoint:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyRedDotAlreadyShow()V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mNeedShowRedPoint:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 116
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mNeedShowRedPoint:Z

    if-eqz v1, :cond_2

    .line 118
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 125
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginLeft()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 126
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginTop()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 127
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointR()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginLeft()I

    move-result v1

    int-to-float v1, v1

    .line 133
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginTop()I

    move-result v2

    int-to-float v3, v2

    .line 134
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointR()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v1

    sub-float/2addr v1, v3

    move v2, v3

    .line 136
    :goto_1
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPadding:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPadding:[I

    aget v4, v0, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    aget v0, v0, v7

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->mRedPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 139
    :cond_2
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    .line 145
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->updateLayoutParams()V

    .line 146
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->updateTipsState()V

    return-void
.end method

.method public updateTipsState()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->show()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialEntryView;->hide()V

    :goto_0
    return-void
.end method
