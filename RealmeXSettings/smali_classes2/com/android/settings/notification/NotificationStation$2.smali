.class final Lcom/android/settings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$2;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->a(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    .line 132
    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->c(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->c(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 131
    invoke-static {}, Lcom/android/settings/notification/NotificationStation;->a()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)V

    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    if-nez p2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 106
    invoke-static {}, Lcom/android/settings/notification/NotificationStation;->a()V

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationStation;->a(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)V

    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    const/4 v0, 0x1

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    invoke-static {}, Lcom/android/settings/notification/NotificationStation;->a()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0, p1}, Lcom/android/settings/notification/NotificationStation;->a(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 125
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)V

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const/4 p1, 0x1

    .line 114
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 114
    invoke-static {}, Lcom/android/settings/notification/NotificationStation;->a()V

    .line 116
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationStation;->a(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)V

    return-void
.end method
