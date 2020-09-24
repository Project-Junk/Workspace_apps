.class Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;
.super Ljava/lang/Object;
.source "NotificationPanelViewExt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;->this$0:Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;->this$0:Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    invoke-static {p1}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->access$000(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;->this$0:Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->updateAllNotificationsClose(Z)V

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt$1;->this$0:Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    invoke-static {p0}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;->access$000(Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    :cond_0
    return-void
.end method
