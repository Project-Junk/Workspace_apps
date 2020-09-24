.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;
.super Ljava/lang/Object;
.source "ColorQSCustomizer.java"

# interfaces
.implements Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPageSizeChanged$0$ColorQSCustomizer$3()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->requestLayout()V

    return-void
.end method

.method public onLayoutComplete(Landroidx/recyclerview/widget/RecyclerView;IIII)V
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/2addr p2, p5

    .line 241
    iget p3, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p3, p2, :cond_0

    .line 242
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 p2, 0x0

    .line 243
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelect(II)V
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottom indicator onPageSelect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scrollState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QSCustomizer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 220
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setCurrentPosition(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageSelected(I)V

    :goto_0
    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottom indicator onPageSizeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QSCustomizer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object v0, v0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setDotsCount(I)V

    .line 213
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p1, p1, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mBottomIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    new-instance v0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3$WRYSbfyvlwj_b0xNJiA1n8twfTQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3$WRYSbfyvlwj_b0xNJiA1n8twfTQ;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$3;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
