.class Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;
.super Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;
.source "PanelPullHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/PanelPullHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;-><init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;)V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;->onChange(Z)V

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;->getPanelDisableWhenLock(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->access$102(Lcom/coloros/systemui/notification/helper/PanelPullHelper;Z)Z

    return-void
.end method
