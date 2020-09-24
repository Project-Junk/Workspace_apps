.class public final synthetic Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

.field private final synthetic f$1:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;->f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;->f$1:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;->f$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;->f$1:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->lambda$updateExtraText$0$ClockExtraTextController(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    return-void
.end method
