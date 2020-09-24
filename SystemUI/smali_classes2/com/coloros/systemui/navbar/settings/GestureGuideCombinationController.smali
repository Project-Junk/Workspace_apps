.class public Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;
.super Ljava/lang/Object;
.source "GestureGuideCombinationController.java"


# static fields
.field private static final ANIM_MAX:F = 1.0f

.field private static final ANIM_MIN:F = -0.5f

.field private static final DURATION:I = 0x1f4

.field private static final IMGAE_ALPHA_MAX:I = 0xff


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTipContainer:Landroid/view/ViewGroup;

.field private mViewHasShow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mViewHasShow:Z

    .line 47
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;-><init>(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 139
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    new-instance v1, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureGuideCombinationController$GTcG73iPRQ16Qb4oXqJoyg4hQAQ;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureGuideCombinationController$GTcG73iPRQ16Qb4oXqJoyg4hQAQ;-><init>(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public initView(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 81
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mOnClickListener:Landroid/view/View$OnClickListener;

    const p2, 0x7f0a0289

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a056a

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a015b

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0a0287

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    const v1, 0x7f0a028d

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    .line 87
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    if-eqz v1, :cond_2

    .line 88
    iget v1, v1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mNameRes:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    const/16 v1, 0x8

    if-nez p2, :cond_1

    .line 90
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-boolean p2, p2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget p2, p2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mNameRes:I

    const v2, 0x7f110367

    if-ne p2, v2, :cond_0

    const/4 p2, 0x0

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f1105df

    .line 92
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$getAnimation$0$GestureGuideCombinationController(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 145
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public makeViewGone()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mViewHasShow:Z

    return-void
.end method

.method public makeViewVisiable()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    iget-boolean v1, v1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mTipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mViewHasShow:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mViewHasShow:Z

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 130
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->getAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 135
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->mData:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    return-void
.end method
