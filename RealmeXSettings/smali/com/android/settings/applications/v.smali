.class public final Lcom/android/settings/applications/v;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/v$a;
    }
.end annotation


# static fields
.field static a:Lcom/android/internal/app/procstats/ProcessStats;

.field static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/android/internal/app/procstats/ProcessStats;

.field c:J

.field public d:Lcom/android/settings/applications/v$a;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/Context;

.field private i:J

.field private j:Lcom/android/internal/app/procstats/IProcessStats;

.field private k:Z

.field private l:[I

.field private m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Lcom/android/settings/applications/v$1;

    invoke-direct {v0}, Lcom/android/settings/applications/v$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    const-string p1, "procstats"

    .line 80
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/v;->j:Lcom/android/internal/app/procstats/IProcessStats;

    .line 81
    sget-object p1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object p1, p0, Lcom/android/settings/applications/v;->l:[I

    .line 82
    sget-object p1, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object p1, p0, Lcom/android/settings/applications/v;->m:[I

    if-eqz p2, :cond_0

    .line 84
    sget-object p1, Lcom/android/settings/applications/v;->a:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p1, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    :cond_0
    return-void
.end method

.method private a(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/x;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 232
    new-instance v2, Lcom/android/settings/applications/x;

    iget-wide v3, v0, Lcom/android/settings/applications/v;->i:J

    const-string v5, "os"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/settings/applications/x;-><init>(Ljava/lang/String;J)V

    .line 234
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 235
    new-instance v3, Lcom/android/settings/applications/w;

    iget-object v4, v0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    const v7, 0x7f121126

    .line 236
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lcom/android/settings/applications/v;->i:J

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v14, v0, Lcom/android/settings/applications/v;->i:J

    long-to-double v12, v14

    div-double/2addr v7, v12

    double-to-long v12, v7

    const-string v8, "os"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lcom/android/settings/applications/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 238
    iget-object v8, v0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    iget-object v9, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v12, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    iget-boolean v13, v0, Lcom/android/settings/applications/v;->k:Z

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/applications/w;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 239
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/x;->a(Lcom/android/settings/applications/w;)V

    .line 241
    :cond_0
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 242
    new-instance v3, Lcom/android/settings/applications/w;

    iget-object v4, v0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    const v5, 0x7f121124

    .line 243
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/settings/applications/v;->i:J

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v11, v0, Lcom/android/settings/applications/v;->i:J

    long-to-double v9, v11

    div-double/2addr v4, v9

    double-to-long v9, v4

    const-string v5, "os"

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/applications/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 245
    iget-object v5, v0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v9, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    iget-boolean v10, v0, Lcom/android/settings/applications/v;->k:Z

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/applications/w;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 246
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/x;->a(Lcom/android/settings/applications/w;)V

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v1, p4, v3

    if-lez v1, :cond_2

    .line 258
    new-instance v1, Lcom/android/settings/applications/w;

    iget-object v3, v0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    const v4, 0x7f121123

    .line 259
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v10, v0, Lcom/android/settings/applications/v;->i:J

    const-wide/16 v3, 0x400

    div-long v8, p4, v3

    const-string v4, "os"

    move-object v3, v1

    move-wide v6, v10

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/applications/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 261
    iget-object v4, v0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v8, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    iget-boolean v9, v0, Lcom/android/settings/applications/v;->k:Z

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/applications/w;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 262
    invoke-virtual {v2, v1}, Lcom/android/settings/applications/x;->a(Lcom/android/settings/applications/w;)V

    :cond_2
    return-object v2
.end method

.method private a(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/w;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 273
    iget-object v3, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "/"

    const-string v7, "ProcStatsManager"

    if-ge v5, v3, :cond_6

    .line 274
    iget-object v8, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 275
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    const/4 v9, 0x0

    .line 276
    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 277
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    const/4 v11, 0x0

    .line 278
    :goto_2
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 279
    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const/4 v13, 0x0

    .line 280
    :goto_3
    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 281
    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 282
    iget-object v15, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v15, v15, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v3

    .line 283
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v3

    .line 282
    invoke-virtual {v15, v4, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v3, :cond_0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No process found for pkg "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " proc name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 289
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v14

    invoke-virtual {v2, v4, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/w;

    if-nez v4, :cond_1

    .line 291
    new-instance v4, Lcom/android/settings/applications/w;

    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/android/settings/applications/v;->k:Z

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, v15

    invoke-direct/range {v17 .. v22}, Lcom/android/settings/applications/w;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    .line 293
    iget-wide v14, v4, Lcom/android/settings/applications/w;->m:D

    const-wide/16 v17, 0x0

    cmpl-double v14, v14, v17

    if-lez v14, :cond_2

    .line 300
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v3

    invoke-virtual {v2, v14, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 304
    :cond_1
    iget-object v3, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 1119
    iget-object v4, v4, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    goto/16 :goto_3

    :cond_3
    move/from16 v16, v3

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_4
    move/from16 v16, v3

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v16, v3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 314
    :cond_6
    iget-object v3, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_d

    .line 315
    iget-object v5, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 316
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/4 v8, 0x0

    .line 317
    :goto_6
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 318
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    const/4 v10, 0x0

    .line 319
    :goto_7
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 320
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 321
    iget-object v12, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_a

    .line 322
    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ServiceState;

    .line 323
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 324
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    .line 325
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 324
    invoke-virtual {v2, v15, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/w;

    if-eqz v0, :cond_8

    .line 1264
    iget-object v15, v0, Lcom/android/settings/applications/w;->o:Landroid/util/ArrayMap;

    move-object/from16 v16, v2

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    iget-object v0, v0, Lcom/android/settings/applications/w;->o:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    :cond_7
    new-instance v0, Lcom/android/settings/applications/w$a;

    invoke-direct {v0, v14}, Lcom/android/settings/applications/w$a;-><init>(Lcom/android/internal/app/procstats/ServiceState;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    move-object/from16 v16, v2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No process "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_9
    move-object/from16 v16, v2

    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_8

    :cond_a
    move-object/from16 v16, v2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_b
    move-object/from16 v16, v2

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_c
    move-object/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_d
    return-object v1
.end method

.method private a(D)V
    .locals 26

    move-object/from16 v0, p0

    .line 196
    iget-wide v1, v0, Lcom/android/settings/applications/v;->i:J

    long-to-double v1, v1

    div-double v1, p1, v1

    double-to-long v1, v1

    .line 198
    iget-object v3, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 199
    iget-object v8, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/x;

    .line 200
    iget-object v9, v8, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-ltz v9, :cond_0

    .line 201
    iget-object v10, v8, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/w;

    .line 202
    iget-wide v10, v10, Lcom/android/settings/applications/w;->j:J

    add-long/2addr v6, v10

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_5

    cmp-long v8, v6, v4

    if-lez v8, :cond_5

    .line 206
    iget-object v8, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/x;

    .line 209
    iget-object v9, v8, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-wide v10, v4

    move-wide v15, v10

    :goto_3
    if-ltz v9, :cond_3

    .line 210
    iget-object v12, v8, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/w;

    .line 211
    iget-wide v13, v12, Lcom/android/settings/applications/w;->j:J

    add-long/2addr v10, v13

    .line 212
    iget-wide v13, v12, Lcom/android/settings/applications/w;->j:J

    cmp-long v13, v13, v15

    if-lez v13, :cond_2

    .line 213
    iget-wide v12, v12, Lcom/android/settings/applications/w;->j:J

    move-wide v15, v12

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_3
    mul-long v12, v1, v10

    .line 216
    div-long v17, v12, v6

    cmp-long v9, v17, v4

    if-lez v9, :cond_4

    sub-long v1, v1, v17

    sub-long/2addr v6, v10

    .line 220
    new-instance v9, Lcom/android/settings/applications/w;

    iget-object v13, v8, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    const v11, 0x7f121127

    .line 221
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v10, v0, Lcom/android/settings/applications/v;->i:J

    move-object v12, v9

    move-wide/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lcom/android/settings/applications/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 223
    iget-object v10, v0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    iget-object v11, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    iget-boolean v12, v0, Lcom/android/settings/applications/v;->k:Z

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v25, v12

    invoke-virtual/range {v19 .. v25}, Lcom/android/settings/applications/w;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 224
    invoke-virtual {v8, v9}, Lcom/android/settings/applications/x;->a(Lcom/android/settings/applications/w;)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/w;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")V"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 178
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/w;

    .line 179
    iget-object v4, p0, Lcom/android/settings/applications/v;->g:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v8, Lcom/android/settings/applications/v;->f:Ljava/util/Comparator;

    iget-boolean v9, p0, Lcom/android/settings/applications/v;->k:Z

    move-object v3, v2

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/applications/w;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 180
    iget-object v3, v2, Lcom/android/settings/applications/w;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/x;

    if-nez v3, :cond_0

    .line 182
    new-instance v3, Lcom/android/settings/applications/x;

    iget-object v4, v2, Lcom/android/settings/applications/w;->n:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/settings/applications/v;->i:J

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings/applications/x;-><init>(Ljava/lang/String;J)V

    .line 183
    iget-object v4, v2, Lcom/android/settings/applications/w;->n:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/settings/applications/x;->a(Lcom/android/settings/applications/w;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    const-string v0, "ProcStatsManager"

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/v;->j:Lcom/android/internal/app/procstats/IProcessStats;

    iget-wide v2, p0, Lcom/android/settings/applications/v;->c:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 347
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v2, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    .line 348
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure reading process stats: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception v1

    const-string v2, "RemoteException:"

    .line 358
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x4

    :cond_1
    return v0
.end method

.method public final a(J)V
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/android/settings/applications/v;->c:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 127
    iput-wide p1, p0, Lcom/android/settings/applications/v;->c:J

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/applications/v;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 11

    .line 142
    invoke-direct {p0}, Lcom/android/settings/applications/v;->c()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v0, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-object v0, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide v7, v9

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/v;->i:J

    .line 152
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/v;->l:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v0, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 156
    new-instance v1, Lcom/android/settings/applications/v$a;

    iget-object v3, p0, Lcom/android/settings/applications/v;->h:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/settings/applications/v;->i:J

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/v$a;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JB)V

    iput-object v1, p0, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 158
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/v;->l:[I

    iget-object v4, p0, Lcom/android/settings/applications/v;->m:[I

    invoke-direct {v3, v1, v2, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 160
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/v;->l:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v4, v1, v2, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 163
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/v;->a(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/applications/v;->a(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V

    .line 164
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v1, :cond_0

    .line 165
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/v;->a(D)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    iget-wide v6, v1, Lcom/android/settings/applications/v$a;->d:J

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/v;->a(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/x;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
