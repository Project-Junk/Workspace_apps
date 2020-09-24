.class public Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;
.super Lcom/color/support/preference/ColorPreference;
.source "SplitScreenGuidePreference.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;
    }
.end annotation


# static fields
.field private static final BIG_FONT_THRESHOLD:F = 1.25f

.field private static final DELAY:I = 0x64

.field private static final DESC_ID:[I

.field private static final JSON_FILE:[Ljava/lang/String;

.field private static final PAGE_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SplitScreenGuidePreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPageAdapter:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

.field private mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->DESC_ID:[I

    const-string v0, "split_screen_setting_guide_finger.json"

    const-string v1, "split_screen_setting_guide_long_click.json"

    const-string v2, "split_screen_setting_guide_pull_click.json"

    const-string v3, "split_screen_setting_guide_side_bar.json"

    .line 61
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->JSON_FILE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f11061c
        0x7f110618
        0x7f11061a
        0x7f11061b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    const/4 p2, 0x0

    .line 70
    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    .line 71
    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mPageAdapter:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

    .line 72
    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mContext:Landroid/content/Context;

    .line 73
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    return-object p0
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d018a

    .line 91
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 105
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    const-string v0, "split_screen_dark"

    goto :goto_0

    :cond_0
    const-string v0, "split_screen_normal"

    :goto_0
    const v1, 0x7f0a0288

    .line 111
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0181

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0006

    .line 116
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/EffectiveAnimationView;

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->JSON_FILE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 119
    invoke-virtual {v4, v5}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v5, -0x1

    .line 120
    invoke-virtual {v4, v5}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    const v4, 0x7f0a0007

    .line 121
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 122
    sget-object v5, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->DESC_ID:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v4, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_1
    new-instance v0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;-><init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mPageAdapter:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

    const v0, 0x7f0a028e

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    .line 128
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    invoke-virtual {p1}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->setNestedParent(Landroid/view/ViewGroup;)V

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mPageAdapter:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 132
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    invoke-virtual {p1}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0706a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViewPager:Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_3

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->removeDot()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mPageAdapter:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 147
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    new-instance v0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$1;-><init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V

    return-void
.end method

.method public static synthetic lambda$q7a3OHFhRGiEpadsQnaXjsCIsmI(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->playAnimation()V

    return-void
.end method

.method private playAnimation()V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x7f0a0006

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/EffectiveAnimationView;

    .line 159
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->initView(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenGuidePreference$q7a3OHFhRGiEpadsQnaXjsCIsmI;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenGuidePreference$q7a3OHFhRGiEpadsQnaXjsCIsmI;-><init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageSelected(I)V

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_2

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const v2, 0x7f0a0006

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationView;

    if-ne v0, p1, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->pauseAnimation()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0a0006

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationView;

    .line 170
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
