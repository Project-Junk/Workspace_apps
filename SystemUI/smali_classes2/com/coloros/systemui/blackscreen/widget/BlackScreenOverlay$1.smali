.class Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;
.super Ljava/lang/Object;
.source "BlackScreenOverlay.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 0

    .line 94
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->access$000(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method
