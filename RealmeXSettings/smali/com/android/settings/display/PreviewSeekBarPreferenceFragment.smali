.class public abstract Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;
    }
.end annotation


# instance fields
.field protected a:[Ljava/lang/String;

.field protected b:I

.field protected c:I

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:Lcom/android/settings/display/PreviewPagerAdapter;

.field private f:Lcom/android/settings/widget/DotsPageIndicator;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/android/settings/widget/LabeledSeekBar;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 208
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 226
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->e:Lcom/android/settings/display/PreviewPagerAdapter;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->j:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->e:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c:I

    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    .line 197
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 196
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->a(III)V

    .line 199
    iput p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c:I

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b()[I

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f12109f

    .line 204
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b(I)V

    return-void
.end method

.method public static synthetic lambda$S3N23ltRixOJVc5LqXoYvF3u7mk(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hdT5s09RGkhtA7huAjVeubIfRJY(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract b()[I
.end method

.method protected abstract c()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p3, 0x7f0a01b0

    .line 98
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->g:Landroid/widget/TextView;

    .line 103
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const v2, 0x7f0a05d9

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    .line 106
    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2, p3}, Lcom/android/settings/widget/LabeledSeekBar;->setMax(I)V

    const p3, 0x7f0a0625

    .line 109
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->j:Landroid/view/View;

    .line 110
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->j:Landroid/view/View;

    new-instance v2, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$S3N23ltRixOJVc5LqXoYvF3u7mk;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$S3N23ltRixOJVc5LqXoYvF3u7mk;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a037f

    .line 117
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->i:Landroid/view/View;

    .line 118
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->i:Landroid/view/View;

    new-instance v2, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$hdT5s09RGkhtA7huAjVeubIfRJY;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$hdT5s09RGkhtA7huAjVeubIfRJY;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_0

    .line 128
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setEnabled(Z)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    move v5, v1

    .line 135
    :goto_1
    iget-object v6, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 136
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b()[I

    move-result-object v2

    const v5, 0x7f0a0501

    .line 140
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    .line 141
    new-instance v5, Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {v5, p3, v3, v2, v4}, Lcom/android/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->e:Lcom/android/settings/display/PreviewPagerAdapter;

    .line 143
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->e:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {p3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 144
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_3

    array-length v3, v2

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 145
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p3, 0x7f0a04a8

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    .line 148
    array-length p1, v2

    if-le p1, v0, :cond_4

    .line 149
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->l:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_3

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->f:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 156
    :goto_3
    iget p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b:I

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(I)V

    return-object p2
.end method

.method public onStart()V
    .locals 3

    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;B)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->h:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
