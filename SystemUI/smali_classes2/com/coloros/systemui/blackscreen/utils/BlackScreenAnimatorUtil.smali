.class public Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;
.super Ljava/lang/Object;
.source "BlackScreenAnimatorUtil.java"


# static fields
.field private static final DURATION_EXIT:J = 0x1f4L

.field private static final DURATION_RESTORE:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "BlackScreenAnimatorUtil"

.field private static final mInterpolator:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/animation/OppoBezierInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;->INSTANCE:Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;

    sput-object v0, Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;->mInterpolator:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExitAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const-string v3, "translationY"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 26
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/high16 v1, 0x43fa0000    # 500.0f

    sub-float p1, p2, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, p2

    float-to-long p1, p1

    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-object v0
.end method

.method public static getRestoreAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p2, "translationY"

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 38
    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;->mInterpolator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-object p1
.end method

.method static synthetic lambda$static$0()Landroid/view/animation/OppoBezierInterpolator;
    .locals 11

    .line 19
    new-instance v10, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v1, 0x3fcc28f5c28f5c29L    # 0.22

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    return-object v10
.end method
