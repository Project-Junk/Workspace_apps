.class public Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;
.super Ljava/lang/Object;
.source "NotificationMediaHelper.java"


# static fields
.field private static sMediaHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;


# instance fields
.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->sMediaHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->sMediaHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    .line 22
    :cond_0
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->sMediaHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    return-object v0
.end method


# virtual methods
.method public addMetadataCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    :cond_0
    return-void
.end method

.method public getMediaMetaIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getMediaNotificationKey()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasMediaSessionNotification()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCurrentMediaSessionNotification(Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public removeMetadataCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    :cond_0
    return-void
.end method
