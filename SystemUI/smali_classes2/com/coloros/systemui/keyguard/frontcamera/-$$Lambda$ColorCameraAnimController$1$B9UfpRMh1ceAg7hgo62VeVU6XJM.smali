.class public final synthetic Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$1$B9UfpRMh1ceAg7hgo62VeVU6XJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$1$B9UfpRMh1ceAg7hgo62VeVU6XJM;->f$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$1$B9UfpRMh1ceAg7hgo62VeVU6XJM;->f$0:Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->lambda$onPostExecute$0(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V

    return-void
.end method
