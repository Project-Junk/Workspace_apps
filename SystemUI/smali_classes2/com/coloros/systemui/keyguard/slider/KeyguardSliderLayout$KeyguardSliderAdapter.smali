.class public Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardSliderAdapter"
.end annotation


# instance fields
.field private mLayout:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

.field private mPagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 983
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    .line 986
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mLayout:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    return-void
.end method


# virtual methods
.method public clearPagers()V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1002
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1037
    instance-of p0, p3, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-eqz p0, :cond_0

    .line 1038
    move-object p0, p3

    check-cast p0, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->detached()V

    .line 1040
    :cond_0
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1022
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-nez p0, :cond_1

    return-object v1

    .line 1026
    :cond_1
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->getView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v1

    .line 1030
    :cond_2
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->attached()V

    .line 1031
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPageData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 990
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    .line 996
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->notifyDataSetChanged()V

    return-void

    .line 991
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->mPagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 992
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderAdapter;->notifyDataSetChanged()V

    return-void
.end method
