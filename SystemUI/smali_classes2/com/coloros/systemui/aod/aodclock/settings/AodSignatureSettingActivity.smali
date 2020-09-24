.class public Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AodSignatureSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodSettingActivity"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mApplyButton:Lcom/color/support/widget/ColorButton;

.field private mControlLayout:Landroid/widget/FrameLayout;

.field private mIsShowAodStyle:Z

.field private mKeyboardContext:Landroid/content/Context;

.field private mPreviewLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

.field private mSpacing:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mIsShowAodStyle:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;)Lcom/color/support/widget/ColorButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    return-object p0
.end method

.method private initToolBar()V
    .locals 4

    const v0, 0x7f0a00b4

    .line 71
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 72
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070839

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 76
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const v0, 0x7f0a00ad

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 83
    invoke-static {p0}, Lcom/coloros/systemui/common/util/WindowInsetsUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0, v1, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->setPadding(IIII)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;

    invoke-direct {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;-><init>()V

    const v2, 0x7f0a01bc

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const v0, 0x7f0a04b4

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mPreviewLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    .line 115
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mPreviewLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$_GnT5pZGilR0HSo-Ohh64lusq2U;

    invoke-direct {v3, v1}, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$_GnT5pZGilR0HSo-Ohh64lusq2U;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;)V

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setSignatureChangeListener(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;)V

    const v0, 0x7f0a00b3

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00b2

    .line 117
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorButton;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    .line 118
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    const v3, 0x7f110739

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorButton;->setText(I)V

    .line 121
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054d

    .line 123
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mSpacing:Landroid/view/View;

    .line 124
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mControlLayout:Landroid/widget/FrameLayout;

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mPreviewLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d2

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e2

    .line 129
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bc

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v0, 0x7f0a0082

    .line 134
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;

    .line 136
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 139
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    .line 144
    invoke-virtual {v0}, Lcom/color/support/widget/ColorButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700af

    .line 146
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 147
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ad

    .line 148
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ae

    .line 150
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/color/support/widget/ColorButton;->setTextSize(IF)V

    .line 151
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->initPreviewData()V

    return-void
.end method


# virtual methods
.method public animateGone(Landroid/view/View;)V
    .locals 3

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x7f0c0039

    .line 232
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;Landroid/view/View;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public animateVisiable(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x7f0c0038

    .line 224
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public finish()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f01002e

    const v1, 0x7f01002f

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic lambda$onClick$0$AodSignatureSettingActivity()V
    .locals 1

    .line 203
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->settingApply(Landroid/content/Context;)V

    .line 204
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 171
    :pswitch_0
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mIsShowAodStyle:Z

    const v0, 0x7f0b00bc

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 172
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mIsShowAodStyle:Z

    .line 173
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 174
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mSpacing:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->animateGone(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->animateGone(Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x7f0c0039

    .line 179
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mIsShowAodStyle:Z

    .line 189
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mSpacing:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->animateVisiable(Landroid/view/View;)V

    .line 191
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->animateVisiable(Landroid/view/View;)V

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorButton;->setAlpha(F)V

    .line 193
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorButton;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x7f0c0038

    .line 197
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 202
    :pswitch_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$AodSignatureSettingActivity$zfPpc7NoKsIpTnu_GV4QRT5eP68;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$AodSignatureSettingActivity$zfPpc7NoKsIpTnu_GV4QRT5eP68;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00b2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0047

    .line 64
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->mKeyboardContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->initToolBar()V

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "Aod"

    const-string v1, "AodSettingActivity"

    const-string v2, "onDestroy: "

    .line 105
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->finish()V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 88
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v1, 0x400

    .line 91
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x800

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v1, 0x1

    .line 94
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
