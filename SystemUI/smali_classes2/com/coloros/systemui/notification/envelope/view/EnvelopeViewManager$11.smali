.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;
.super Ljava/lang/Object;
.source "EnvelopeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->updateReplyButton(Landroid/widget/Button;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 554
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeHeadUpViewImmediately()V

    .line 555
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1600(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    return-void
.end method
