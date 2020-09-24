.class Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 116
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-static {}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$300()Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object p1, p1, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/view/RemoteEditText;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 120
    invoke-static {}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$300()Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;->onSend(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
