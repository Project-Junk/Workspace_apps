.class public Lcom/coloros/systemui/notification/util/MCSUtil;
.super Ljava/lang/Object;
.source "MCSUtil.java"


# static fields
.field private static final KEY_NOTI_SORT_PRIORITY:Ljava/lang/String; = "sort_priority"

.field private static final NOTI_SORT_PRIORITY_DEFAULT:Ljava/lang/String; = "0"

.field public static final NOTI_SORT_PRIORITY_HIGH:I = 0x2

.field public static final NOTI_SORT_PRIORITY_IMPORTANT:I = 0x1

.field public static final NOTI_SORT_PRIORITY_LOW:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortPriority(Landroid/service/notification/StatusBarNotification;)I
    .locals 2

    .line 37
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->isMCSPkg(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "sort_priority"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSortPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public static isHighPriority(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImportantPriority(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowPriority(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMCSPkg(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
