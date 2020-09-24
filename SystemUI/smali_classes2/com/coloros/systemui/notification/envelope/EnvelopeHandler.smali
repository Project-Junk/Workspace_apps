.class public abstract Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;
.super Ljava/lang/Object;
.source "EnvelopeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Envelope"


# instance fields
.field mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;-><init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;->mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    return-void
.end method


# virtual methods
.method public handleEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;IILjava/lang/String;IZ)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p5

    move/from16 v11, p8

    .line 52
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    const-string v12, "com.tencent.mm"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_0

    .line 54
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v12, v1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    move v15, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v10, v1, :cond_1

    .line 56
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v15, v13

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    move v8, v15

    .line 58
    invoke-virtual/range {v0 .. v8}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;->sendEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;ILjava/lang/String;ZZ)V

    if-ne v11, v14, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 60
    invoke-virtual {v9, v0, v1}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;->openNotification(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p4

    .line 62
    :goto_2
    iget-object v0, v9, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;->mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    if-eqz v0, :cond_4

    if-ne v11, v14, :cond_3

    const-string v0, "debug.gamemode.value"

    .line 63
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v2, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    .line 65
    invoke-virtual {v0, v12}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;->getSmartDriverBannerBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    :cond_3
    iget-object v0, v9, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;->mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p9

    move v5, v15

    invoke-interface/range {v0 .. v5}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;->onShowHeadUpView(Landroid/app/Notification;IIZZ)V

    :cond_4
    return-void
.end method

.method public openNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    .line 71
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    const-string v0, "com.tencent.mm"

    .line 72
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;->getSmartDriverBannerBlocked(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "Envelope"

    const-string v2, "Notification"

    if-eqz p0, :cond_0

    const-string p0, "Envelope--Can\'t open envelope because driver mode"

    .line 73
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "driver_mode"

    .line 74
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "debug.gamemode.value"

    .line 77
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Envelope--Can\'t open envelope because game mode"

    .line 78
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "game_mode"

    .line 79
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Envelope--enqueueEnvelopeNotification:close envelope feature because current state is children mode"

    .line 83
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "children_mode"

    .line 85
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "power"

    .line 88
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v3, "keyguard"

    .line 89
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 90
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 91
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    const-string p0, "Envelope--openNotification: auto open envelope notification"

    .line 93
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    const/4 p0, 0x1

    const/4 p2, 0x0

    .line 95
    invoke-static {p1, p0, p2}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Envelope--Can\'t open notification"

    .line 97
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "Envelope--Can\'t open envelope because keyguard_show"

    .line 100
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "keyguard_show"

    .line 101
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "Envelope--Can\'t open envelope because power off"

    .line 104
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "power_off"

    .line 105
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeAutoOpen(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract sendEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;ILjava/lang/String;ZZ)V
.end method
