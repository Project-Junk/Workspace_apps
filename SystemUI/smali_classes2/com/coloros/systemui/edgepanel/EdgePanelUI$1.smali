.class Lcom/coloros/systemui/edgepanel/EdgePanelUI$1;
.super Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;
.source "EdgePanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/edgepanel/EdgePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/edgepanel/EdgePanelUI;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/edgepanel/EdgePanelUI;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelUI;

    invoke-direct {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->onChange(Z)V

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelUI$1;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelUI;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->access$000(Lcom/coloros/systemui/edgepanel/EdgePanelUI;)V

    return-void
.end method
