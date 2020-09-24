.class public Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;
.super Ljava/lang/Object;
.source "CarrierServiceStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefNetworkNotification"
.end annotation


# instance fields
.field private mDelay:I

.field private final mTypeId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 372
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 375
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    return v0
.end method

.method public getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 7

    const-string v0, "com.qualcomm.qti.networksetting"

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 418
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extphone"

    .line 420
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/a/a/f$a;->a(Landroid/os/IBinder;)Lorg/a/a/f;

    move-result-object v3

    const-string v4, "com.android.phone.MobileNetworkSettings"

    const-string v5, "com.android.phone"

    if-eqz v3, :cond_0

    .line 423
    :try_start_0
    invoke-interface {v3, v0}, Lorg/a/a/f;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {v3, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    const-string v3, "expandable"

    .line 435
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 436
    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x104003b

    .line 438
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x104003a

    .line 440
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 442
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 444
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "alert"

    .line 446
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mTypeId:I

    return v0
.end method

.method public sendMessage()Z
    .locals 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrefNetworkNotification: sendMessage() w/values: ,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 404
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 405
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$800(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    .line 403
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 407
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isRadioOffOrAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDelay(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string v0, "CSST"

    if-nez p1, :cond_0

    const-string p1, "bundle is null"

    .line 383
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "network_notification_delay_int"

    .line 386
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reading time to delay notification pref network: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;->mDelay:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
