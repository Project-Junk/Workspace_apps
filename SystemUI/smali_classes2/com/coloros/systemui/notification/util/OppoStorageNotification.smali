.class public Lcom/coloros/systemui/notification/util/OppoStorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "OppoStorageNotification.java"


# static fields
.field private static final ACTION_BAD_STORAGE:Ljava/lang/String; = "oppo.intent.action.BAD_STORAGE_NOTICE"

.field private static final ACTION_DO_UNMOUNT:Ljava/lang/String; = "com.oppo.storage.unmount"

.field private static final EXTERNAL_SD_TYPE:I = 0x1

.field private static final MSG_BAD_REMOVAL:I = 0x7

.field private static final MSG_CHECKING:I = 0x1

.field private static final MSG_EJECT:I = 0x8

.field private static final MSG_MOUNTED:I = 0x4

.field private static final MSG_MOUNTED_RO:I = 0x2

.field private static final MSG_REMOVED:I = 0x6

.field private static final MSG_UNMOUNTABLE:I = 0x3

.field private static final MSG_UNMOUNTED:I = 0x5

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final SD_CARD_ID:I = 0x1

.field private static final SD_TYPE:Ljava/lang/String; = "SD_TYPE"

.field private static final SETTING_OTG_ENABLED:Ljava/lang/String; = "OTG_ENABLED"

.field private static final STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field private static final TAG:Ljava/lang/String; = "OppoStorageNotification"

.field private static final TYPE_OF_SDCARD:Ljava/lang/String; = "sdcard"

.field private static final USB_STORAGE_ID:I = 0x2


# instance fields
.field private mDoUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOtgObserver:Landroid/database/ContentObserver;

.field private mReadOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 69
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mDoUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mReadOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageStateReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mOtgObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/app/NotificationManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeBadRemoval(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeEject(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isOtgDisabledInGovernmentEnterpriseVersion()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isOtgDisable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->cancelAllOtgNotifications()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeReadOnlySdcard(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeChecking(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeReadOnly(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeUnmountable(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeMounted(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeUnmounted(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeRemoved(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method private buildFormatContentIntent(Landroid/os/storage/StorageVolume;)Landroid/app/PendingIntent;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Common"

    const-string p1, "OppoStorageNotification"

    const-string v0, "build format intent wrong, vol is null"

    .line 386
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 389
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.MEDIA_FORMAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "diskId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "SD_TYPE"

    .line 391
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildUnmountPendingIntent(Landroid/os/storage/StorageVolume;)Landroid/app/PendingIntent;
    .locals 2

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.storage.unmount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.os.storage.extra.STORAGE_VOLUME"

    .line 457
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 460
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const/high16 v1, 0x10000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private cancelAllOtgNotifications()V
    .locals 4

    const-string v0, "Common"

    const-string v1, "OppoStorageNotification"

    const-string v2, "cancel all otg notifications."

    .line 447
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 449
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSd(Landroid/os/storage/StorageVolume;)Z
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "Common"

    const-string v1, "OppoStorageNotification"

    const-string v2, "can\'t find Volume or disk"

    .line 423
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Common"

    const-string v1, "OppoStorageNotification"

    const-string v2, "can\'t find Volume\'s disk"

    .line 434
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 437
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p0

    return p0
.end method

.method private getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;
    .locals 2

    .line 464
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 466
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 467
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 468
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 469
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "sys"

    .line 470
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 471
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method private initReceiver()V
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->registerDoUnmountReceiver()V

    .line 227
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->registerStorageStateReceiver()V

    .line 230
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->registerOtherAppsRoReceiver()V

    .line 233
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isOppoBusinessCustomSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->registerOtgContentObserver()V

    :cond_0
    return-void
.end method

.method private isOtgDisable()Z
    .locals 2

    .line 442
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "OTG_ENABLED"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOtgDisabledInGovernmentEnterpriseVersion()Z
    .locals 1

    .line 478
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isOppoBusinessCustomSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isOtgDisable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSd(Landroid/os/storage/StorageVolume;)Z
    .locals 2

    .line 409
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->checkSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Storage is sd card :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v1, "OppoStorageNotification"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isSd(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .line 415
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->checkSd(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vol is sd card :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v1, "OppoStorageNotification"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isSd(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "179:"

    .line 405
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private onVolumeBadRemoval(Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private onVolumeChecking(Landroid/os/storage/StorageVolume;)V
    .locals 1

    .line 338
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeCheckingSdcard(Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeCheckingUsbStorage(Landroid/os/storage/StorageVolume;)V

    :goto_0
    return-void
.end method

.method private onVolumeCheckingSdcard(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f110337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f110336

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e26

    .line 350
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 352
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeCheckingUsbStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f11033b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f11033a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e28

    .line 359
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 361
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeEject(Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private onVolumeMounted(Landroid/os/storage/StorageVolume;)V
    .locals 1

    .line 289
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeMountedUsbStorage(Landroid/os/storage/StorageVolume;)V

    :goto_0
    return-void
.end method

.method private onVolumeMountedUsbStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f11060c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f110633

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e29

    .line 301
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 303
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->buildUnmountPendingIntent(Landroid/os/storage/StorageVolume;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 305
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeReadOnly(Landroid/os/storage/StorageVolume;)V
    .locals 1

    .line 311
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeReadOnlySdcard(Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeReadOnlyUsbStorage(Landroid/os/storage/StorageVolume;)V

    :goto_0
    return-void
.end method

.method private onVolumeReadOnlySdcard(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f11060e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f11060d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e26

    .line 323
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 325
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeReadOnlyUsbStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f110632

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f110631

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e28

    .line 332
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 333
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeRemoved(Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private onVolumeUnmountable(Landroid/os/storage/StorageVolume;)V
    .locals 1

    .line 365
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeUnmountableSdcard(Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->onVolumeUnmountableUsbStorage(Landroid/os/storage/StorageVolume;)V

    :goto_0
    return-void
.end method

.method private onVolumeUnmountableSdcard(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f110339

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f110338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e26

    .line 376
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 378
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->buildFormatContentIntent(Landroid/os/storage/StorageVolume;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 380
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeUnmountableUsbStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f11033d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f11033c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080e27

    .line 399
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->getBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 400
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 401
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private onVolumeUnmounted(Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->isSd(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private registerDoUnmountReceiver()V
    .locals 4

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oppo.storage.unmount"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mDoUnmountReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerOtgContentObserver()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OTG_ENABLED"

    .line 269
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mOtgObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 268
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerOtherAppsRoReceiver()V
    .locals 4

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.BAD_STORAGE_NOTICE"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mReadOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerStorageStateReceiver()V
    .locals 4

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED_RO"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const-string v0, "OppoStorageNotification"

    const-string v1, "start: oppostoragenotificationsdddddd"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 222
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->initReceiver()V

    return-void
.end method
