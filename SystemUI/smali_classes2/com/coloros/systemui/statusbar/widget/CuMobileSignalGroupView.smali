.class public Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;
.super Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;
.source "CuMobileSignalGroupView.java"


# instance fields
.field private mMobileNumber:Landroid/widget/ImageView;

.field private mTelecom:Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018c

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mSubId:I

    .line 38
    new-instance p1, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    invoke-direct {p1}, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    .line 39
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;-><init>(Landroid/content/Context;I)V

    .line 44
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mSlotId:I

    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 109
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public apply(ZZ)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_4

    .line 59
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mLastMobileStrengthId:I

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileStrengthId:I

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileStrengthId:I

    invoke-virtual {p0, v2, v3}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 61
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileStrengthId:I

    iput v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mLastMobileStrengthId:I

    .line 65
    :cond_1
    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mLastMobileTypeId:I

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileTypeId:I

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_3

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileTypeId:I

    invoke-virtual {p0, p1, v2}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 67
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileTypeId:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mLastMobileTypeId:I

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivityId:I

    invoke-virtual {p0, p1, v2}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mSlotId:I

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->getRoamingIcon(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileNumber:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->getMobileNumber(I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileTypeId:I

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mRoaming:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivityId:I

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileNumber:Landroid/widget/ImageView;

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->hasService()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v0

    goto :goto_5

    :cond_9
    :goto_4
    move p2, v1

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mRoaming:Z

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileVisible:Z

    return p0
.end method

.method public hasService()Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mTelecom:Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->getNoServiceIcon(Landroid/content/Context;I)I

    move-result v0

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileStrengthId:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 1

    .line 96
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    .line 97
    invoke-static {p3, v0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 96
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 98
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    .line 99
    invoke-static {p3, v0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 98
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 100
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    .line 101
    invoke-static {p3, v0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 100
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 102
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 103
    invoke-static {p3, v0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 102
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    .line 104
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileNumber:Landroid/widget/ImageView;

    .line 105
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 104
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0394

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0a039a

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0a0392

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a01dc

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mDataActivity:Landroid/widget/ImageView;

    const v0, 0x7f0a0390

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;->mMobileNumber:Landroid/widget/ImageView;

    return-void
.end method
