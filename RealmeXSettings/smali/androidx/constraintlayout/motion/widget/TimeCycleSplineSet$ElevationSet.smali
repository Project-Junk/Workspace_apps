.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJ)Z
    .locals 2

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->get(FJ)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 180
    :cond_0
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->mContinue:Z

    return p1
.end method