.class public Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCancelButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;
    }
.end annotation


# instance fields
.field volatile mIsPerformClicked:Z

.field mPerformClickCallback:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1399
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1429
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 1399
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1443
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 1399
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return-void
.end method


# virtual methods
.method public isPerformClicked()Z
    .locals 0

    .line 1461
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return p0
.end method

.method public performClick()Z
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mPerformClickCallback:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1449
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1450
    invoke-interface {v0}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;->performClick()V

    .line 1452
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setPerformClickCallback(Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mPerformClickCallback:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton$PerformClickCallback;

    return-void
.end method

.method public setPerformClicked(Z)V
    .locals 0

    .line 1471
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return-void
.end method
