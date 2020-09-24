.class public Lcom/android/systemui/qs/ColorQSAnimator;
.super Ljava/lang/Object;
.source "ColorQSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final ALLOW_FANCY_ANIMATION:Ljava/lang/String; = "sysui_qs_fancy_anim"

.field private static final MOVE_FULL_ROWS:Ljava/lang/String; = "sysui_qs_move_whole_rows"

.field private static final TAG:Ljava/lang/String; = "ColorQSAnimator"

.field private static final TILE_DIFF:I = 0x14


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mFirstDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstRowYDiff:I

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageQuickPanelAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mThirdRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowYDiff:I

    .line 455
    new-instance v0, Lcom/android/systemui/qs/ColorQSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/ColorQSAnimator$1;-><init>(Lcom/android/systemui/qs/ColorQSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 468
    new-instance v0, Lcom/android/systemui/qs/ColorQSAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/ColorQSAnimator$2;-><init>(Lcom/android/systemui/qs/ColorQSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 81
    iget-object p2, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/ColorQSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 87
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 88
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "ColorQSAnimator"

    const-string p2, "QS Not using page layout"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/ColorQSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/ColorQSAnimator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/ColorQSAnimator;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mLastPosition:F

    return p0
.end method

.method private clearAnimationState()V
    .locals 6

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 431
    iget-object v4, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 432
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 433
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 434
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 359
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 360
    aput v1, p1, v0

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/ColorQSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eq p2, p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 369
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 370
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 372
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/ColorQSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 354
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 355
    iget p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 41

    move-object/from16 v0, p0

    .line 155
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 156
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 157
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 158
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 159
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 160
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 161
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 162
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 163
    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 165
    iget-object v10, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v10, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x2

    .line 168
    new-array v12, v11, [I

    .line 169
    new-array v13, v11, [I

    .line 173
    iget-object v14, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v14}, Lcom/android/systemui/qs/PagedTileLayout;->getMaxNumInFirstPage()I

    move-result v14

    int-to-double v14, v14

    .line 174
    iget-object v11, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v11}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v11

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    int-to-double v1, v11

    div-double v19, v14, v1

    move-wide/from16 v21, v1

    .line 175
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/ColorQSAnimator;->clearAnimationState()V

    .line 179
    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v2

    .line 183
    iget-object v11, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v19, v9

    move-object v9, v2

    check-cast v9, Landroid/view/View;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 185
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v11

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v11, v1

    iget-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 186
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v11, v1

    move-object/from16 v24, v3

    const/4 v1, 0x2

    .line 187
    new-array v3, v1, [F

    int-to-float v1, v11

    const/4 v11, 0x0

    aput v1, v3, v11

    const/4 v11, 0x0

    move/from16 v25, v1

    const/4 v1, 0x1

    aput v11, v3, v1

    const-string v11, "translationY"

    invoke-virtual {v6, v2, v11, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 189
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    const-string v1, "alpha"

    if-eqz v29, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v31, v3

    move-object/from16 v3, v29

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v29, v2

    .line 190
    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tileView is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorQSAnimator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v9

    move-wide/from16 v33, v14

    goto :goto_2

    .line 195
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v32

    move-wide/from16 v33, v14

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v14

    .line 196
    iget-object v15, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v15}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v15

    move/from16 v32, v9

    .line 199
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v9

    if-ge v10, v9, :cond_b

    iget-boolean v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllowFancy:Z

    if-eqz v9, :cond_b

    .line 201
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v9, v3}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move/from16 v9, v32

    move-wide/from16 v14, v33

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 204
    aget v35, v13, v9

    .line 205
    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-direct {v0, v12, v9, v15}, Lcom/android/systemui/qs/ColorQSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 206
    invoke-direct {v0, v13, v14, v15}, Lcom/android/systemui/qs/ColorQSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v9, 0x0

    .line 207
    aget v14, v13, v9

    aget v15, v12, v9

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    .line 208
    aget v20, v13, v15

    aget v30, v12, v15

    sub-int v15, v20, v30

    .line 210
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v9

    move-object/from16 v37, v6

    const-string v6, "translationX"

    if-ge v10, v9, :cond_5

    const/4 v9, 0x2

    .line 212
    new-array v1, v9, [F

    const/16 v20, 0x0

    const/16 v27, 0x0

    aput v20, v1, v27

    int-to-float v9, v14

    const/16 v26, 0x1

    aput v9, v1, v26

    invoke-virtual {v7, v3, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v1, 0x2

    .line 213
    new-array v9, v1, [F

    aput v20, v9, v27

    int-to-float v1, v15

    aput v1, v9, v26

    invoke-virtual {v8, v3, v11, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v1, 0x2

    .line 221
    new-array v9, v1, [F

    neg-int v14, v14

    int-to-float v14, v14

    aput v14, v9, v27

    aput v20, v9, v26

    invoke-virtual {v7, v2, v6, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 222
    new-array v6, v1, [F

    neg-int v1, v15

    int-to-float v1, v1

    aput v1, v6, v27

    aput v20, v6, v26

    invoke-virtual {v8, v2, v11, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 223
    iget-boolean v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    if-eqz v1, :cond_4

    .line 224
    iput v15, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowYDiff:I

    .line 226
    :cond_4
    aget v1, v13, v27

    .line 227
    aget v6, v13, v27

    sub-int v28, v6, v35

    .line 228
    iget-object v6, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v36, v4

    move-object/from16 v35, v12

    move-object/from16 v9, v18

    move-object/from16 v4, v37

    move-object/from16 v18, v5

    goto/16 :goto_6

    .line 229
    :cond_5
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v9

    if-ge v10, v9, :cond_8

    .line 231
    iget-object v9, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v9

    sub-int v9, v10, v9

    const/4 v14, 0x1

    add-int/2addr v9, v14

    mul-int v15, v28, v9

    add-int v15, v27, v15

    const/16 v20, 0x0

    .line 233
    aget v30, v12, v20

    sub-int v15, v15, v30

    move-object/from16 v35, v12

    const/4 v14, 0x2

    .line 234
    new-array v12, v14, [F

    const/16 v16, 0x0

    aput v16, v12, v20

    int-to-float v15, v15

    const/4 v14, 0x1

    aput v15, v12, v14

    invoke-virtual {v7, v3, v6, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v12, 0x2

    .line 235
    new-array v6, v12, [F

    aput v16, v6, v20

    iget v15, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowYDiff:I

    int-to-float v15, v15

    aput v15, v6, v14

    invoke-virtual {v8, v3, v11, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    if-ne v9, v14, :cond_6

    .line 238
    new-array v6, v12, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_3

    :cond_6
    if-ne v9, v12, :cond_7

    .line 240
    new-array v6, v12, [F

    fill-array-data v6, :array_1

    invoke-virtual {v4, v3, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 243
    :cond_7
    :goto_3
    new-array v6, v12, [F

    fill-array-data v6, :array_2

    move-object/from16 v9, v18

    invoke-virtual {v9, v2, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 244
    new-array v1, v12, [F

    fill-array-data v1, :array_3

    invoke-virtual {v9, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v36, v4

    move-object/from16 v18, v5

    move-object/from16 v4, v37

    goto :goto_5

    :cond_8
    move-object/from16 v35, v12

    move-object/from16 v9, v18

    const/4 v12, 0x2

    move-object/from16 v18, v5

    .line 246
    new-array v5, v12, [F

    fill-array-data v5, :array_4

    move-object/from16 v36, v4

    move-object/from16 v4, v37

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 247
    new-array v1, v12, [F

    const/4 v5, 0x0

    const/4 v12, 0x0

    aput v5, v1, v12

    int-to-float v5, v15

    const/4 v12, 0x1

    aput v5, v1, v12

    invoke-virtual {v8, v3, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 250
    iget-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_9

    sub-int v14, v14, v32

    goto :goto_4

    :cond_9
    add-int v14, v14, v32

    :goto_4
    const/4 v1, 0x2

    .line 251
    new-array v5, v1, [F

    const/4 v1, 0x0

    const/4 v12, 0x0

    aput v1, v5, v12

    int-to-float v1, v14

    const/4 v12, 0x1

    aput v1, v5, v12

    invoke-virtual {v7, v3, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :goto_5
    move/from16 v1, v27

    .line 255
    :goto_6
    iget-object v5, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v5, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v27, v1

    :cond_a
    :goto_7
    move-object/from16 v12, v17

    move-object/from16 v6, v24

    goto/16 :goto_a

    :cond_b
    move-object/from16 v36, v4

    move-object v4, v6

    move-object/from16 v35, v12

    move-object/from16 v9, v18

    move-object/from16 v18, v5

    .line 257
    iget-boolean v3, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFullRows:Z

    if-eqz v3, :cond_c

    invoke-direct {v0, v10}, Lcom/android/systemui/qs/ColorQSAnimator;->isIconInAnimatedRow(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x2

    .line 258
    new-array v5, v3, [F

    fill-array-data v5, :array_5

    invoke-virtual {v9, v2, v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 259
    new-array v1, v3, [F

    fill-array-data v1, :array_6

    invoke-virtual {v9, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 260
    iget-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const-wide/16 v5, 0x0

    cmpl-double v3, v33, v5

    if-lez v3, :cond_a

    int-to-double v5, v10

    cmpg-double v3, v5, v33

    if-gez v3, :cond_d

    goto :goto_8

    :cond_d
    rem-double v5, v5, v33

    :goto_8
    div-double v5, v5, v21

    double-to-int v3, v5

    if-eqz v3, :cond_10

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_e

    .line 283
    new-array v3, v5, [F

    fill-array-data v3, :array_7

    move-object/from16 v6, v24

    invoke-virtual {v6, v2, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 284
    new-array v1, v5, [F

    fill-array-data v1, :array_8

    invoke-virtual {v6, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :goto_9
    move-object/from16 v12, v17

    goto :goto_a

    :cond_e
    move-object/from16 v6, v24

    .line 279
    new-array v3, v5, [F

    fill-array-data v3, :array_9

    invoke-virtual {v6, v2, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 280
    new-array v1, v5, [F

    fill-array-data v1, :array_a

    invoke-virtual {v6, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_9

    :cond_f
    move-object/from16 v6, v24

    const/4 v5, 0x2

    .line 275
    new-array v3, v5, [F

    fill-array-data v3, :array_b

    invoke-virtual {v9, v2, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 276
    new-array v1, v5, [F

    fill-array-data v1, :array_c

    invoke-virtual {v9, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_9

    :cond_10
    move-object/from16 v6, v24

    const/4 v5, 0x2

    .line 270
    new-array v3, v5, [F

    fill-array-data v3, :array_d

    move-object/from16 v12, v17

    invoke-virtual {v12, v2, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 271
    new-array v1, v5, [F

    fill-array-data v1, :array_e

    invoke-virtual {v12, v2, v11, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 272
    invoke-direct {v0, v13, v14, v15}, Lcom/android/systemui/qs/ColorQSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 289
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v24, v6

    move-object/from16 v17, v12

    move-object/from16 v5, v18

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move-wide/from16 v14, v33

    move-object/from16 v12, v35

    const/4 v1, 0x1

    move-object v6, v4

    move-object/from16 v18, v9

    move/from16 v9, v32

    move-object/from16 v4, v36

    goto/16 :goto_1

    :cond_11
    move-object/from16 v29, v2

    move-object/from16 v36, v4

    move-object v4, v6

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v24

    move-object/from16 v18, v5

    .line 292
    iget-boolean v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllowFancy:Z

    const v3, 0x3e99999a    # 0.3f

    if-eqz v2, :cond_13

    const v2, 0x3f19999a    # 0.6f

    .line 294
    invoke-virtual {v12, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/4 v2, 0x3

    const v5, 0x3f666666    # 0.9f

    const v10, 0x3e4ccccd    # 0.2f

    move/from16 v12, v23

    if-ge v12, v2, :cond_12

    .line 299
    invoke-virtual {v9, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_b

    :cond_12
    const v2, 0x3f333333    # 0.7f

    .line 303
    invoke-virtual {v9, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 308
    :goto_b
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mThirdRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const v2, 0x3d75c28f    # 0.06f

    move-object/from16 v5, v36

    .line 311
    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const v5, 0x3f4a3d71    # 0.79f

    .line 312
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v2, v18

    .line 315
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const v5, 0x3f0ccccd    # 0.55f

    .line 316
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 319
    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 322
    new-instance v2, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v32, 0x3fe851eb851eb852L    # 0.76

    const-wide/16 v34, 0x0

    const-wide v36, 0x3fceb851eb851eb8L    # 0.24

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const/16 v40, 0x1

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v40}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    move-object/from16 v4, v19

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 324
    invoke-virtual {v4, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const v4, 0x3eb33333    # 0.35f

    .line 325
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_f

    move-object/from16 v4, v29

    .line 326
    invoke-virtual {v2, v4, v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 328
    new-instance v2, Landroid/view/animation/OppoBezierInterpolator;

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v40}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 330
    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 332
    invoke-virtual {v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_c

    :cond_13
    move-object/from16 v4, v29

    .line 335
    :goto_c
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v25, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v7, v6, v8

    .line 336
    invoke-virtual {v2, v4, v11, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 339
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    new-array v6, v5, [F

    fill-array-data v6, :array_10

    .line 340
    invoke-virtual {v2, v4, v1, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 341
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    .line 342
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 344
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowYDiff:I

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 345
    invoke-virtual {v1, v2, v11, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 346
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageQuickPanelAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 412
    iget-object v3, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnKeyguard:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->clearAnimationState()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setTranslationY(F)V

    .line 151
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sysui_qs_fancy_anim"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllowFancy:Z

    .line 131
    iget-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string v0, "sysui_qs_move_whole_rows"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFullRows:Z

    goto :goto_0

    :cond_1
    const-string p2, "sysui_qqs_count"

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNumQuickTiles:I

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->clearAnimationState()V

    .line 140
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 115
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_fancy_anim"

    const-string v1, "sysui_qs_move_whole_rows"

    const-string v2, "sysui_qqs_count"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 124
    :cond_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 1

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnKeyguard:Z

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 102
    iget-boolean p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/ColorQSAnimator;->clearAnimationState()V

    :cond_1
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    return-void

    .line 380
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mLastPosition:F

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mThirdRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondDisappearAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 391
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mFirstRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mThirdRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 398
    iget-object p0, p0, Lcom/android/systemui/qs/ColorQSAnimator;->mNonfirstPageQuickPanelAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :goto_0
    return-void
.end method
