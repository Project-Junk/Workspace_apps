.class Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 127
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object v1, v1, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;->this$1:Lcom/coloros/systemui/notification/view/FullScreenBanner$1;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
