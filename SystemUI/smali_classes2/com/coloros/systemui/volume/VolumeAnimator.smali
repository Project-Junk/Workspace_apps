.class public Lcom/coloros/systemui/volume/VolumeAnimator;
.super Ljava/lang/Object;
.source "VolumeAnimator.java"


# static fields
.field private static final VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private context:Landroid/content/Context;

.field private scale:F

.field private scaleX:Landroid/animation/ObjectAnimator;

.field private scaleY:Landroid/animation/ObjectAnimator;

.field private time:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/volume/VolumeAnimator;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scale:F

    .line 20
    iput-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->context:Landroid/content/Context;

    return-void
.end method

.method private dp2Px(F)I
    .locals 2

    .line 88
    iget v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scale:F

    .line 91
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scale:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleY:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public getScaleX()Landroid/animation/ObjectAnimator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public setChangeHeightAnim(FFI)Lcom/coloros/systemui/volume/VolumeAnimator;
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/VolumeAnimator;->dp2Px(F)I

    move-result p1

    .line 58
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/VolumeAnimator;->dp2Px(F)I

    move-result p2

    .line 59
    iput p3, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->time:I

    .line 60
    new-instance p3, Lcom/coloros/systemui/volume/VolumeAnimationFactory;

    invoke-direct {p3}, Lcom/coloros/systemui/volume/VolumeAnimationFactory;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->view:Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->setView(Landroid/view/View;)V

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "height"

    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleY:Landroid/animation/ObjectAnimator;

    .line 63
    iget-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleY:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/coloros/systemui/volume/VolumeAnimator;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public setChangeWidthAnim(FFI)Lcom/coloros/systemui/volume/VolumeAnimator;
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/VolumeAnimator;->dp2Px(F)I

    move-result p1

    .line 40
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/VolumeAnimator;->dp2Px(F)I

    move-result p2

    .line 41
    iput p3, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->time:I

    .line 42
    new-instance p3, Lcom/coloros/systemui/volume/VolumeAnimationFactory;

    invoke-direct {p3}, Lcom/coloros/systemui/volume/VolumeAnimationFactory;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->view:Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->setView(Landroid/view/View;)V

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "width"

    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    .line 45
    iget-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/coloros/systemui/volume/VolumeAnimator;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/coloros/systemui/volume/VolumeAnimator;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->view:Landroid/view/View;

    return-object p0
.end method

.method public start()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 69
    iget v1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->time:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 73
    iget v1, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->time:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    iget-object p0, p0, Lcom/coloros/systemui/volume/VolumeAnimator;->scaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method
