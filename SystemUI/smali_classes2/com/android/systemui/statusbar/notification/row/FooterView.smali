.class public Lcom/android/systemui/statusbar/notification/row/FooterView;
.super Lcom/coloros/systemui/notification/base/FooterViewBase;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field private mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/base/FooterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070163

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/FooterView;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return p0
.end method


# virtual methods
.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;-><init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a01bc

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a020e

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isButtonVisible()Z
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnEmptySpace(FF)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/FooterViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const v0, 0x7f11021c

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContext:Landroid/content/Context;

    const v1, 0x7f110053

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContext:Landroid/content/Context;

    const v1, 0x7f1105a1

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080e6d

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0602ee

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setTextColor(I)V

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContext:Landroid/content/Context;

    const v0, 0x1010030

    .line 120
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    .line 119
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const v0, 0x7f110505

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setText(I)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mContext:Landroid/content/Context;

    const v0, 0x7f11007a

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/FooterViewBase;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const v0, 0x7f0a0370

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 67
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findStowContent()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mShowStowContent:Landroid/view/View;

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setStowContentVisible(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setFirstVisible(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public onUiModeChanged()V
    .locals 3

    const v0, 0x7f0a02e5

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02c0

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v2, 0x7f0808b6

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x7f0808ba

    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextSize(IF)V

    return-void
.end method

.method public setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFirstVisible(Z)V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mIsFirstVisible:Z

    if-eq v0, p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setVisibility(I)V

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mIsFirstVisible:Z

    :cond_1
    return-void
.end method

.method public setManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(I)V

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;->setTextColor(I)V

    return-void
.end method
