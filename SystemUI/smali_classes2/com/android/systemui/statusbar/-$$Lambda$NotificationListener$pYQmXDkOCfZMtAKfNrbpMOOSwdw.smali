.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$1:Landroid/service/notification/StatusBarNotification;

    iput p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$4:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$1:Landroid/service/notification/StatusBarNotification;

    iget v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;->f$4:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRemoved$2$NotificationListener(Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
