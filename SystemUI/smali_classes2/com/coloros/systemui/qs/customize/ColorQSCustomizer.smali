.class public Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "ColorQSCustomizer.java"

# interfaces
.implements Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;


# static fields
.field private static final EXTRA_QS_CUSTOMIZING:Ljava/lang/String; = "qs_customizing"

.field private static final MENU_RESET:I = 0x1

.field private static final SHOW_PAGE_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "QSCustomizer"

.field private static final TOP_TILE_MIN_COUNT:I = 0x6

.field private static final TURN_PAGE_THRESHOLD:I = 0x64


# instance fields
.field private isShown:Z

.field private final mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

.field mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

.field private final mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

.field private mClosing:Z

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadTitle:Landroid/widget/TextView;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field mLayoutManagerBottom:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

.field mLayoutManagerTop:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mNavButton:Landroid/view/View;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

.field mTextAddLabel:Landroid/widget/TextView;

.field mTextMoveLabel:Landroid/widget/TextView;

.field private mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

.field private mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

.field private final mTileQueryHelper:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

.field private mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

.field mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

.field private mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 126
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f12044a

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    .line 118
    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$1;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

    .line 610
    new-instance p2, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$S57thJiN9h5ObfzzRJHaxb1cgWM;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$S57thJiN9h5ObfzzRJHaxb1cgWM;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 624
    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 641
    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 128
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01b6

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    new-instance p2, Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    const p2, 0x7f0a01d8

    .line 130
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNavButton:Landroid/view/View;

    const p2, 0x7f0a01d9

    .line 131
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHeadTitle:Landroid/widget/TextView;

    const p2, 0x7f0a02cf

    .line 132
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    const p2, 0x7f0a02ce

    .line 133
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    const p2, 0x7f0a0358

    .line 134
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0355

    .line 135
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0591

    .line 136
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTextMoveLabel:Landroid/widget/TextView;

    const p2, 0x7f0a058e

    .line 139
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTextAddLabel:Landroid/widget/TextView;

    const p2, 0x7f0a01da

    .line 141
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    .line 142
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {p2, p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->setCustomizer(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    .line 143
    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00cd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 147
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->initClick()V

    .line 149
    new-instance v1, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    .line 150
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->updateMinCount(I)V

    .line 151
    new-instance v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    invoke-direct {v1, p1, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;)V

    iput-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileQueryHelper:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->setItemHeightAndColumn(II)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->build()Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerTop:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 154
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerTop:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 155
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 156
    invoke-static {}, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->getInstance()Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->updateColume(I)V

    .line 157
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 158
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 159
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    :cond_0
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 164
    invoke-virtual {p1, v2, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setMoveDuration(J)V

    const-wide/16 v4, 0x12c

    .line 165
    invoke-virtual {p1, v4, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setChangeDuration(J)V

    .line 166
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_1

    iget v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget v6, v1, Landroid/graphics/Point;->x:I

    :goto_0
    invoke-virtual {p1, v6}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setMaxInPageTranslation(I)V

    .line 167
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 168
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerTop:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    new-instance v6, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-virtual {p1, v6}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setCallback(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;)V

    .line 197
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    .line 198
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->setItemHeightAndColumn(II)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->build()Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerBottom:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 199
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerBottom:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 201
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 202
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;-><init>()V

    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 203
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-direct {p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;-><init>()V

    .line 204
    invoke-virtual {p1, v2, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setMoveDuration(J)V

    .line 205
    invoke-virtual {p1, v4, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setChangeDuration(J)V

    .line 206
    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-le p2, v0, :cond_2

    iget p2, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    iget p2, v1, Landroid/graphics/Point;->x:I

    :goto_1
    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->setMaxInPageTranslation(I)V

    .line 207
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerBottom:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setCallback(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;)V

    .line 249
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 250
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 251
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;

    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-direct {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;)V

    .line 269
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 270
    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;

    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-direct {p2, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const-string v0, "top"

    .line 284
    iput-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    const-string v0, "bottom"

    .line 285
    iput-object v0, p2, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    .line 286
    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->addObserver(Ljava/util/Observer;)V

    .line 287
    invoke-virtual {p2, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->addObserver(Ljava/util/Observer;)V

    .line 288
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setUseOriginalRTL(Z)V

    .line 289
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setUseOriginalRTL(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->save()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClosing:Z

    return p1
.end method

.method private initClick()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->initClick()V

    .line 604
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNavButton:Landroid/view/View;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$gvLfN4IGqQjm3QskqI9hzb1wLfg;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$gvLfN4IGqQjm3QskqI9hzb1wLfg;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$setContainer$0(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private queryTiles()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileQueryHelper:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private save()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileQueryHelper:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 0

    .line 505
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mCustomizing:Z

    .line 506
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 533
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 536
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 1

    const p1, 0x7f0a03d3

    .line 368
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/util/StatusBarUtils;->isNavBarBelow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz p1, :cond_1

    .line 379
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavColors()V

    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    return-void
.end method

.method private updateResources()V
    .locals 4

    const v0, 0x7f0a01d5

    .line 324
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 325
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07071e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 328
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 329
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07071c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 330
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070753

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 334
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerTop:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {v3, v1, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->updateItemHeightAndColumn(II)V

    .line 335
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mLayoutManagerBottom:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {v3, v1, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->updateItemHeightAndColumn(II)V

    .line 337
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 338
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07071d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 339
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070719

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 340
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 346
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 347
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 348
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 349
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07071b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 353
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setCurrentPosition(I)V

    .line 355
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 356
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 357
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setCurrentPosition(I)V

    const v0, 0x7f0a0210

    .line 360
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 362
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07071a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 363
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTiles(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 554
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 555
    iget-object v6, v5, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 562
    iget-object v3, v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->onCurrentTilesChanged(Ljava/util/List;)V

    .line 567
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->onStockTilesChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 303
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->cancelDragAndDrop()V

    .line 305
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 6

    .line 459
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    const/4 v1, 0x1

    .line 464
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClosing:Z

    .line 465
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

    .line 467
    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setCustomizing(Z)V

    .line 468
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->dismissPopupMenus()V

    .line 469
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->save()V

    .line 470
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mX:I

    iget v4, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mY:I

    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 471
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 472
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 473
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 474
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public hideImmediately()V
    .locals 3

    .line 481
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 483
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    .line 484
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

    .line 485
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClosing:Z

    .line 486
    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setCustomizing(Z)V

    .line 487
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mToolbar:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->dismissPopupMenus()V

    .line 488
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->save()V

    const/16 v1, 0x8

    .line 489
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 491
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mRecyclerViewTop:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 492
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 493
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 494
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 495
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public initAdapter()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTilesChanged(Z)V

    .line 547
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTilesChanged(Z)V

    return-void
.end method

.method public isClosing()Z
    .locals 0

    .line 512
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClosing:Z

    return p0
.end method

.method public isCustomizing()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

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

.method public isShown()Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    return p0
.end method

.method public synthetic lambda$initClick$2$ColorQSCustomizer(Landroid/view/View;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "QSCustomizer"

    const-string v1, "mNavButton clicked"

    .line 605
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->hide()V

    return-void
.end method

.method public synthetic lambda$new$3$ColorQSCustomizer()V
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->hideImmediately()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$preQueryTiles$1$ColorQSCustomizer()V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->queryTiles()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 312
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateResources()V

    .line 315
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHeadTitle:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTextMoveLabel:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTextAddLabel:Landroid/widget/TextView;

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onCurrentTilesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentTilesChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QSCustomizer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStockTilesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStockTilesChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QSCustomizer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapterBottom:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method

.method public preQueryTiles()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$miMaAW_aURLRFfTIcWlLLl9h9L0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$miMaAW_aURLRFfTIcWlLLl9h9L0;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 5

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x7f110704

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 524
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, v2, v0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    .line 527
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileQueryHelper:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->getAllTiles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateTiles(Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "qs_customizing"

    .line 578
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 580
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    .line 581
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$6;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 572
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 574
    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mCustomizing:Z

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 395
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    sget-object p1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;->INSTANCE:Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setEditLocation(II)V
    .locals 2

    const v0, 0x7f0a01d5

    .line 597
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 598
    aget v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 599
    aget p1, v0, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mY:I

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 390
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTileAdapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 683
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    if-eqz p0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 412
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a01d5

    .line 413
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    aget v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 415
    aget v0, v0, p1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mY:I

    .line 416
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x166

    invoke-static {p2, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 417
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    .line 418
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mOpening:Z

    .line 419
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->initAdapter()V

    .line 420
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setTileSpecs()V

    .line 421
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    .line 422
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mX:I

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mY:I

    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 423
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->queryTiles()V

    .line 424
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 425
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 426
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .line 433
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    const/4 v1, 0x1

    .line 435
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isShown:Z

    .line 436
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->initAdapter()V

    .line 437
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setTileSpecs()V

    .line 438
    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setCustomizing(Z)V

    .line 439
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->queryTiles()V

    .line 440
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 441
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 442
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method
