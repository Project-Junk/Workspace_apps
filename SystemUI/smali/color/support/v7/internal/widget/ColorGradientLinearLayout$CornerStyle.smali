.class public Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;
.super Ljava/lang/Object;
.source "ColorGradientLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorGradientLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CornerStyle"
.end annotation


# instance fields
.field public mBottomLeft:Z

.field public mBottomRight:Z

.field public mTopLeft:Z

.field public mTopRight:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mTopLeft:Z

    .line 55
    iput-boolean p2, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mTopRight:Z

    .line 56
    iput-boolean p3, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mBottomLeft:Z

    .line 57
    iput-boolean p4, p0, Lcolor/support/v7/internal/widget/ColorGradientLinearLayout$CornerStyle;->mBottomRight:Z

    return-void
.end method
