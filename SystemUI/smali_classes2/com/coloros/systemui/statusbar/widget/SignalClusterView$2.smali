.class Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->access$000(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->access$100(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V

    return-void
.end method
