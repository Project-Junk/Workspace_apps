.class public Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;
.super Ljava/lang/Object;
.source "QSTileTouchAnim.java"


# static fields
.field private static final QS_ITEM_TOUCH_DOWN:Landroid/view/animation/Interpolator;

.field private static final QS_ITEM_TOUCH_UP:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimDown:Landroid/animation/ValueAnimator;

.field private mAnimUp:Landroid/animation/ValueAnimator;

.field private mDownAnimEnd:Z

.field private mNeedDoUpAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->QS_ITEM_TOUCH_DOWN:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->QS_ITEM_TOUCH_UP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mDownAnimEnd:Z

    .line 31
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mNeedDoUpAnim:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->doTouchDownAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->doTouchUpAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mDownAnimEnd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mNeedDoUpAnim:Z

    return p0
.end method

.method private doTouchDownAnim(Landroid/view/View;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;-><init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->QS_ITEM_TOUCH_DOWN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;-><init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mDownAnimEnd:Z

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f833333    # 1.025f
    .end array-data
.end method

.method private doTouchUpAnim(Landroid/view/View;)V
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mDownAnimEnd:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mNeedDoUpAnim:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mNeedDoUpAnim:Z

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 105
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->QS_ITEM_TOUCH_UP:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;-><init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Seql7Z536jGooPuajiDSYZqipT8;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Seql7Z536jGooPuajiDSYZqipT8;-><init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f833333    # 1.025f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public initTouchAnim(Landroid/view/View;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;-><init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public synthetic lambda$doTouchDownAnim$0$QSTileTouchAnim(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 89
    iget-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public synthetic lambda$doTouchUpAnim$1$QSTileTouchAnim(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 124
    iget-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->mAnimUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
