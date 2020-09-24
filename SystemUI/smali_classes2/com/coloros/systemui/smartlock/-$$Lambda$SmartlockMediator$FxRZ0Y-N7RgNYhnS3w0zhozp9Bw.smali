.class public final synthetic Lcom/coloros/systemui/smartlock/-$$Lambda$SmartlockMediator$FxRZ0Y-N7RgNYhnS3w0zhozp9Bw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/smartlock/-$$Lambda$SmartlockMediator$FxRZ0Y-N7RgNYhnS3w0zhozp9Bw;->f$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/smartlock/-$$Lambda$SmartlockMediator$FxRZ0Y-N7RgNYhnS3w0zhozp9Bw;->f$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->lambda$enableTrustAgent$0$SmartlockMediator()V

    return-void
.end method
