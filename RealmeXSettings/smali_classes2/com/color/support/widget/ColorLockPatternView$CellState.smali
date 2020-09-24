.class public Lcom/color/support/widget/ColorLockPatternView$CellState;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field alpha:F

.field col:I

.field innerCircleAlpha:F

.field innerCircleScale:F

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field needDrawCircle:Z

.field outerCircleAlpha:F

.field outerCircleScale:F

.field radius:F

.field row:I

.field translationY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 264
    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndX:F

    .line 268
    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndY:F

    return-void
.end method
