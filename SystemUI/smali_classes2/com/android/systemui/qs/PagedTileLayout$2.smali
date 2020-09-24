.class Lcom/android/systemui/qs/PagedTileLayout$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 522
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->access$602(Lcom/android/systemui/qs/PagedTileLayout;F)F

    .line 525
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$600(Lcom/android/systemui/qs/PagedTileLayout;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrolled(IFI)V

    .line 530
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 531
    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 532
    invoke-virtual {p3}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$500(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 531
    :goto_1
    invoke-interface {p2, v0}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$100(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 499
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageSelected(I)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->access$400(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$500(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    :goto_0
    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_4
    return-void
.end method
