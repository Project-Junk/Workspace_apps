.class public final synthetic Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;->f$1:Landroid/content/Intent;

    check-cast p1, Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-static {v0, p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/Intent;Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method
