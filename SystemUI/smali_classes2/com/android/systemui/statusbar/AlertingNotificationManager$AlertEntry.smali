.class public Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
.super Ljava/lang/Object;
.source "AlertingNotificationManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/AlertingNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AlertEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mEarliestRemovaltime:J

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mPostTime:J

.field protected mRemoveAlertRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateFinishTime()J
    .locals 4

    .line 387
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAutoDismissNotificationDecay:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected calculatePostTime()J
    .locals 2

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I
    .locals 5

    .line 343
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    iget-wide v2, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 281
    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method protected isSticky()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setEntry$0$AlertingNotificationManager$AlertEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return-void
.end method

.method public removeAsSoonAsPossible()V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEarliestRemovaltime:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 369
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public removeAutoRemovalCallbacks()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 351
    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$AlertEntry$H0BO9fDKgUoiMeVuexcatZzpMyY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$AlertEntry$H0BO9fDKgUoiMeVuexcatZzpMyY;-><init>(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 295
    iput-object p2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->calculatePostTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    const/4 p1, 0x1

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    return-void
.end method

.method public updateEntry(Z)V
    .locals 4

    const-string v0, "AlertNotifManager"

    const/4 v1, 0x2

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "updateEntry"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget v2, v2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mMinimumDisplayTime:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEarliestRemovaltime:J

    if-eqz p1, :cond_1

    .line 313
    iget-wide v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->isSticky()Z

    move-result p1

    if-nez p1, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->calculateFinishTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 319
    iget-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mMinimumDisplayTime:I

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 320
    iget-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public wasShownLongEnough()Z
    .locals 4

    .line 338
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEarliestRemovaltime:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
