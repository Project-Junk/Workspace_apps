.class public Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "GestureCarouselPreference.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;
.implements Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;
    }
.end annotation


# static fields
.field private static final BIG_FONT_THRESHOLD:F = 1.25f

.field private static final CAROUSEL_DESC_ID:[I

.field private static final CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

.field private static final CAROUSEL_IMG_FOLDER_DARK:[Ljava/lang/String;

.field private static final CAROUSEL_JSON:[Ljava/lang/String;

.field private static final CAROUSEL_JSON_DARK:[Ljava/lang/String;

.field private static final CAROUSEL_TITLE_ID:[I

.field private static final DELAY_START:I = 0x64

.field private static final PAGE_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GestureCarouselPreference"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNeedAutoPlay:Z

.field private mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

.field private mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

.field private mViewPagerIndex:I

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

    const-string v0, "navbar_swipe_side_gesture_back_up.json"

    const-string v1, "navbar_swipe_side_gesture_back_to_desktop.json"

    const-string v2, "navbar_swipe_side_gesture_view_recent_tasks.json"

    const-string v3, "navbar_swipe_side_gesture_switch_to_the_recent_app.json"

    .line 48
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_JSON:[Ljava/lang/String;

    const-string v0, "navbar_swipe_side_gesture_back_up"

    const-string v1, "navbar_swipe_side_gesture_back_to_desktop"

    const-string v2, "navbar_swipe_side_gesture_view_recent_tasks"

    const-string v3, "navbar_swipe_side_gesture_switch_to_the_recent_app"

    .line 54
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    const-string v0, "navbar_swipe_side_gesture_back_up_dark.json"

    const-string v1, "navbar_swipe_side_gesture_back_to_desktop_dark.json"

    const-string v2, "navbar_swipe_side_gesture_view_recent_tasks_dark.json"

    const-string v3, "navbar_swipe_side_gesture_switch_to_the_recent_app_dark.json"

    .line 60
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_JSON_DARK:[Ljava/lang/String;

    const-string v0, "navbar_swipe_side_gesture_back_up_dark"

    const-string v1, "navbar_swipe_side_gesture_back_to_desktop_dark"

    const-string v2, "navbar_swipe_side_gesture_view_recent_tasks_dark"

    const-string v3, "navbar_swipe_side_gesture_switch_to_the_recent_app_dark"

    .line 66
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_IMG_FOLDER_DARK:[Ljava/lang/String;

    const/4 v0, 0x4

    .line 72
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_TITLE_ID:[I

    .line 78
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_DESC_ID:[I

    return-void

    :array_0
    .array-data 4
        0x7f1105fc
        0x7f1105fd
        0x7f1105ff
        0x7f1105fe
    .end array-data

    :array_1
    .array-data 4
        0x7f1105f7
        0x7f1105f8
        0x7f1105fa
        0x7f1105f9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    .line 88
    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    .line 90
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    .line 88
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    .line 90
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    .line 91
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    .line 100
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    .line 88
    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    .line 90
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    .line 91
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d014f

    .line 110
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0150

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0004

    .line 135
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/EffectiveAnimationView;

    .line 136
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const/16 v5, 0x20

    .line 137
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    if-ne v5, v4, :cond_0

    .line 138
    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_JSON_DARK:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 139
    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_IMG_FOLDER_DARK:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setForceDarkAllowed(Z)V

    goto :goto_1

    .line 142
    :cond_0
    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_JSON:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 143
    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x1

    .line 145
    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v4, -0x1

    .line 146
    invoke-virtual {v3, v4}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    const v3, 0x7f0a0008

    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_TITLE_ID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a0005

    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->CAROUSEL_DESC_ID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;-><init>(Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    const v0, 0x7f0a028e

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setViewChangedListener(Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;)V

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setNestedParent(Landroid/view/ViewGroup;)V

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mPageAdapter:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference$CarouselPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070658

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const v0, 0x7f0a018a

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 166
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    new-instance v0, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$m4BR6fV9Uqi0-k8oqOxeLg-Vcik;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$m4BR6fV9Uqi0-k8oqOxeLg-Vcik;-><init>(Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V

    return-void
.end method

.method public static synthetic lambda$c4TQxdHCgWbQ8COdR7PbR5-Ck5o(Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->playAnimation()V

    return-void
.end method

.method private playAnimation()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    if-eqz v1, :cond_0

    .line 171
    iget v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    iget v2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setCurrentItem(I)V

    const v1, 0x7f0a0004

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/EffectiveAnimationView;

    .line 175
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$c4TQxdHCgWbQ8COdR7PbR5-Ck5o;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$c4TQxdHCgWbQ8COdR7PbR5-Ck5o;-><init>(Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;)V

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationView;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    .line 178
    iget v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$GestureCarouselPreference(I)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder() mNeedAutoPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "GestureCarouselPreference"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 118
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->initView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    .line 120
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$c4TQxdHCgWbQ8COdR7PbR5-Ck5o;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$GestureCarouselPreference$c4TQxdHCgWbQ8COdR7PbR5-Ck5o;-><init>(Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPager:Lcom/coloros/systemui/navbar/settings/CarouselViewPager;

    if-eqz p1, :cond_1

    .line 126
    iget p0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViewPagerIndex:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageSelected(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_3

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    const v2, 0x7f0a0004

    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationView;

    .line 212
    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-ne v0, p1, :cond_1

    .line 214
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onViewMoved()V
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    const-string v0, "NavBar"

    const-string v1, "GestureCarouselPreference"

    const-string v2, "startAnimation"

    .line 184
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mNeedAutoPlay:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const-string v0, "NavBar"

    const-string v1, "GestureCarouselPreference"

    const-string v2, "stopAnimation"

    .line 189
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0a0004

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationView;

    .line 196
    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
