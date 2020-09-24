.class public Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "GestureGuideCombinationPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;,
        Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;
    }
.end annotation


# instance fields
.field private mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

.field private mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mListener:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTipContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;-><init>(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 101
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpMore()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    new-instance p1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-direct {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    const p1, 0x7f0d0156

    .line 103
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0155

    .line 105
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mListener:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    if-eqz v0, :cond_2

    .line 125
    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v2}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->initView(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    const v0, 0x7f0a0287

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGuideImage:Landroid/widget/ImageView;

    const v0, 0x7f0a028d

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mTipContainer:Landroid/view/ViewGroup;

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    if-eqz v0, :cond_7

    .line 133
    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGuideImage:Landroid/widget/ImageView;

    iget v0, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mImageRes:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGuideImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-boolean v2, v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-boolean v0, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->makeViewVisiable()V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->makeViewGone()V

    goto :goto_1

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGuideImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move p1, v1

    .line 152
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-object v0, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mTipsRes:[I

    array-length v0, v0

    if-ge p1, v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 155
    check-cast v0, Landroid/widget/TextView;

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-object v2, v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mTipsRes:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public isSelectable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 112
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 113
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    if-eqz v0, :cond_0

    .line 85
    iput-boolean p1, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    .line 86
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    .line 76
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mListener:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    .line 78
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpMore()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->mGestureGuideCombinationController:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;)V

    :cond_0
    return-void
.end method
