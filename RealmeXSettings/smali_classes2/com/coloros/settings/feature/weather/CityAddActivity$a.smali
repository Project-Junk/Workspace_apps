.class final Lcom/coloros/settings/feature/weather/CityAddActivity$a;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/weather/view/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/database/DataSetObservable;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final synthetic e:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance p1, Landroid/database/DataSetObservable;

    invoke-direct {p1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a:Landroid/database/DataSetObservable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;B)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity$a;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity$a;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1803
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/feature/weather/CityAddActivity$a$2;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity$a;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1820
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 740
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 732
    iget p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->c:I

    return p1

    :cond_1
    iget p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->d:I

    return p1
.end method

.method public final a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1771
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0066

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1772
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/module/city/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v1, 0x0

    .line 1774
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v1, "city_name"

    .line 1775
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1776
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "city_name_en"

    .line 1777
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 1780
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "initHeadView cityName = "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "CityAddActivity"

    invoke-static {v2, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0a0470

    .line 1781
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0147

    .line 1782
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01dc

    .line 1783
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0148

    .line 1784
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1785
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_1

    .line 1786
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;

    invoke-direct {v0, p0, p2, v4}, Lcom/coloros/settings/feature/weather/CityAddActivity$a$1;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity$a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1796
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 752
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d005c

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 754
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d019a

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 756
    :goto_0
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->h(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 757
    instance-of p2, p1, Landroid/widget/TextView;

    const/4 v0, 0x5

    if-eqz p2, :cond_4

    .line 758
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_4
    const p2, 0x7f0a0337

    .line 760
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 761
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 762
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    :goto_1
    return-object p1
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 646
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0191

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 647
    new-instance p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;

    invoke-direct {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity$c;-><init>()V

    const v0, 0x7f0a057e

    .line 648
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a030a

    .line 649
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    .line 650
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->d(Lcom/coloros/settings/feature/weather/CityAddActivity;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 651
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06012b

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/weather/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;I)I

    const v0, 0x7f0a05e3

    .line 652
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->c:Landroid/widget/ImageView;

    .line 653
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;

    .line 658
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    if-eqz p1, :cond_2

    .line 660
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e(Lcom/coloros/settings/feature/weather/CityAddActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    const-string v1, "/system/fonts/ColorOSUI-Medium.ttf"

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/a/d;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 665
    iget-object v0, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0803e9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 666
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 668
    :cond_1
    iget-object p1, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->f(Lcom/coloros/settings/feature/weather/CityAddActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    iget-object p1, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->b:Landroid/widget/TextView;

    const-string v0, "/system/fonts/Roboto-Light.ttf"

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/a/d;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 670
    iget-object p1, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0803e8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 673
    :cond_2
    :goto_1
    iget-object p1, p3, Lcom/coloros/settings/feature/weather/CityAddActivity$c;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 674
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getNumColumns()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 675
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07011f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 677
    :cond_3
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->e:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070120

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
