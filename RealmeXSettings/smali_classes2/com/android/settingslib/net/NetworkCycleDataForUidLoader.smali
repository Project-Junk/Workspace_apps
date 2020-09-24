.class public Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$a;)V

    .line 1107
    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->e:Ljava/util/List;

    .line 2107
    iget-boolean p1, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->b:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->f:Z

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;B)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a<",
            "*>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7084
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->d:Ljava/util/List;

    return-object v0
.end method

.method final a(JJ)V
    .locals 18

    move-object/from16 v1, p0

    .line 55
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 56
    iget-object v9, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a:Landroid/app/usage/NetworkStatsManager;

    iget-object v10, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->b:Landroid/net/NetworkTemplate;

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(Landroid/net/NetworkTemplate;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v9

    .line 58
    invoke-static {v9}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a(Landroid/app/usage/NetworkStats;)J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-lez v11, :cond_0

    add-long/2addr v4, v9

    .line 61
    iget-boolean v9, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->f:Z

    if-eqz v9, :cond_0

    .line 3102
    iget-object v9, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a:Landroid/app/usage/NetworkStatsManager;

    iget-object v10, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->b:Landroid/net/NetworkTemplate;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v8

    .line 3104
    invoke-static {v8}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a(Landroid/app/usage/NetworkStats;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 67
    new-instance v0, Lcom/android/settingslib/net/e$a;

    invoke-direct {v0}, Lcom/android/settingslib/net/e$a;-><init>()V

    move-wide/from16 v2, p1

    .line 68
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/net/e$a;->a(J)Lcom/android/settingslib/net/d$a;

    move-result-object v2

    move-wide/from16 v8, p3

    .line 69
    invoke-virtual {v2, v8, v9}, Lcom/android/settingslib/net/d$a;->b(J)Lcom/android/settingslib/net/d$a;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v4, v5}, Lcom/android/settingslib/net/d$a;->c(J)Lcom/android/settingslib/net/d$a;

    .line 71
    iget-boolean v2, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->f:Z

    if-eqz v2, :cond_2

    sub-long/2addr v4, v6

    .line 4056
    iget-object v2, v0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    .line 5024
    iput-wide v4, v2, Lcom/android/settingslib/net/e;->a:J

    .line 5056
    iget-object v2, v0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    .line 6024
    iput-wide v6, v2, Lcom/android/settingslib/net/e;->b:J

    .line 75
    :cond_2
    iget-object v2, v1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->d:Ljava/util/List;

    .line 7056
    iget-object v0, v0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    .line 75
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v2, "NetworkDataForUidLoader"

    const-string v3, "Exception querying network detail."

    .line 78
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
