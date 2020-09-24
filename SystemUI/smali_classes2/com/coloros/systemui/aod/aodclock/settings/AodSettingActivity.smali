.class public Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AodSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodSettingActivity"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mApplyButton:Lcom/color/support/widget/ColorButton;

.field private mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

.field private mIsShowAodStyle:Z

.field private mKeyboardContext:Landroid/content/Context;

.field private mPreviewBatteryLayout:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

.field private mPreviewClockLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

.field private mPreviewDateLayout:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mIsShowAodStyle:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;)Lcom/color/support/widget/ColorButton;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    return-object p0
.end method

.method private initToolBar()V
    .locals 4

    const v0, 0x7f0a00b4

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 87
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070839

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 91
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const v0, 0x7f0a00ad

    .line 97
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 98
    invoke-static {p0}, Lcom/coloros/systemui/common/util/WindowInsetsUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0, v1, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->setPadding(IIII)V

    return-void
.end method

.method private initView()V
    .locals 13

    const v0, 0x7f0a00b3

    .line 140
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00b2

    .line 141
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorButton;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    .line 144
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    const v2, 0x7f110739

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorButton;->setText(I)V

    :cond_0
    const v1, 0x7f0a0328

    .line 148
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    const v1, 0x7f0a01de

    .line 149
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewDateLayout:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;

    .line 150
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0170

    .line 153
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewClockLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    const v0, 0x7f0a00f6

    .line 154
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewBatteryLayout:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    .line 156
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewClockLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    const/4 v3, 0x0

    const v4, 0x7f0700b9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->setViewMargin(Landroid/view/View;IIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewBatteryLayout:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    const/4 v9, 0x0

    const v10, 0x7f0700b3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->setViewMargin(Landroid/view/View;IIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 161
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bc

    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const v0, 0x7f0a0082

    .line 165
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;

    .line 167
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700b0

    .line 169
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 170
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700b1

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 172
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    .line 175
    invoke-virtual {v0}, Lcom/color/support/widget/ColorButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700af

    .line 177
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 178
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ad

    .line 179
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700ae

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 180
    invoke-virtual {v0, v2, p0}, Lcom/color/support/widget/ColorButton;->setTextSize(IF)V

    return-void
.end method

.method private setViewMargin(Landroid/view/View;IIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    :goto_0
    if-nez p3, :cond_1

    move p3, v0

    goto :goto_1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    :goto_1
    if-nez p4, :cond_2

    move p4, v0

    goto :goto_2

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 189
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v0, p0

    .line 190
    :goto_3
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 257
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f01002e

    const v1, 0x7f01002f

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 211
    :pswitch_0
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mIsShowAodStyle:Z

    const v0, 0x7f0b00bc

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 212
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mIsShowAodStyle:Z

    .line 213
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->animateGone()V

    .line 215
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 216
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x7f0c0039

    .line 218
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;)V

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mIsShowAodStyle:Z

    .line 228
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->animateVisiable()V

    .line 230
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorButton;->setAlpha(F)V

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorButton;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mApplyButton:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 234
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x7f0c0038

    .line 235
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x3e8

    const-string v0, "Setting_AodPreviewClockMode"

    .line 241
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "Setting_AodClockMode"

    .line 240
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$BoS-0wyAgISPM7QUsYLhVrEJSPE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$BoS-0wyAgISPM7QUsYLhVrEJSPE;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00b2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0043

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mKeyboardContext:Landroid/content/Context;

    const-string p1, "Setting_AodClockMode"

    const/16 v0, 0x3e8

    .line 75
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "Setting_AodPreviewClockMode"

    .line 77
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 79
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 80
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->initToolBar()V

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->initView()V

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->setPagerAdapter(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewClockLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->clear()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewBatteryLayout:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->clear()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mClockTabLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->unRegisterAodClockModeObserver()V

    :cond_2
    const-string v0, "Aod"

    const-string v1, "AodSettingActivity"

    const-string v2, "onDestroy: "

    .line 135
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->finish()V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Aod"

    const-string p2, "AodSettingActivity"

    const-string v0, "finishAndRemoveTask: "

    .line 251
    invoke-static {p1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v1, 0x400

    .line 106
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x800

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 108
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewClockLayout:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->refreshVerticalPreview()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewDateLayout:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->setPreviewVisiable()V

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->mPreviewBatteryLayout:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->setPreviewVisiable()V

    :cond_2
    return-void
.end method
