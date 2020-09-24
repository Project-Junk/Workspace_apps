.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "QSDetail"


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Landroid/view/View;

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mOpenX:I

.field private mOpenY:I

.field protected mQsDetailHeader:Landroid/view/View;

.field protected mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field protected mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 344
    new-instance p1, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 379
    new-instance p1, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 401
    new-instance p1, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetail;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private checkPendingAnimations()V
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 340
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 322
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 326
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 327
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 328
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 332
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 333
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 334
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 312
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 282
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    .line 283
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x3a1

    .line 282
    invoke-virtual {p2, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 284
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    .line 285
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f1106de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v0, 0x7f1106ed

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    if-eqz p3, :cond_4

    .line 258
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    .line 259
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 265
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    :goto_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 260
    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    .line 261
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 195
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetail;->setClickable(Z)V

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    if-eqz p4, :cond_1

    .line 198
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p4, :cond_1

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 200
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    .line 201
    invoke-virtual {p4, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 205
    :goto_1
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 206
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    goto :goto_2

    .line 209
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 210
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    if-eqz p4, :cond_3

    .line 211
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz p4, :cond_3

    .line 212
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    .line 213
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 218
    :cond_3
    :goto_2
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p4, :cond_4

    move p4, v0

    goto :goto_3

    :cond_4
    move p4, v1

    :goto_3
    if-eqz p1, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    if-eq p4, v2, :cond_6

    move p4, v0

    goto :goto_5

    :cond_6
    move p4, v1

    :goto_5
    if-nez p4, :cond_7

    .line 219
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v2, p1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_9

    .line 222
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v2

    .line 223
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v3, v4, v5}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 229
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const v3, 0x7f1100b4

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v1

    .line 233
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 236
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 237
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    goto :goto_6

    .line 225
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must return detail view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_a

    .line 241
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 243
    :cond_a
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 244
    iput-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 245
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 246
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :goto_6
    const/16 v0, 0x20

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    .line 253
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public isClosingDetail()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f070702

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 98
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020002

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v0, 0x102001a

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v0, 0x1020019

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v0, 0x7f0a0487

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0488

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 126
    new-instance v0, Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    .line 129
    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0486

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 151
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    .line 272
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 275
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSDetail$NHQwfesA2Z6J0e0FBlLg3IIEATQ;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/-$$Lambda$QSDetail$NHQwfesA2Z6J0e0FBlLg3IIEATQ;-><init>(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 294
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    return-void
.end method
