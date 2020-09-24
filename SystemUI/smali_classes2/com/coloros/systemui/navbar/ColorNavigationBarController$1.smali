.class Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;
.super Ljava/lang/Object;
.source "ColorNavigationBarController.java"

# interfaces
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/ColorNavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/ColorNavigationBarController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;->this$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;->this$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    invoke-static {p2}, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->access$000(Lcom/coloros/systemui/navbar/ColorNavigationBarController;)Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "com.oppo.intent.action.SUCCESS_DRAG_WINDOW"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "com.oppo.intent.action.START_DRAG_WINDOW"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;->this$0:Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->access$000(Lcom/coloros/systemui/navbar/ColorNavigationBarController;)Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->onDragStateChanged(Z)V

    :cond_1
    return-void
.end method
