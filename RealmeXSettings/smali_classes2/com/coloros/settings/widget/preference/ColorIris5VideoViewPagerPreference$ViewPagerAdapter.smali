.class public final Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ColorIris5VideoViewPagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;B)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;-><init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;)V
    .locals 4

    .line 1133
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/d;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v1, v0, Lcom/android/settings/accessibility/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2068
    :try_start_0
    iget v2, v0, Lcom/android/settings/accessibility/d;->c:I

    sget v3, Lcom/android/settings/accessibility/d$a;->c:I

    if-ne v2, v3, :cond_1

    .line 2069
    sget v2, Lcom/android/settings/accessibility/d$a;->d:I

    iput v2, v0, Lcom/android/settings/accessibility/d;->c:I

    .line 2070
    iget-object v0, v0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2072
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;)V
    .locals 4

    .line 2141
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/d;

    if-eqz v0, :cond_0

    .line 3076
    iget-object v1, v0, Lcom/android/settings/accessibility/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3077
    :try_start_0
    iget v2, v0, Lcom/android/settings/accessibility/d;->c:I

    sget v3, Lcom/android/settings/accessibility/d$a;->d:I

    if-ne v2, v3, :cond_1

    .line 3078
    iget-object v2, v0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 3079
    sget v2, Lcom/android/settings/accessibility/d$a;->c:I

    iput v2, v0, Lcom/android/settings/accessibility/d;->c:I

    .line 3081
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d019b

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f0a06e0

    .line 111
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p2, :cond_0

    const v2, 0x7f12187b

    goto :goto_0

    :cond_0
    const v2, 0x7f120f98

    .line 112
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a06e9

    .line 114
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 115
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p2, :cond_1

    const p2, 0x7f110030

    goto :goto_1

    :cond_1
    const p2, 0x7f11002f

    :goto_1
    invoke-static {v2, p2, v1}, Lcom/android/settings/accessibility/d;->a(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/d;

    move-result-object p2

    .line 117
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
