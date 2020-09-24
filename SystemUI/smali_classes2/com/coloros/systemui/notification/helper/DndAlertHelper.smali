.class public Lcom/coloros/systemui/notification/helper/DndAlertHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "DndAlertHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# static fields
.field public static final ACTION_AGREE_DND:Ljava/lang/String; = "action_agree_dnd"

.field private static final ACTION_CLICK_CLOSE_DND:Ljava/lang/String; = "action_click_close_dnd"

.field private static final DND_CANCEL_INTENT_REQUST_CODE:I = 0x66

.field private static final TAG:Ljava/lang/String; = "DndAlertHelper"


# instance fields
.field private final mDndReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 105
    new-instance p2, Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/DndAlertHelper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mDndReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "action_click_close_dnd"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "action_agree_dnd"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mDndReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p2, "notification"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "zen_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->operateNotification(IZ)V

    .line 55
    iput p1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mZenMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/DndAlertHelper;)Landroid/app/NotificationManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private cancelNotification()V
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private cancelNotificationIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_click_close_dnd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const/16 v1, 0x66

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private operateNotification(IZ)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mZenMode:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->sendNotification()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->cancelNotification()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendNotification()V
    .locals 5

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const/16 v2, 0x65

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f110304

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->cancelNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 82
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 83
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const-string v4, "channel_dnd_notice"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f080562

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f110306

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f110305

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/16 v1, 0x2711

    .line 92
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDNDNoticeChannelNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 124
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 126
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "channel_dnd_notice"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 127
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    .line 128
    :cond_0
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz p0, :cond_1

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--isDNDNoticeChannelNotification:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",notification:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string v1, "DndAlertHelper"

    invoke-static {p1, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public onZenChanged(I)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->operateNotification(IZ)V

    .line 71
    iput p1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->mZenMode:I

    return-void
.end method
