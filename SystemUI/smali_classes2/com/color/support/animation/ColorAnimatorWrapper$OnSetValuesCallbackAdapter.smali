.class public Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;
.super Ljava/lang/Object;
.source "ColorAnimatorWrapper.java"

# interfaces
.implements Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/animation/ColorAnimatorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSetValuesCallbackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPivotXValue(Landroid/view/View;)F
    .locals 0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p0

    return p0
.end method

.method public getPivotYValue(Landroid/view/View;)F
    .locals 0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p0

    return p0
.end method

.method public getStartValue(Landroid/view/View;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 0

    return-void
.end method
