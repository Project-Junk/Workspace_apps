.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$eCDeEG44yvkLPvXX6pTgZK0rA_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$eCDeEG44yvkLPvXX6pTgZK0rA_k;->f$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    return-void
.end method


# virtual methods
.method public final notifyEnable()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$eCDeEG44yvkLPvXX6pTgZK0rA_k;->f$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->sendPanelEnableBroadcast()V

    return-void
.end method
