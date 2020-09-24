.class public Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;
.super Lcom/color/widget/ColorPagerAdapter;
.source "SplitScreenGuidePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidePagerAdapter"
.end annotation


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->this$0:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    invoke-direct {p0}, Lcom/color/widget/ColorPagerAdapter;-><init>()V

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    check-cast p1, Lcom/color/widget/ColorViewPager;

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/color/widget/ColorViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/color/widget/ColorPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 213
    check-cast p1, Lcom/color/widget/ColorViewPager;

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/color/widget/ColorViewPager;->addView(Landroid/view/View;)V

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$GuidePagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/color/widget/ColorPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
