.class public Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;
.super Ljava/lang/Object;
.source "MobileSignalGroupView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MobileSignalGroupView"


# instance fields
.field protected mActivityIn:Z

.field protected mActivityOut:Z

.field protected mContext:Landroid/content/Context;

.field protected mDataActivity:Landroid/widget/ImageView;

.field protected mDataActivityId:I

.field protected mIsMobileTypeIconWide:Z

.field protected mLastMobileActivityId:I

.field protected mLastMobileStrengthId:I

.field protected mLastMobileTypeId:I

.field protected mMobile:Landroid/widget/ImageView;

.field protected mMobileDescription:Ljava/lang/String;

.field protected mMobileGroup:Landroid/view/ViewGroup;

.field protected mMobileRoaming:Landroid/widget/ImageView;

.field protected mMobileStrengthId:I

.field protected mMobileType:Landroid/widget/ImageView;

.field protected mMobileTypeDescription:Ljava/lang/String;

.field protected mMobileTypeId:I

.field protected mMobileVisible:Z

.field protected mNetworkName:Ljava/lang/String;

.field protected mRoaming:Z

.field protected mSlotId:I

.field protected mStackedDataId:I

.field protected mStackedVoiceId:I

.field protected mSubId:I

.field private mTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    .line 41
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    .line 42
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileStrengthId:I

    .line 44
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileTypeId:I

    .line 45
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileActivityId:I

    .line 60
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    .line 61
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mStackedDataId:I

    .line 62
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mStackedVoiceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    .line 41
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    .line 42
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileStrengthId:I

    .line 44
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileTypeId:I

    .line 45
    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileActivityId:I

    .line 60
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    .line 61
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mStackedDataId:I

    .line 62
    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mStackedVoiceId:I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018b

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mContext:Landroid/content/Context;

    .line 76
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    .line 77
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSubId:I

    .line 78
    new-instance p1, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    invoke-direct {p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 165
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public apply(ZZ)Z
    .locals 5

    .line 92
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    .line 95
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileStrengthId:I

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_1

    .line 96
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    invoke-virtual {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 97
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileStrengthId:I

    .line 101
    :cond_1
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileTypeId:I

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_3

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    invoke-virtual {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 103
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileTypeId:I

    .line 107
    :cond_3
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileActivityId:I

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    if-ne p2, v0, :cond_4

    if-eqz p1, :cond_5

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 109
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileActivityId:I

    .line 112
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    invoke-virtual {p2, v0, v4}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getRoamingIcon(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mContext:Landroid/content/Context;

    const v4, 0x7f1100f7

    .line 114
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p1, p2, v0, v1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_6
    iput v3, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileStrengthId:I

    .line 120
    iput v3, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileTypeId:I

    .line 121
    iput v3, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mLastMobileActivityId:I

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 133
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    if-eqz p2, :cond_7

    move p2, v3

    goto :goto_1

    :cond_7
    move p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    if-eqz p2, :cond_9

    move p2, v3

    goto :goto_2

    :cond_9
    move p2, v2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :goto_3
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    if-eqz p2, :cond_a

    move p2, v3

    goto :goto_4

    :cond_a
    move p2, v2

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mRoaming:Z

    if-eqz p2, :cond_b

    move p2, v3

    goto :goto_5

    :cond_b
    move p2, v2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    if-eqz p2, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    return p0
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setIconForView(Landroid/widget/ImageView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iconId is 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileSignalGroupView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 179
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 1

    .line 154
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    .line 155
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 154
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 156
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    .line 157
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 156
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 158
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    .line 159
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 158
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 160
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 161
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 160
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0394

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0a039a

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0a0392

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a01dc

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    return-void
.end method
