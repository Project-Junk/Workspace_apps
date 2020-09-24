.class public Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;
.super Ljava/lang/Object;
.source "NotificationStateHelper.java"


# static fields
.field private static sNotificationHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;


# instance fields
.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;
    .locals 1

    .line 27
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->sNotificationHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->sNotificationHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    .line 30
    :cond_0
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->sNotificationHelper:Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    return-object v0
.end method


# virtual methods
.method public addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :cond_0
    return-void
.end method

.method public getActiveNotifications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method public removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :cond_0
    return-void
.end method
