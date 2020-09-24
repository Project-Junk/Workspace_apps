.class Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;
.super Ljava/lang/Object;
.source "NavBarRegionSampling.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->initRegionSamplingHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$500(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onRegionDarknessChanged$0$NavBarRegionSampling$1(Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$200(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;->updateIcon(Z)V

    return-void
.end method

.method public onRegionDarknessChanged(Z)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {v0, p1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$002(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;Z)Z

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {v0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$100(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Z

    move-result v0

    const-string v1, "NavBarRegionSampling"

    const-string v2, "NavBar"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {v0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$200(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;->shouldSamplingInOpaqueMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->getInstance()Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->setNavIconLight(Z)V

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$300(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setCurrentMedianLuma(F)V

    const-string p0, "don\'t change icon color because in opaque mode"

    .line 104
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->this$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-static {v0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->access$400(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    move-result-object v0

    new-instance v3, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;

    invoke-direct {v3, p0, p1}, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;-><init>(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;Z)V

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->addCallback(Ljava/lang/Runnable;)V

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRegionDarknessChanged, isRegionDark = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
