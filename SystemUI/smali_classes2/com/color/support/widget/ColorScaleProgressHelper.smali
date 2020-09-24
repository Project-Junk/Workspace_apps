.class public Lcom/color/support/widget/ColorScaleProgressHelper;
.super Ljava/lang/Object;
.source "ColorScaleProgressHelper.java"


# instance fields
.field private mLeft:F

.field private mRight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mLeft:F

    .line 23
    iput v0, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mRight:F

    return-void
.end method


# virtual methods
.method public getLeft()F
    .locals 0

    .line 33
    iget p0, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mLeft:F

    return p0
.end method

.method public getRight()F
    .locals 0

    .line 41
    iget p0, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mRight:F

    return p0
.end method

.method public setLeft(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mLeft:F

    return-void
.end method

.method public setRight(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/color/support/widget/ColorScaleProgressHelper;->mRight:F

    return-void
.end method
