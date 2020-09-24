.class public Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.super Lcom/coloros/systemui/notification/base/NotificationDataBase;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    }
.end annotation


# instance fields
.field private final mCustomRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

.field private final mFilteredForUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field protected final mRankingComparator:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/coloros/systemui/notification/base/NotificationDataBase;-><init>()V

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 80
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 83
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 576
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mCustomRankingComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;I)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isImportantColorized(Landroid/app/Notification;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getCreationTime(Landroid/app/Notification;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getCreationTime(Landroid/app/Notification;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getCreationTime(Landroid/app/Notification;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getCreationTime(Landroid/app/Notification;)J

    move-result-wide p0

    return-wide p0
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 550
    iget-object v0, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] key="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " icon="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object p3, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      pkg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " importance="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 556
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 555
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "      notification="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    if-nez v0, :cond_0

    .line 162
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    return-object p0
.end method

.method private getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-nez v0, :cond_0

    .line 169
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method private hasHighPriorityCharacteristics(Landroid/app/NotificationChannel;Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    .line 309
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 310
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v3, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 311
    invoke-virtual {v0, p2}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x3

    .line 312
    invoke-virtual {v0, p2, p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getImportanceOfSmallApp(Landroid/service/notification/StatusBarNotification;I)I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 317
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isImportantOngoing(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasPerson(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasStyle(Landroid/app/Notification;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 324
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private hasPerson(Landroid/app/Notification;)Z
    .locals 0

    .line 345
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.people.list"

    .line 346
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private hasStyle(Landroid/app/Notification;Ljava/lang/Class;)Z
    .locals 0

    .line 339
    invoke-virtual {p1}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    .line 340
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isImportantColorized(Landroid/app/Notification;I)Z
    .locals 0

    const/4 p0, 0x2

    if-ge p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 675
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p0

    return p0
.end method

.method private isImportantOngoing(Landroid/app/Notification;)Z
    .locals 0

    .line 334
    invoke-virtual {p1}, Landroid/app/Notification;->isForegroundService()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 335
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setGroupSummaryStowOption(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 701
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->shouldGroupSummaryStow(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setNotificationStowOption(Landroid/app/Notification;I)V

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->shouldGroupSummaryStow(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 704
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setNotificationStowOption(Landroid/app/Notification;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldGroupSummaryStow(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)Z
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object p0

    .line 711
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 712
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 417
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 418
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 422
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 426
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 428
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v4}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 432
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsHighPriority(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 436
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void

    :catchall_0
    move-exception p0

    .line 230
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 527
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 531
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 532
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inactive notifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v1, v3, :cond_2

    .line 540
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 541
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 542
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public filterAndSort()V
    .locals 8

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_5

    .line 460
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 464
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 465
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    .line 466
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v6

    const-class v7, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v6, v7}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    if-eqz v6, :cond_1

    .line 467
    invoke-virtual {v6}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldResetPostTime()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 469
    invoke-virtual {v6, v5}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isWhiteListNotificationOnKeygurad(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v6, 0x0

    .line 470
    iput-wide v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    .line 481
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v4

    if-nez v4, :cond_2

    .line 483
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v4

    const-class v6, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v4, v6}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 484
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setGroupSummaryStowOption(Landroid/service/notification/StatusBarNotification;)V

    .line 485
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 486
    invoke-virtual {v4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isShowingStow()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v6}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 490
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 496
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 498
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isCtsSupport()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 511
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mCustomRankingComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_4

    .line 517
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mCustomRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 502
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_4

    .line 508
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    .line 498
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 394
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public getNotificationsForCurrentUser()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 196
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 197
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 204
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 206
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->notificationSendByMultiApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    goto :goto_2

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 217
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    return-object p0

    :catchall_0
    move-exception p0

    .line 219
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRank(Ljava/lang/String;)I
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 402
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 449
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p0

    return p0
.end method

.method public getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 386
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 362
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHighPriority(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 289
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 288
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->hasHighPriorityCharacteristics(Landroid/app/NotificationChannel;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 294
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 296
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 243
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 240
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public shouldHide(Ljava/lang/String;)Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 253
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 254
    iput-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 266
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 267
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 268
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 269
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p5, :cond_0

    .line 271
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_0
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateEntryStowState(Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 9

    .line 682
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 683
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    .line 685
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 686
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 688
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p3, :cond_0

    .line 689
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    if-eq v2, v7, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 690
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v8}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 691
    :cond_1
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "key_option_stow"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 694
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
