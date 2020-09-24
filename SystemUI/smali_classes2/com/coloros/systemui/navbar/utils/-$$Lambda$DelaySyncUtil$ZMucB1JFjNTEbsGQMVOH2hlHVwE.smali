.class public final synthetic Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;->f$0:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    iput-object p2, p0, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;->f$0:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->lambda$addCallback$0$DelaySyncUtil(Ljava/lang/Runnable;)V

    return-void
.end method
