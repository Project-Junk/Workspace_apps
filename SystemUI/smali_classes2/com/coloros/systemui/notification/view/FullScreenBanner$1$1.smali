.class Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 101
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 105
    :cond_4
    :goto_2
    invoke-static {}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$300()Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object p2, p2, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/notification/view/RemoteEditText;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 106
    invoke-static {}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$300()Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;->onSend(Landroid/widget/EditText;)V

    :cond_5
    return p1
.end method
