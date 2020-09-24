.class Lcom/coloros/systemui/notification/view/FullScreenBanner$1;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/view/FullScreenBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/view/FullScreenBanner;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$000(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$100(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    const p2, 0x7f0a051a

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    iget-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    const v0, 0x7f0a04ac

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/view/RemoteEditText;

    invoke-static {p2, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$202(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/RemoteEditText;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    .line 90
    iget-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/notification/view/RemoteEditText;->showSoftInputFromWindow()V

    .line 93
    iget-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-static {p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$200(Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/RemoteEditText;

    move-result-object p2

    new-instance v0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$1;-><init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$1;)V

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/notification/view/RemoteEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 116
    new-instance p2, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$2;-><init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$1;->this$0:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    new-instance p2, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$1$3;-><init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$1;)V

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
