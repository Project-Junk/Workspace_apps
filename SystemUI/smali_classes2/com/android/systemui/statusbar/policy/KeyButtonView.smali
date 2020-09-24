.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyButtonView"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDarkIntensity:F

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mHasOvalBg:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mIsVertical:Z

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 121
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    .line 91
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 128
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 131
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v1, 0x2

    .line 133
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    .line 135
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 136
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    const-string p2, "audio"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 146
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 147
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setWillNotDraw(Z)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private sendEvent(IIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v1, p2

    .line 381
    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEvent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  flags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  when:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " code:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "NavBar"

    invoke-static {v7, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v7, 0x3a3

    invoke-direct {v3, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v14, 0x4

    .line 385
    invoke-virtual {v3, v14}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v7, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 386
    invoke-virtual {v3, v7}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 387
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x3a5

    invoke-virtual {v3, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 388
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x3a4

    invoke-virtual {v3, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 384
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 390
    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v3, 0x1

    if-ne v2, v14, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    .line 393
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Back button event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v6, v3, :cond_2

    .line 398
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_2
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 403
    :goto_1
    new-instance v13, Landroid/view/KeyEvent;

    iget-wide v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v7, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v12, v1, 0x40

    const/16 v16, 0x101

    move-object v1, v13

    move-wide/from16 v4, p3

    move/from16 v6, p1

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 415
    :goto_2
    const-class v3, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/BubbleController;

    .line 416
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v3

    .line 417
    iget v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-ne v4, v14, :cond_5

    if-eq v3, v2, :cond_5

    move v1, v3

    :cond_5
    if-eq v1, v2, :cond_6

    .line 421
    invoke-virtual {v15, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 423
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->abortDelayedRipple()V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 460
    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    int-to-float v4, v1

    int-to-float v6, v0

    .line 461
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 464
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isClickable()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 2

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 193
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 194
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 197
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 235
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    .line 237
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 244
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->setDownTime(J)V

    .line 250
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    return v2

    :cond_2
    const-string v6, ",mCode:"

    const-string v7, "NavBar"

    if-eqz v1, :cond_f

    if-eq v1, v5, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    if-eq v1, v3, :cond_3

    goto/16 :goto_5

    .line 295
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent CancelEvent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 298
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_4

    .line 299
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 301
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 281
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v1

    .line 285
    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_12

    .line 288
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 306
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent UpEvent:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_8

    move p1, v5

    goto :goto_0

    :cond_8
    move p1, v2

    .line 309
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    move v1, v5

    goto :goto_1

    :cond_9
    move v1, v2

    :goto_1
    if-eqz v0, :cond_a

    if-eqz p1, :cond_b

    .line 314
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_b

    const/16 v0, 0x8

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    .line 322
    :cond_b
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    .line 324
    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 325
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_3

    .line 327
    :cond_c
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_e

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_e

    .line 332
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 336
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 259
    :cond_f
    sget-object v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent DownEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 262
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    .line 263
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    .line 268
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_10

    .line 269
    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_4

    .line 272
    :cond_10
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    :goto_4
    if-nez v0, :cond_11

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 277
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    :goto_5
    return v5
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 213
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_0

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v1, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    return v0

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    .line 219
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_1

    const/16 p1, 0x80

    .line 220
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p1, 0x2

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    return v0

    .line 225
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public playSoundEffect(I)V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .locals 4

    .line 368
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 370
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    or-int/lit16 p2, p2, 0x80

    .line 375
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 435
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 345
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 351
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setType(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsVertical:Z

    return-void
.end method
