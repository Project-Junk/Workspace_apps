.class public final synthetic Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

.field private final synthetic f$1:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;->f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

    iput-object p2, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;->f$1:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;->f$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

    iget-object p0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorQSCarrierTextController$fyxZ-X-oROHV9chBxoGSMuhErCM;->f$1:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;

    invoke-static {v0, p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->lambda$postToCallback$0(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V

    return-void
.end method
