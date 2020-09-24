.class public final synthetic Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$Lpr8dx9xwUiaQl9MXTsPNUXmj2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$Lpr8dx9xwUiaQl9MXTsPNUXmj2U;->f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$Lpr8dx9xwUiaQl9MXTsPNUXmj2U;->f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->lambda$updateExtraText$2(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    return-void
.end method
