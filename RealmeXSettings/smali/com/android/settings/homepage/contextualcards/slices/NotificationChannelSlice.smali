.class public Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.super Ljava/lang/Object;
.source "NotificationChannelSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;
    }
.end annotation


# static fields
.field static final a:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final b:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final c:Landroid/content/Context;

.field d:Lcom/android/settings/notification/k;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/android/settings/notification/k$a;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a:J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b:J

    .line 117
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$3753SeNpBHLhIuvsG-66AMO9Rx4;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$3753SeNpBHLhIuvsG-66AMO9Rx4;

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 147
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->d:Lcom/android/settings/notification/k;

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)I
    .locals 4

    .line 7505
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->a:Lcom/android/settings/notification/k$b;

    .line 8505
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->a:Lcom/android/settings/notification/k$b;

    .line 121
    iget v2, v1, Lcom/android/settings/notification/k$b;->b:I

    iget v3, v0, Lcom/android/settings/notification/k$b;->b:I

    if-eq v2, v3, :cond_0

    .line 122
    iget p0, v1, Lcom/android/settings/notification/k$b;->b:I

    iget p1, v0, Lcom/android/settings/notification/k$b;->b:I

    sub-int/2addr p0, p1

    return p0

    .line 9501
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->b:Landroid/app/NotificationChannel;

    .line 10501
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->b:Landroid/app/NotificationChannel;

    .line 127
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic a(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)Landroid/app/NotificationChannel;
    .locals 0

    .line 5501
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->b:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method private a(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 340
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 339
    invoke-static {p3, p1, v2, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 373
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 380
    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/a;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->d:Lcom/android/settings/notification/k;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/settings/homepage/contextualcards/slices/a;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;Landroid/content/pm/PackageInfo;)V

    .line 382
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, p1

    move-object p1, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const-wide/16 v4, 0x64

    .line 391
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/k$a;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const-string v4, "NotifChannelSlice"

    const-string v5, "Failed to get notification data."

    .line 393
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_2

    .line 397
    iget-boolean v4, v3, Lcom/android/settings/notification/k$a;->f:Z

    if-nez v4, :cond_2

    .line 398
    invoke-direct {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Lcom/android/settings/notification/k$a;)Ljava/util/List;

    move-result-object v4

    .line 397
    invoke-static {v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 403
    iget-object v4, v3, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    iget v4, v4, Lcom/android/settings/notification/k$b;->d:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    if-le v4, v2, :cond_2

    .line 406
    iget-object p1, v3, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    .line 407
    iput-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->g:Lcom/android/settings/notification/k$a;

    move v2, v4

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private a(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/graphics/drawable/IconCompat;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->g:Lcom/android/settings/notification/k$a;

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Lcom/android/settings/notification/k$a;)Ljava/util/List;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 291
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 292
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->g:Lcom/android/settings/notification/k$a;

    iget-object v5, v5, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    .line 294
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/k$b;

    .line 293
    invoke-static {v4, v5}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 4256
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4257
    iget v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    const-string/jumbo v6, "uid"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4258
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    const-string v6, "package"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v6, "fromSettings"

    .line 4260
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4262
    new-instance v6, Lcom/android/settings/core/f;

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v7, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 4263
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v6

    .line 4264
    invoke-virtual {v6, v4}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v4

    const v6, 0x7f120eb0

    const/4 v7, 0x0

    .line 5063
    invoke-virtual {v4, v7, v6}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v4

    const/16 v6, 0x579

    .line 4266
    invoke-virtual {v4, v6}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v4

    .line 4267
    invoke-virtual {v4}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v4

    .line 4269
    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 4270
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4271
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 4269
    invoke-static {v4, p1, v9, v6}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 295
    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 296
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 5305
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const-class v10, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 5306
    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    const-string v10, "package_name"

    .line 5307
    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget v8, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    const-string v10, "package_uid"

    .line 5308
    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "channel_id"

    .line 5309
    invoke-virtual {v6, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 5311
    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v6, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 297
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v5, v9

    .line 296
    :goto_1
    invoke-static {v4, v7, v5}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/android/settings/notification/k$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/k$a;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p1, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget v1, p1, Lcom/android/settings/notification/k$a;->b:I

    .line 348
    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->b(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$JHUqByK63aCAhMdbFOF6Qib-7Mc;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$JHUqByK63aCAhMdbFOF6Qib-7Mc;-><init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Lcom/android/settings/notification/k$a;)V

    .line 350
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 352
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 357
    iget-object v3, p1, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/k$b;

    if-nez v3, :cond_0

    .line 359
    new-instance v3, Lcom/android/settings/notification/k$b;

    invoke-direct {v3}, Lcom/android/settings/notification/k$b;-><init>()V

    .line 361
    :cond_0
    new-instance v4, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;

    invoke-direct {v4, v3, v2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;-><init>(Lcom/android/settings/notification/k$b;Landroid/app/NotificationChannel;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->e:Ljava/util/Comparator;

    .line 366
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$eom2HwVnSR5V139PM4pHkI31SvE;

    .line 367
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x3

    .line 368
    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    .line 369
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private synthetic a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannelGroup;)Ljava/util/stream/Stream;
    .locals 2

    .line 350
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$1aKCOqS2czsJQ2RMKPnsV44P5Cw;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$1aKCOqS2czsJQ2RMKPnsV44P5Cw;-><init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/k$a;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;)Z
    .locals 3

    .line 6449
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    .line 6450
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->d(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 6471
    iget-boolean v2, p2, Lcom/android/settings/notification/k$a;->g:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move v2, v0

    goto :goto_1

    .line 6475
    :cond_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6476
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 7462
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    if-eqz p2, :cond_4

    .line 6456
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private b(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    return-object p1

    :catch_0
    const-string p1, "NotifChannelSlice"

    const-string v0, "No such package to get application icon."

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)Z"
        }
    .end annotation

    .line 415
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 416
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$1aKCOqS2czsJQ2RMKPnsV44P5Cw(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$3753SeNpBHLhIuvsG-66AMO9Rx4(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JHUqByK63aCAhMdbFOF6Qib-7Mc(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannelGroup;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannelGroup;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$eom2HwVnSR5V139PM4pHkI31SvE(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)Landroid/app/NotificationChannel;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 11

    .line 153
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 155
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 1315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a:J

    sub-long/2addr v1, v3

    .line 1316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b:J

    sub-long/2addr v3, v5

    .line 1319
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 1321
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1322
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 1324
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1325
    invoke-virtual {p0, v9}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1329
    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v9, v9, v1

    if-ltz v9, :cond_0

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_0

    .line 1331
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 2275
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const v3, 0x7f080718

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 2277
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const v4, 0x7f120e86

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2436
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const v5, 0x7f1201b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2437
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2439
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const-class v6, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    .line 2440
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x579

    const-string v8, ""

    .line 2439
    invoke-static {v5, v6, v8, v4, v7}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 2443
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/settings/SubSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2444
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 2278
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    .line 2281
    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 2282
    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v3

    .line 2283
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 3248
    :cond_2
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    .line 3249
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v3

    .line 3250
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    .line 3252
    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 168
    iput v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    .line 171
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->b(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 172
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const v4, 0x7f120d12

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    .line 173
    invoke-static {v3, v5}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v7

    .line 172
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 175
    invoke-virtual {v3, v1, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    .line 177
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 181
    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->a(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 183
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    .line 424
    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->f(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    const v2, 0x7f120ee9

    new-array v0, v0, [Ljava/lang/Object;

    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    .line 427
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100032

    new-array v0, v0, [Ljava/lang/Object;

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p2

    .line 431
    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "package_name"

    .line 197
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_uid"

    const/4 v4, -0x1

    .line 198
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "channel_id"

    .line 199
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {v2, v3, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 203
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v0, 0x4

    .line 204
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 205
    invoke-static {v2, v3, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/settings/slices/a;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 4

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->h:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->i:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f120f0d

    .line 4063
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x579

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
