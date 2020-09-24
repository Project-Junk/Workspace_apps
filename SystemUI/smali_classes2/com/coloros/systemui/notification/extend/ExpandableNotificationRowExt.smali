.class public Lcom/coloros/systemui/notification/extend/ExpandableNotificationRowExt;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowExt.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncrypted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/ExpandableNotificationRowExt;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEncrypted()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/extend/ExpandableNotificationRowExt;->mEncrypted:Z

    return p0
.end method

.method public updateEncrypted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    .line 36
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/extend/ExpandableNotificationRowExt;->mEncrypted:Z

    .line 39
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    .line 40
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isEnvelopeNotification(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->shouldEncrypted(Landroid/app/Notification;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/extend/ExpandableNotificationRowExt;->mEncrypted:Z

    :cond_0
    return-void
.end method
