.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    .line 225
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 226
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0

    .line 228
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 9

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 238
    :cond_0
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_remote_input_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v1, v0, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 241
    check-cast v0, [Landroid/app/RemoteInput;

    check-cast v0, [Landroid/app/RemoteInput;

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    const/4 v0, 0x0

    if-nez v5, :cond_2

    return v0

    .line 250
    :cond_2
    array-length v1, v5

    move-object v6, v2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v5, v2

    .line 251
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v6, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    return v0

    .line 260
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onClickHandler$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 2

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    .line 168
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 170
    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method private logActionClick(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 10

    .line 175
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_notification_action_index_tag:I

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 182
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    const-string v3, "NotifRemoteInputManager"

    if-nez v2, :cond_1

    const-string p0, "Couldn\'t determine notification for click."

    .line 184
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_1
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/coloros/common/util/ResourceUtil;->android_id_action0:I

    if-ne v6, v7, :cond_2

    if-eqz v1, :cond_2

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 192
    check-cast v1, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    move v6, p1

    goto :goto_0

    :cond_2
    move v6, v4

    .line 195
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v1

    .line 200
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_5

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    array-length v4, v4

    if-lt v7, v4, :cond_3

    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v7, v2, v0

    .line 207
    iget-object v0, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "actionIntent does not match"

    .line 208
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 213
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    .line 212
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p2

    const/4 v0, 0x1

    .line 215
    invoke-static {v5, v1, p1, v0, p2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 217
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_5
    :goto_1
    const-string p0, "statusBarNotification.getNotification().actions is null or invalid"

    .line 202
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "NOTIFICATION_CLICK"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Notification\'s action is clicked and handled for remote input! sbn:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string p2, "NotifRemoteInputManager"

    .line 147
    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 157
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->logActionClick(Landroid/view/View;Landroid/app/PendingIntent;)V

    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$9gPb9F64OW5Dxh7FkFJc-IgAVZQ;-><init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/app/PendingIntent;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result p0

    return p0
.end method
