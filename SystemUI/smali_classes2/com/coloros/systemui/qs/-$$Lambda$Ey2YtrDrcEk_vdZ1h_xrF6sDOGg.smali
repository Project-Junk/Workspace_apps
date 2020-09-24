.class public final synthetic Lcom/coloros/systemui/qs/-$$Lambda$Ey2YtrDrcEk_vdZ1h_xrF6sDOGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/-$$Lambda$Ey2YtrDrcEk_vdZ1h_xrF6sDOGg;->f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/qs/-$$Lambda$Ey2YtrDrcEk_vdZ1h_xrF6sDOGg;->f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierText()V

    return-void
.end method
