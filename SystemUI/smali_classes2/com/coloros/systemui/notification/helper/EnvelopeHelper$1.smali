.class Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;
.super Lcom/coloros/systemui/notification/envelope/settings/EnvelopeEnableObserver;
.source "EnvelopeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/EnvelopeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeEnableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object p1, p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object v0, p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$002(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;I)I

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$100(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;

    .line 128
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$000(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;->onEnvelopeStateChanged(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$200(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$000(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$200(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->registerReceiver()V

    goto :goto_1

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$000(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)I

    move-result p1

    if-nez p1, :cond_4

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$200(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->unRegisterReceiver()V

    :cond_4
    :goto_1
    return-void
.end method
