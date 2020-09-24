.class public Lcom/android/sdk/a$d;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/sdk/a;

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/android/sdk/a;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    .line 507
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 508
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(II)V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-boolean v0, v0, Lcom/android/sdk/a;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/sdk/a;->a(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget v0, v0, Lcom/android/sdk/a;->f:I

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-static {v0}, Lcom/android/sdk/a;->d(Lcom/android/sdk/a;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    .line 553
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget v0, v0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 555
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-boolean p1, p1, Lcom/android/sdk/a;->u:Z

    if-nez p1, :cond_4

    .line 556
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->b:Lcom/android/sdk/a$b;

    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget v0, v0, Lcom/android/sdk/a;->n:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/sdk/a$b;->a(IIZ)V

    :cond_4
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/android/sdk/a$d;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 494
    :cond_0
    iput-boolean p1, p0, Lcom/android/sdk/a$d;->b:Z

    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/android/sdk/a$d;->a()Landroid/content/IntentFilter;

    move-result-object p1

    .line 499
    iget-object v0, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object v0, v0, Lcom/android/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 521
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/android/sdk/a$d;->a(II)V

    return-void

    :cond_0
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 523
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-boolean p1, p1, Lcom/android/sdk/a;->i:Z

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p2, p1, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    iput p2, p1, Lcom/android/sdk/a;->s:I

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-boolean p1, p1, Lcom/android/sdk/a;->h:Z

    if-eqz p1, :cond_7

    .line 528
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->i()V

    return-void

    :cond_2
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 532
    iget-object p2, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p2, p2, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/android/sdk/a$d;->a(II)V

    return-void

    :cond_3
    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 534
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 535
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p2, p1, Lcom/android/sdk/a;->e:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    iput p2, p1, Lcom/android/sdk/a;->t:I

    .line 536
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->i()V

    return-void

    :cond_4
    const-string p2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 537
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 538
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    iget-object p2, p1, Lcom/android/sdk/a;->e:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/sdk/a;->a(Lcom/android/sdk/a;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;

    .line 539
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->f(Lcom/android/sdk/a;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_0

    :cond_5
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/sdk/a;->a(Lcom/android/sdk/a;Z)Z

    .line 541
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->f(Lcom/android/sdk/a;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_6

    move v0, v1

    :cond_6
    invoke-static {p1, v0}, Lcom/android/sdk/a;->b(Lcom/android/sdk/a;Z)Z

    .line 543
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    .line 544
    invoke-static {p1}, Lcom/android/sdk/a;->f(Lcom/android/sdk/a;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    .line 543
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/android/sdk/a;->c(Lcom/android/sdk/a;Z)Z

    .line 545
    iget-object p1, p0, Lcom/android/sdk/a$d;->a:Lcom/android/sdk/a;

    invoke-virtual {p1}, Lcom/android/sdk/a;->i()V

    :cond_7
    return-void
.end method
