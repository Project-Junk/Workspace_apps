.class public interface abstract Lcom/android/systemui/statusbar/NotificationUpdateHandler;
.super Ljava/lang/Object;
.source "NotificationUpdateHandler.java"


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
.end method

.method public abstract updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method public abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method
