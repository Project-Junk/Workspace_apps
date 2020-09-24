.class public Lcom/android/systemui/qs/tileimpl/QSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.source "QSTileView.java"


# static fields
.field private static final DUAL_TARGET_ALLOWED:Z = false

.field private static final MAX_LABEL_LINES:I = 0x2


# instance fields
.field private mColorLabelDefault:Landroid/content/res/ColorStateList;

.field private mColorLabelUnavailable:Landroid/content/res/ColorStateList;

.field private mColorSecondLabelDefault:Landroid/content/res/ColorStateList;

.field private mColorSecondLabelUnavailable:Landroid/content/res/ColorStateList;

.field private mDivider:Landroid/view/View;

.field private mExpandIndicator:Landroid/view/View;

.field private mExpandSpace:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelContainer:Landroid/view/ViewGroup;

.field private mPadLock:Landroid/widget/ImageView;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipChildren(Z)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipToPadding(Z)V

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClickable(Z)V

    .line 66
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setId(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setOrientation(I)V

    const/16 p2, 0x31

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setGravity(I)V

    .line 80
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06032f

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelDefault:Landroid/content/res/ColorStateList;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060330

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelUnavailable:Landroid/content/res/ColorStateList;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060331

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorSecondLabelDefault:Landroid/content/res/ColorStateList;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060332

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorSecondLabelUnavailable:Landroid/content/res/ColorStateList;

    .line 85
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070754

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 86
    invoke-virtual {p0, p1, p2, p1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setPadding(IIII)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelDefault:Landroid/content/res/ColorStateList;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010038

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelUnavailable:Landroid/content/res/ColorStateList;

    :goto_0
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01c4

    .line 122
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0598

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a04b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a05fb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDivider:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0253

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDetailY()I
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method getLabel()Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    .line 155
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v1, :cond_2

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelUnavailable:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelDefault:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v3, :cond_8

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorSecondLabelUnavailable:Landroid/content/res/ColorStateList;

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorSecondLabelDefault:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f070761

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 108
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070754

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onMeasure(II)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 145
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onMeasure(II)V

    :cond_2
    return-void
.end method
