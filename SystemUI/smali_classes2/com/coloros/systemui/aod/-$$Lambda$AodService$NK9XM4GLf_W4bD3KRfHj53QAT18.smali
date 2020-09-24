.class public final synthetic Lcom/coloros/systemui/aod/-$$Lambda$AodService$NK9XM4GLf_W4bD3KRfHj53QAT18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/aod/AodService;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/aod/AodService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/-$$Lambda$AodService$NK9XM4GLf_W4bD3KRfHj53QAT18;->f$0:Lcom/coloros/systemui/aod/AodService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/aod/-$$Lambda$AodService$NK9XM4GLf_W4bD3KRfHj53QAT18;->f$0:Lcom/coloros/systemui/aod/AodService;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->lambda$onDreamingStarted$1$AodService()V

    return-void
.end method
