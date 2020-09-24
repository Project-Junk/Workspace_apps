.class public Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "NotificationListener.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "OverrideAbstract"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field public mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mSettingsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>()V

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 61
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 62
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 64
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$onListenerConnected$0$NotificationListener([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onNotificationPosted$1$NotificationListener(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    .line 122
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    .line 123
    invoke-static {v0, p1, v1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->onNotificationPosted(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V

    .line 128
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 130
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    .line 136
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 137
    invoke-static {v3}, Lcom/coloros/systemui/notification/util/MCSUtil;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/coloros/systemui/notification/util/MCSUtil;->isImportantPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->dropPushHighNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 147
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 148
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_1

    .line 157
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    .line 158
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_1
    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 169
    :goto_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectAddMcsNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    :cond_6
    return-void
.end method

.method public synthetic lambda$onNotificationRankingUpdate$3$NotificationListener(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public synthetic lambda$onNotificationRemoved$2$NotificationListener(Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 192
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 193
    invoke-static {v0, p1, p2, v1, v2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->onNotificationRemoved(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IILcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p3, p4, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 201
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectRemoveMcsNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    return-void
.end method

.method public onListenerConnected()V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginConnected()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NotificationListener"

    const-string v0, "onListenerConnected unable to get active notifications."

    .line 88
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 98
    invoke-virtual {v0}, Landroid/app/NotificationManager;->shouldHideSilentStatusBarIcons()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onSilentStatusBarIconsVisibilityChanged(Z)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationPosted sbn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "NotificationListener"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    .line 219
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 8

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$pYQmXDkOCfZMtAKfNrbpMOOSwdw;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;ILjava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSilentStatusBarIconsVisibilityChanged(Z)V
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 228
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;->onStatusBarIconsBehaviorChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerAsSystemService()V
    .locals 4

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 234
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationListener"

    const-string v1, "Unable to register notification listener"

    .line 238
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
