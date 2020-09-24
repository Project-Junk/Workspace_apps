.class public abstract Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorPreviewSeekBarPreferenceFragment.java"


# instance fields
.field protected a:[Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:[I

.field f:Z

.field public g:Landroid/os/Handler;

.field private h:Lcom/color/widget/ColorViewPager;

.field private i:Lcom/coloros/settings/feature/display/zoom/a;

.field private j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

.field private m:Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$gtJwnx50ZkP1WYo1dvEmeexdVHs;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$gtJwnx50ZkP1WYo1dvEmeexdVHs;-><init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->k:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->l:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    .line 219
    new-instance v0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;-><init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->m:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0}, Lcom/color/widget/ColorViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b(I)V

    .line 207
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->i:Lcom/coloros/settings/feature/display/zoom/a;

    iget v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c:I

    iget-object v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    .line 208
    invoke-virtual {v2}, Lcom/color/widget/ColorViewPager;->getCurrentItem()I

    move-result v2

    .line 207
    invoke-virtual {v0, p1, v1, v2}, Lcom/coloros/settings/feature/display/zoom/a;->a(III)V

    .line 210
    iput p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcom/coloros/settings/feature/display/zoom/a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->i:Lcom/coloros/settings/feature/display/zoom/a;

    return-object p0
.end method

.method private synthetic b()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a()V

    return-void
.end method

.method private b(I)V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->e:[I

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const p1, 0x7f12109f

    .line 215
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    return-object p0
.end method

.method private synthetic c(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    invoke-virtual {v0, p1}, Lcom/color/widget/ColorViewPager;->setCurrentItem(I)V

    .line 173
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcom/color/widget/ColorViewPager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    return-object p0
.end method

.method public static synthetic lambda$BGea9JeQqKL9zwH9Z71x47siAIU(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c(I)V

    return-void
.end method

.method public static synthetic lambda$gtJwnx50ZkP1WYo1dvEmeexdVHs(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract a()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iget v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const v2, 0x7f0a05d9

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const v3, 0x7f0a0741

    .line 137
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    const/4 v6, 0x4

    invoke-static {v4, v3, v5, v6}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 139
    invoke-virtual {v2, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setNumber(I)V

    .line 140
    iget p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b:I

    invoke-virtual {v2, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setThumbIndex(I)V

    .line 142
    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->l:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-virtual {v2, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    .line 143
    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_0

    .line 146
    invoke-virtual {v2, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setEnabled(Z)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 150
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 152
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    move v5, v1

    .line 153
    :goto_1
    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 154
    invoke-virtual {p0, v2, v5}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0501

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/widget/ColorViewPager;

    iput-object v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    const v2, 0x7f0a04a8

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 160
    new-instance p1, Lcom/coloros/settings/feature/display/zoom/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->e:[I

    invoke-direct {p1, p3, v3, v2, v4}, Lcom/coloros/settings/feature/display/zoom/a;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->i:Lcom/coloros/settings/feature/display/zoom/a;

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->i:Lcom/coloros/settings/feature/display/zoom/a;

    invoke-virtual {p1, p3}, Lcom/color/widget/ColorViewPager;->setAdapter(Lcom/color/widget/ColorPagerAdapter;)V

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->m:Lcom/color/widget/ColorViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/color/widget/ColorViewPager;->addOnPageChangeListener(Lcom/color/widget/ColorViewPager$OnPageChangeListener;)V

    .line 165
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->h:Lcom/color/widget/ColorViewPager;

    invoke-virtual {p1, v1}, Lcom/color/widget/ColorViewPager;->setCurrentItem(I)V

    .line 167
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iget-object p3, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->e:[I

    array-length p3, p3

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setCurrentPosition(I)V

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->e:[I

    array-length p1, p1

    if-le p1, v0, :cond_3

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    new-instance p3, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$BGea9JeQqKL9zwH9Z71x47siAIU;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/display/zoom/-$$Lambda$ColorPreviewSeekBarPreferenceFragment$BGea9JeQqKL9zwH9Z71x47siAIU;-><init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V

    goto :goto_2

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->j:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setVisibility(I)V

    .line 179
    :goto_2
    iget p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->b:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->a(I)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iput-object v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->g:Landroid/os/Handler;

    :cond_0
    return-void
.end method
