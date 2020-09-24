.class public Lcom/coloros/systemui/common/util/NotificationType;
.super Ljava/lang/Object;
.source "NotificationType.java"


# static fields
.field public static final NOTIFICATIOIN_TYPE:Ljava/lang/String; = "notificationType"

.field public static final NOTIFICATION_DEFAULT:I = 0x0

.field public static final NOTIFICATION_FOCUS:I = 0x1

.field public static final NOTIFICATION_SLEEP:I = 0x2

.field private static final PKG_ARRAY:[Ljava/lang/String;

.field private static final PKG_FOCUS_MODE:Ljava/lang/String; = "com.coloros.focusmode"

.field private static final TAG:Ljava/lang/String; = "NotificationType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.coloros.focusmode"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/common/util/NotificationType;->PKG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotificationType(Landroid/service/notification/StatusBarNotification;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 42
    const-class v1, Lcom/android/systemui/statusbar/NotificationListener;

    .line 43
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener;

    .line 44
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 46
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v2, Lcom/coloros/systemui/common/util/NotificationType;->PKG_ARRAY:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "notificationType"

    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Notification"

    const-string v2, "NotificationType"

    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isFocusModeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.coloros.focusmode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {p0}, Lcom/coloros/systemui/common/util/NotificationType;->getNotificationType(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method
