.class public Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ClockFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAB_BORDER:I = 0x1


# instance fields
.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private mClockStyleFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mColorOSContext:Landroid/content/Context;

.field private mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mVpCurPosition:I

.field private mVpCurState:I

.field private mVpStartPageIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    .line 218
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$3;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$3;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mColorOSContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->initTabView()V

    .line 80
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->initEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpCurState:I

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpCurState:I

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpCurPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpCurPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpStartPageIndex:I

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mVpStartPageIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->updateSelectedBg()V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$-r8UcHPvhtK-KOYBFXjROkGAA3M;

    invoke-direct {v2, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$-r8UcHPvhtK-KOYBFXjROkGAA3M;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    const-string v1, "Setting_AodPreviewClockMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private initTabView()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    const/16 v2, 0xc

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_1

    const/4 v2, 0x6

    move v4, v3

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    .line 132
    :goto_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "KEY_A0D_FRAGMENT_STYLE"

    .line 133
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "KEY_CLOCK_SIZE"

    .line 134
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KEY_PAGER_POSITION"

    .line 135
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    new-instance v2, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;

    invoke-direct {v2}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;-><init>()V

    .line 137
    invoke-virtual {v2, v5}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v0

    .line 144
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 145
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    .line 146
    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 147
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-nez v2, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    invoke-virtual {v5, v3, v2, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x422acccd    # 42.7f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 87
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0037

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 89
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v4, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 93
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v4, 0x7f060048

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setId(I)V

    .line 94
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const-string v4, "#FF181818"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setOverScrollMode(I)V

    .line 96
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    check-cast v0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 102
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 103
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    .line 104
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mIndicator:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelectedBg()V
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Setting_AodPreviewClockMode"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->updateSelectedBg(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateGone()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$4;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public animateVisiable()V
    .locals 3

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0c0038

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public setPagerAdapter(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 237
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mClockStyleFragments:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public unRegisterAodClockModeObserver()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
