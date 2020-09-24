.class public final Lcom/android/settingslib/net/a;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/a$a;,
        Lcom/android/settingslib/net/a$b;
    }
.end annotation


# static fields
.field private static final b:Z

.field private static final c:Ljava/lang/StringBuilder;

.field private static final d:Ljava/util/Formatter;


# instance fields
.field public a:I

.field private final e:Landroid/content/Context;

.field private final f:Landroid/net/ConnectivityManager;

.field private final g:Landroid/net/INetworkStatsService;

.field private final h:Landroid/net/NetworkPolicyManager;

.field private final i:Landroid/app/usage/NetworkStatsManager;

.field private j:Lcom/android/settingslib/net/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/a;->b:Z

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/a;->c:Ljava/lang/StringBuilder;

    .line 59
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingslib/net/a;->c:Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/a;->d:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/a;->f:Landroid/net/ConnectivityManager;

    const-string v0, "netstats"

    .line 77
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/a;->g:Landroid/net/INetworkStatsService;

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/a;->h:Landroid/net/NetworkPolicyManager;

    .line 79
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/net/a;->i:Landroid/app/usage/NetworkStatsManager;

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/settingslib/net/a;->a:I

    return-void
.end method

.method private a(Landroid/net/NetworkTemplate;JJ)J
    .locals 7

    const-string v0, "DataUsageController"

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/a;->i:Landroid/app/usage/NetworkStatsManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p2

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p4

    add-long/2addr p2, p4

    return-wide p2

    :cond_0
    const-string p1, "Failed to get data usage, no entry data"

    .line 178
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to get data usage, remote call failed"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private static a(Ljava/lang/String;)Lcom/android/settingslib/net/a$a;
    .locals 1

    .line 110
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to get data usage, "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(JJ)Ljava/lang/String;
    .locals 11

    .line 274
    sget-object v0, Lcom/android/settingslib/net/a;->c:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 275
    :try_start_0
    sget-object v1, Lcom/android/settingslib/net/a;->c:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    iget-object v3, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    sget-object v4, Lcom/android/settingslib/net/a;->d:Ljava/util/Formatter;

    const v9, 0x10010

    const/4 v10, 0x0

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/net/a;->h:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 189
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 191
    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    .line 192
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    const-string v2, "default_data_warning_level_mb"

    invoke-static {v1, v2}, Lcom/android/settingslib/m/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;
    .locals 13

    .line 126
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/a;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 132
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 133
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_1

    :cond_1
    const-wide v3, 0x90321000L

    sub-long v3, v1, v3

    move-wide v11, v1

    move-wide v2, v3

    :goto_1
    move-object v5, p0

    move-object v6, p1

    move-wide v7, v2

    move-wide v9, v11

    .line 139
    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    const-string p1, "no entry data"

    .line 141
    invoke-static {p1}, Lcom/android/settingslib/net/a;->a(Ljava/lang/String;)Lcom/android/settingslib/net/a$a;

    move-result-object p1

    return-object p1

    .line 143
    :cond_2
    new-instance p1, Lcom/android/settingslib/net/a$a;

    invoke-direct {p1}, Lcom/android/settingslib/net/a$a;-><init>()V

    .line 144
    iput-wide v2, p1, Lcom/android/settingslib/net/a$a;->c:J

    .line 145
    iput-wide v4, p1, Lcom/android/settingslib/net/a$a;->f:J

    .line 146
    invoke-direct {p0, v2, v3, v11, v12}, Lcom/android/settingslib/net/a;->a(JJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/net/a$a;->b:Ljava/lang/String;

    .line 147
    iput-wide v2, p1, Lcom/android/settingslib/net/a$a;->g:J

    .line 148
    iput-wide v11, p1, Lcom/android/settingslib/net/a$a;->h:J

    if-eqz v0, :cond_5

    .line 151
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_3

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_2

    :cond_3
    move-wide v1, v6

    :goto_2
    iput-wide v1, p1, Lcom/android/settingslib/net/a$a;->d:J

    .line 152
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :cond_4
    iput-wide v6, p1, Lcom/android/settingslib/net/a$a;->e:J

    goto :goto_3

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/net/a;->a()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/settingslib/net/a$a;->e:J

    .line 156
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/net/a;->j:Lcom/android/settingslib/net/a$b;

    if-eqz v0, :cond_6

    .line 157
    invoke-interface {v0}, Lcom/android/settingslib/net/a$b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/net/a$a;->a:Ljava/lang/String;

    :cond_6
    return-object p1
.end method

.method public final b(Landroid/net/NetworkTemplate;)J
    .locals 6

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcom/android/settingslib/net/a$a;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/net/a;->e:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/net/a;->a:I

    invoke-static {v0, v1}, Lcom/android/settingslib/net/b;->b(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object v0

    return-object v0
.end method
