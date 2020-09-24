.class public Lcom/coloros/systemui/notification/base/FooterViewBase;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "FooterViewBase.java"


# instance fields
.field protected mIsFirstVisible:Z

.field protected mIsStowContentVisible:Z

.field protected mShowStowContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mIsStowContentVisible:Z

    .line 28
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mIsFirstVisible:Z

    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected findStowContent()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a04c2

    .line 46
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/base/FooterViewBase;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setStowButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mShowStowContent:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setStowContentVisible(Z)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mIsStowContentVisible:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mShowStowContent:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/base/FooterViewBase;->mIsStowContentVisible:Z

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisibility(I)V

    return-void
.end method
