.class public Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;
.super Lcom/color/widget/ColorViewPager;
.source "ColorDecoratorViewPager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorDecoratorViewPager"


# instance fields
.field private mMultiWindowMode:Z

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isMultiWindowMode()Z
    .locals 3

    .line 72
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;->INSTANCE:Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;

    .line 76
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 80
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiWindowMode: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDivider"

    const-string v2, "ColorDecoratorViewPager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method static synthetic lambda$isMultiWindowMode$0(Lcom/color/app/ColorAppInfo;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/color/app/ColorAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/color/app/ColorAppInfo;->windowingMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/color/app/ColorAppInfo;->windowingMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->isMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->mMultiWindowMode:Z

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->mMultiWindowMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/color/widget/ColorViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/color/widget/ColorViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/color/widget/ColorViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setNestedParent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->mParent:Landroid/view/ViewGroup;

    return-void
.end method
