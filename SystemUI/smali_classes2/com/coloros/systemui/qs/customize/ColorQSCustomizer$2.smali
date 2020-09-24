.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;
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

    .line 168
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPageSizeChanged$0$ColorQSCustomizer$2()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->requestLayout()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelect(II)V
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top indicator onPageSelect:"

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

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setCurrentPosition(I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->onPageSelected(I)V

    :goto_0
    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top indicator onPageSizeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "QSCustomizer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object v0, v0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setDotsCount(I)V

    .line 173
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p1, p1, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTopIndicator:Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;

    new-instance v0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$2$0r0kh1_aneSVMN0VV7Bp5Thwq4w;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$2$0r0kh1_aneSVMN0VV7Bp5Thwq4w;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$2;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
