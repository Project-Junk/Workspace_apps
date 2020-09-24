.class public Lcom/android/settings/notification/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationStation$b;,
        Lcom/android/settings/notification/NotificationStation$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NotificationStation"


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/INotificationManager;

.field private e:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private f:Ljava/lang/Runnable;

.field private final g:Landroid/service/notification/NotificationListenerService;

.field private h:Landroid/content/Context;

.field private final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/NotificationStation$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/android/settings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$1;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->f:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/android/settings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$2;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->g:Landroid/service/notification/NotificationListenerService;

    .line 146
    new-instance v0, Lcom/android/settings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$3;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->i:Ljava/util/Comparator;

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 546
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 548
    sget-object v0, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Icon package not found: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 562
    sget-object v0, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v1, "Cannot get application icon"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 589
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Icon not found in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 590
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "<system>"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->e:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method private a(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$a;)Ljava/lang/CharSequence;
    .locals 12

    .line 320
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 322
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 323
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v3, 0x7f120ed1

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120edb

    .line 325
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 326
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    .line 327
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 328
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f120ed9

    .line 329
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 330
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 331
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f120ed7

    .line 333
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 334
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 335
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 336
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v6, "channelId"

    .line 337
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 338
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 339
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 340
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v6, "postTime"

    .line 341
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 342
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 343
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 344
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v6, "timeoutAfter"

    .line 346
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 347
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 348
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f120ed5

    .line 352
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 353
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 354
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 355
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f120ed6

    .line 357
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 360
    :cond_1
    iget-boolean v4, p2, Lcom/android/settings/notification/NotificationStation$a;->k:Z

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->e:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    .line 364
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f120eca

    .line 365
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    const/4 v4, 0x0

    .line 370
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationStation;->d:Landroid/app/INotificationManager;

    .line 371
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v9

    .line 370
    invoke-interface {v6, v7, v8, v9, v4}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 372
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const v8, 0x7f120ee2

    .line 373
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 374
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v7, 0x7f120ecf

    const/16 v8, -0x3e8

    const v9, 0x7f120eda

    if-eqz v6, :cond_4

    .line 375
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v10

    if-ne v10, v8, :cond_3

    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 377
    :cond_4
    :goto_0
    iget v10, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    .line 378
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 379
    :cond_5
    iget-object v10, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v10, :cond_6

    .line 380
    iget-object v10, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 382
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    :goto_1
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const v11, 0x7f120ee4

    .line 388
    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 389
    invoke-virtual {v10, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v10, 0x7f120ee5

    if-eqz v6, :cond_9

    .line 390
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    if-ne v11, v8, :cond_7

    goto :goto_2

    .line 399
    :cond_7
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v6

    if-eqz v6, :cond_8

    .line 400
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 402
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 391
    :cond_9
    :goto_2
    iget v6, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_a

    .line 392
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 393
    :cond_a
    iget-object v6, v1, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_b

    .line 394
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 396
    :cond_b
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 406
    sget-object v7, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v8, "cannot read channel info"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_3
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const v7, 0x7f120ee6

    .line 409
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 410
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->visibility:I

    .line 411
    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 412
    iget-object v6, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v6, :cond_c

    .line 413
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const v7, 0x7f120ede

    .line 414
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 416
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 417
    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 419
    :cond_c
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const v7, 0x7f120edd

    .line 420
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 421
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->priority:I

    .line 422
    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 423
    iget-boolean p2, p2, Lcom/android/settings/notification/NotificationStation$a;->k:Z

    if-eqz p2, :cond_10

    .line 425
    iget-object p2, p0, Lcom/android/settings/notification/NotificationStation;->e:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 426
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ed8

    .line 427
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 429
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 430
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p2

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 432
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ed2

    .line 433
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 435
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 436
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    :cond_d
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ecc

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 441
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 442
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 444
    :cond_e
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->e:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez p1, :cond_f

    .line 445
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ee0

    .line 446
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 449
    :cond_f
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120edf

    .line 450
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 455
    :cond_10
    :goto_4
    iget-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const p2, 0x7f120ecd

    if-eqz p1, :cond_11

    .line 456
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 459
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 460
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 462
    :cond_11
    iget-object p1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_12

    .line 463
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v0, 0x7f120ed0

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 466
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 467
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 469
    :cond_12
    iget-object p1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_13

    .line 470
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v0, 0x7f120ed4

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 474
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 476
    :cond_13
    iget-object p1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const-string v0, "\n  "

    const/16 v6, 0x20

    if-eqz p1, :cond_16

    iget-object p1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length p1, p1

    if-lez p1, :cond_16

    .line 477
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const v7, 0x7f120ec9

    .line 478
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move p1, v4

    .line 479
    :goto_5
    iget-object v7, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    if-ge p1, v7, :cond_16

    .line 480
    iget-object v7, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v7, v7, p1

    .line 481
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const v9, 0x7f120ee3

    .line 482
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 484
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 485
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 486
    iget-object v8, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v9, "\n    "

    if-eqz v8, :cond_14

    .line 487
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 488
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 490
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    iget-object v10, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 491
    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 493
    :cond_14
    invoke-virtual {v7}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 494
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const v9, 0x7f120ee1

    .line 495
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 497
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 498
    invoke-virtual {v7}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 502
    :cond_16
    iget-object p1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_17

    .line 503
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ece

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 506
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 507
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 511
    :cond_17
    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_19

    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-lez p1, :cond_19

    .line 512
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p2, 0x7f120ed3

    .line 513
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 515
    iget-object p1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 516
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 518
    :cond_18
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 523
    :cond_19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 524
    invoke-virtual {v1, p1, v4}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 525
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const v0, 0x7f120edc

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 527
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 529
    invoke-virtual {p2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const v0, 0x7f120ecb

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 531
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 533
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 235
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 236
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static a(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 252
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    const-string v1, "Intent(pkg="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " (activity)"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string p0, ")"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->c:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 574
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v2, "Cannot load package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 7

    .line 212
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    .line 215
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 216
    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation;->i:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationStation;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :goto_0
    if-ge v4, v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notification/NotificationStation$b;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationStation$a;

    invoke-direct {v3, v5, v6}, Lcom/android/settings/notification/NotificationStation$b;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$a;)V

    .line 222
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/NotificationStation;)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation;->e:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method private c()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationStation$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 269
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 271
    :try_start_0
    iget-object v2, v1, Lcom/android/settings/notification/NotificationStation;->d:Landroid/app/INotificationManager;

    iget-object v3, v1, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    .line 272
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 273
    iget-object v3, v1, Lcom/android/settings/notification/NotificationStation;->d:Landroid/app/INotificationManager;

    iget-object v4, v1, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    .line 274
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32

    .line 273
    invoke-interface {v3, v4, v5}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x2

    .line 280
    new-array v6, v5, [[Landroid/service/notification/StatusBarNotification;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    move v3, v7

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v9, v6, v3

    .line 281
    array-length v10, v9

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 282
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v8

    goto :goto_2

    :cond_0
    move v13, v7

    :goto_2
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v14

    if-eq v14, v0, :cond_1

    move v14, v8

    goto :goto_3

    :cond_1
    move v14, v7

    :goto_3
    and-int/2addr v13, v14

    if-nez v13, :cond_4

    .line 286
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 287
    new-instance v14, Lcom/android/settings/notification/NotificationStation$a;

    invoke-direct {v14, v7}, Lcom/android/settings/notification/NotificationStation$a;-><init>(B)V

    .line 288
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    .line 289
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v15

    iput v15, v14, Lcom/android/settings/notification/NotificationStation$a;->i:I

    .line 290
    iget-object v15, v14, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    iget v5, v14, Lcom/android/settings/notification/NotificationStation$a;->i:I

    iget v8, v13, Landroid/app/Notification;->icon:I

    invoke-direct {v1, v15, v5, v8}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->f:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/settings/notification/NotificationStation;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->d:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/settings/notification/NotificationStation;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->e:Ljava/lang/CharSequence;

    .line 293
    invoke-static {v13}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->g:Ljava/lang/CharSequence;

    .line 294
    iget-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->g:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f120ee7

    .line 295
    invoke-virtual {v1, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/android/settings/notification/NotificationStation$a;->g:Ljava/lang/CharSequence;

    .line 297
    :cond_2
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v7

    iput-wide v7, v14, Lcom/android/settings/notification/NotificationStation$a;->j:J

    .line 298
    iget v7, v13, Landroid/app/Notification;->priority:I

    iput v7, v14, Lcom/android/settings/notification/NotificationStation$a;->h:I

    .line 299
    invoke-virtual {v13}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/android/settings/notification/NotificationStation$a;->b:Ljava/lang/String;

    .line 300
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/android/settings/notification/NotificationStation$a;->a:Ljava/lang/String;

    if-ne v9, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    .line 302
    :goto_4
    iput-boolean v7, v14, Lcom/android/settings/notification/NotificationStation$a;->k:Z

    .line 304
    invoke-direct {v1, v12, v14}, Lcom/android/settings/notification/NotificationStation;->a(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$a;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v14, Lcom/android/settings/notification/NotificationStation$a;->l:Ljava/lang/CharSequence;

    const/4 v7, 0x3

    .line 306
    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v12, v14, Lcom/android/settings/notification/NotificationStation$a;->j:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v5, 0x0

    aput-object v8, v7, v5

    iget-object v8, v14, Lcom/android/settings/notification/NotificationStation$a;->c:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v8, v7, v12

    iget-object v8, v14, Lcom/android/settings/notification/NotificationStation$a;->g:Ljava/lang/CharSequence;

    const/4 v13, 0x2

    aput-object v8, v7, v13

    .line 307
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_4
    move v13, v5

    move v5, v7

    move v12, v8

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v7, v5

    move v8, v12

    move v5, v13

    goto/16 :goto_1

    :cond_5
    move v13, v5

    move v5, v7

    move v12, v8

    add-int/lit8 v3, v3, 0x1

    move v5, v13

    goto/16 :goto_0

    :cond_6
    return-object v4

    :catch_0
    move-exception v0

    .line 313
    sget-object v2, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v3, "Cannot load Notifications: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 191
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 195
    invoke-static {p1, v1}, Lcom/android/settings/m;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    .line 157
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->b:Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    .line 161
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->c:Landroid/content/pm/PackageManager;

    const-string p1, "notification"

    .line 163
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->d:Landroid/app/INotificationManager;

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->b:Landroid/os/Handler;

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->g:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 201
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->g:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 203
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->a:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->b()V

    return-void
.end method
