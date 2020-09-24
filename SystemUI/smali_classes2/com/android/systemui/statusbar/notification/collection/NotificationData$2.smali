.class Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 578
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 582
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 583
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 587
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    const/4 v6, 0x3

    if-eqz v5, :cond_0

    .line 589
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 590
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 591
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 592
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    .line 595
    :goto_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    .line 596
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    const/4 v9, 0x4

    const/4 v11, 0x1

    if-lt v6, v9, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-lt v5, v9, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v12, :cond_3

    .line 601
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v11

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 602
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v11

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 604
    :goto_4
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v13, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isNotificationStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    .line 605
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v14, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isNotificationStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    .line 607
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-static {v15, v10, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$400(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;I)Z

    move-result v6

    .line 608
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-static {v10, v15, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$400(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;I)Z

    move-result v5

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    .line 611
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v15

    move/from16 v16, v5

    .line 615
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v5

    move/from16 v17, v6

    .line 616
    invoke-static/range {p2 .. p2}, Lcom/coloros/systemui/notification/util/MCSUtil;->getSortPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v6

    if-lt v5, v11, :cond_5

    move/from16 v18, v11

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    :goto_5
    if-lt v6, v11, :cond_6

    move/from16 v19, v11

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    if-nez v10, :cond_8

    if-nez v7, :cond_8

    if-nez v12, :cond_8

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v20

    if-nez v20, :cond_8

    if-eqz v18, :cond_7

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :cond_8
    :goto_7
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    if-nez v15, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v19, :cond_9

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v11, 0x1

    :goto_9
    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    const/4 v11, -0x1

    if-eq v10, v15, :cond_c

    if-eqz v10, :cond_b

    move/from16 v18, v11

    goto :goto_a

    :cond_b
    const/16 v18, 0x1

    :goto_a
    return v18

    :cond_c
    if-eqz v10, :cond_d

    .line 639
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    return v0

    .line 640
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v15

    if-eq v10, v15, :cond_f

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v18, v11

    goto :goto_b

    :cond_e
    const/16 v18, 0x1

    :goto_b
    return v18

    :cond_f
    if-eq v13, v14, :cond_11

    if-eqz v13, :cond_10

    const/16 v18, 0x1

    goto :goto_c

    :cond_10
    move/from16 v18, v11

    :goto_c
    return v18

    :cond_11
    if-eq v7, v8, :cond_13

    if-eqz v7, :cond_12

    move/from16 v18, v11

    goto :goto_d

    :cond_12
    const/16 v18, 0x1

    :goto_d
    return v18

    :cond_13
    if-eqz v7, :cond_14

    .line 649
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$500(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$600(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    :cond_14
    if-eq v12, v9, :cond_16

    if-eqz v12, :cond_15

    move/from16 v18, v11

    goto :goto_e

    :cond_15
    const/16 v18, 0x1

    :goto_e
    return v18

    :cond_16
    if-eq v5, v6, :cond_18

    if-le v5, v6, :cond_17

    move/from16 v18, v11

    goto :goto_f

    :cond_17
    const/16 v18, 0x1

    :goto_f
    return v18

    :cond_18
    move/from16 v6, v16

    move/from16 v5, v17

    if-eq v5, v6, :cond_1a

    if-eqz v5, :cond_19

    move/from16 v18, v11

    goto :goto_10

    :cond_19
    const/16 v18, 0x1

    :goto_10
    return v18

    .line 663
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v6

    if-eq v5, v6, :cond_1b

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    mul-int/2addr v0, v11

    return v0

    .line 666
    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$700(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$800(Lcom/android/systemui/statusbar/notification/collection/NotificationData;Landroid/app/Notification;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 576
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$2;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
