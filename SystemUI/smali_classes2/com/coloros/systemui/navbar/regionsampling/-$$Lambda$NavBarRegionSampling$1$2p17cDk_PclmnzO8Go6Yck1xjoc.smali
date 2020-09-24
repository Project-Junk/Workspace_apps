.class public final synthetic Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;->f$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;

    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;->f$0:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;

    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/regionsampling/-$$Lambda$NavBarRegionSampling$1$2p17cDk_PclmnzO8Go6Yck1xjoc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;->lambda$onRegionDarknessChanged$0$NavBarRegionSampling$1(Z)V

    return-void
.end method
