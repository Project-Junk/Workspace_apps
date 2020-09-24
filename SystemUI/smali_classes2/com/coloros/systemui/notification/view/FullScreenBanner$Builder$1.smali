.class Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    iput-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    invoke-static {v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->access$400(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.fullscreen_send_btn"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 199
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
