.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# static fields
.field private static final ADD_CALLBACK:I = 0x1

.field private static final CLICK:I = 0x2

.field private static final DESTROY:I = 0xa

.field private static final LONG_CLICK:I = 0x4

.field private static final REFRESH_STATE:I = 0x5

.field private static final REMOVE_CALLBACK:I = 0xc

.field private static final REMOVE_CALLBACKS:I = 0xb

.field private static final SCAN_STATE_CHANGED:I = 0x9

.field private static final SECONDARY_CLICK:I = 0x3

.field private static final SET_LISTENING:I = 0xd

.field private static final SHOW_DETAIL:I = 0x6

.field private static final STALE:I = 0xe

.field private static final TOGGLE_STATE_CHANGED:I = 0x8

.field private static final USER_SWITCH:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 524
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x0

    .line 534
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 536
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v0, "handleAddCallback"

    .line 538
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 539
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_1

    const-string v0, "handleRemoveCallbacks"

    .line 541
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_4

    .line 542
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v3, v5, :cond_2

    const-string v0, "handleRemoveCallback"

    .line 544
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    .line 545
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_4

    const-string v0, "handleClick"

    .line 547
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 549
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 548
    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v3

    .line 550
    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v4, v3, v6}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 553
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_4

    .line 555
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    const-string v0, "handleSecondaryClick"

    .line 557
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_4

    .line 558
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    const-string v0, "handleLongClick"

    .line 560
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_4

    .line 561
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    const-string v0, "handleRefreshState"

    .line 563
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 564
    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_9

    const-string v0, "handleShowDetail"

    .line 566
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_4

    .line 567
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_a

    const-string v0, "handleUserSwitch"

    .line 569
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto :goto_4

    .line 570
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_c

    const-string v0, "handleToggleStateChanged"

    .line 572
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_b

    goto :goto_1

    :cond_b
    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    .line 573
    :cond_c
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_e

    const-string v0, "handleScanStateChanged"

    .line 575
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    move v4, v6

    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    .line 576
    :cond_e
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_f

    const-string v0, "handleDestroy"

    .line 578
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_4

    .line 579
    :cond_f
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v3, v5, :cond_11

    const-string v0, "handleSetListeningInternal"

    .line 581
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_10

    goto :goto_3

    :cond_10
    move v4, v6

    :goto_3
    invoke-static {v3, v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 582
    :cond_11
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_12

    const-string v0, "handleStale"

    .line 584
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    .line 591
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0xbb8

    cmp-long v1, v3, v1

    if-lez v1, :cond_13

    .line 592
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It takes to much time to handle the message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 586
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_5
    return-void
.end method
