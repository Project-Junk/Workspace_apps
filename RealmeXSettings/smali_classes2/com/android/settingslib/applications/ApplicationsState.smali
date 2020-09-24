.class public final Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$b;,
        Lcom/android/settingslib/applications/ApplicationsState$a;,
        Lcom/android/settingslib/applications/ApplicationsState$f;,
        Lcom/android/settingslib/applications/ApplicationsState$e;,
        Lcom/android/settingslib/applications/ApplicationsState$c;,
        Lcom/android/settingslib/applications/ApplicationsState$d;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final G:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final H:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final I:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final J:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final K:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final L:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final M:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final N:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final O:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final P:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final Q:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final R:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final S:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final T:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final U:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final V:Lcom/android/settingslib/applications/ApplicationsState$b;

.field public static final W:Lcom/android/settingslib/applications/ApplicationsState$b;

.field private static final X:Ljava/lang/Object;

.field private static final Y:Ljava/util/regex/Pattern;

.field static a:Lcom/android/settingslib/applications/ApplicationsState;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final A:Lcom/android/settingslib/applications/ApplicationsState$c;

.field final B:Lcom/android/settingslib/applications/ApplicationsState$d;

.field private Z:Lcom/android/settingslib/applications/c;

.field final b:Landroid/content/Context;

.field final c:Landroid/content/pm/PackageManager;

.field final d:Landroid/util/IconDrawableFactory;

.field final e:Landroid/content/pm/IPackageManager;

.field final f:Landroid/os/UserManager;

.field final g:Landroid/app/usage/StorageStatsManager;

.field final h:I

.field final i:I

.field j:Lcom/android/settingslib/applications/ApplicationsState$e;

.field k:Z

.field l:Z

.field m:Z

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;>;"
        }
    .end annotation
.end field

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field s:J

.field t:Ljava/util/UUID;

.field u:Ljava/lang/String;

.field v:I

.field w:Z

.field final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;>;"
        }
    .end annotation
.end field

.field final z:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->X:Ljava/lang/Object;

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->Y:Ljava/util/regex/Pattern;

    .line 1626
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->C:Ljava/util/Comparator;

    .line 1647
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->D:Ljava/util/Comparator;

    .line 1657
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->E:Ljava/util/Comparator;

    .line 1667
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->F:Ljava/util/Comparator;

    .line 1687
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->G:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1701
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->H:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1714
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->I:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1731
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->J:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1756
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->K:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1770
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->L:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1786
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->M:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1797
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->N:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1808
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->O:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1819
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->P:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1830
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->Q:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1843
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->R:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1873
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->S:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1934
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->T:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1949
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->U:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1964
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->V:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1980
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->W:Lcom/android/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 7

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->o:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/settingslib/applications/c;

    invoke-direct {v0}, Lcom/android/settingslib/applications/c;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->Z:Lcom/android/settingslib/applications/c;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    const-wide/16 v0, 0x1

    .line 137
    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->s:J

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->x:Ljava/util/HashMap;

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    .line 150
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState$d;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    .line 192
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    .line 193
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->c:Landroid/content/pm/PackageManager;

    .line 194
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->d:Landroid/util/IconDrawableFactory;

    .line 195
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->e:Landroid/content/pm/IPackageManager;

    .line 196
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->f:Landroid/os/UserManager;

    .line 197
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->g:Landroid/app/usage/StorageStatsManager;

    .line 198
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->f:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p1, v3

    .line 199
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, 0xa

    const-string v3, "ApplicationsState.Loader"

    invoke-direct {p1, v3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->z:Landroid/os/HandlerThread;

    .line 204
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->z:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$c;

    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->z:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/applications/ApplicationsState$c;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    const p1, 0x408200

    .line 208
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->h:I

    const p1, 0x8200

    .line 211
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->i:I

    .line 214
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 216
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->x:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter p1

    .line 235
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 238
    :catch_0
    :goto_2
    :try_start_1
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method static synthetic a(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 2723
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method static synthetic a(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$a;
    .locals 7

    .line 2693
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2694
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-nez v1, :cond_1

    .line 2699
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2708
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$a;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->s:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->s:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$a;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 2709
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2711
    :cond_1
    iget-object p0, v1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eq p0, p1, :cond_2

    .line 2712
    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static a(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    .line 101
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->a(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 106
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->X:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->a:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->a:Lcom/android/settingslib/applications/ApplicationsState;

    .line 110
    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->a:Lcom/android/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2741
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 3

    .line 4658
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->f:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 4659
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4660
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4661
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4662
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    if-eqz p1, :cond_0

    .line 4666
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->b()V

    .line 4667
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->a()V

    .line 4669
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4670
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 4672
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method static synthetic a(II)Z
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->b(II)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 372
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 376
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 381
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v4, 0x800000

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 383
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    if-nez v6, :cond_3

    .line 387
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_3
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v5, v4}, Lcom/android/settingslib/applications/ApplicationsState;->b(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 397
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState;->b(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_6

    .line 403
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method static synthetic b(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 3732
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method static synthetic b(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 4

    .line 4677
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4678
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 4680
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$a;

    .line 4681
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4682
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4684
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4685
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4686
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 4689
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private d(Ljava/lang/String;I)I
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 558
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 559
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method final a()V
    .locals 8

    .line 258
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    .line 262
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->j:Lcom/android/settingslib/applications/ApplicationsState$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 263
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$e;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$e;-><init>(Lcom/android/settingslib/applications/ApplicationsState;B)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->j:Lcom/android/settingslib/applications/ApplicationsState$e;

    .line 264
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->j:Lcom/android/settingslib/applications/ApplicationsState$e;

    .line 2409
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 2410
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 2411
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    .line 2412
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2413
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2415
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 2416
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 2417
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2418
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2420
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_ADDED"

    .line 2421
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_REMOVED"

    .line 2422
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2423
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    .line 268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    .line 269
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->f:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 272
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_2

    .line 273
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    :cond_2
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->e:Landroid/content/pm/IPackageManager;

    .line 278
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->h:I

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->i:I

    :goto_1
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 277
    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 280
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ApplicationsState"

    const-string v6, "Error during doResumeIfNeededLocked"

    .line 282
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 286
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->Z:Lcom/android/settingslib/applications/c;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/c;->a(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->c()V

    goto :goto_3

    :cond_5
    move v3, v2

    .line 291
    :goto_2
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 292
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$a;

    iput-boolean v0, v4, Lcom/android/settingslib/applications/ApplicationsState$a;->p:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 296
    :cond_6
    :goto_3
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->l:Z

    .line 297
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    .line 298
    :goto_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 299
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 302
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_8

    .line 303
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 304
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 308
    :cond_7
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->l:Z

    .line 310
    :cond_8
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 311
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v4

    goto :goto_5

    .line 314
    :cond_9
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    if-nez v4, :cond_a

    invoke-static {v3}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 315
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    .line 318
    :cond_a
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 319
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v4, :cond_b

    .line 321
    iput-object v3, v4, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    :cond_b
    :goto_5
    add-int/2addr v2, v0

    goto :goto_4

    .line 325
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->c()V

    :cond_d
    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$c;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 331
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method

.method final a(Ljava/lang/String;I)V
    .locals 3

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    if-nez v1, :cond_0

    .line 576
    monitor-exit v0

    return-void

    .line 578
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->d(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 581
    monitor-exit v0

    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->e:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->f:Landroid/os/UserManager;

    .line 584
    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->h:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->i:I

    .line 583
    :goto_0
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    .line 587
    monitor-exit v0

    return-void

    .line 589
    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 590
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 592
    monitor-exit v0

    return-void

    .line 594
    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->l:Z

    .line 596
    :cond_5
    invoke-static {p1}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 597
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    .line 599
    :cond_6
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$c;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 601
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    .line 603
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 604
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 607
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 433
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final b()V
    .locals 2

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    .line 454
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->j:Lcom/android/settingslib/applications/ApplicationsState$e;

    if-eqz v0, :cond_0

    .line 2427
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->j:Lcom/android/settingslib/applications/ApplicationsState$e;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->d(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 618
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v2, :cond_0

    .line 621
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 625
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 626
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 627
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->l:Z

    .line 628
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 629
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 630
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->l:Z

    .line 635
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 636
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    .line 637
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 638
    invoke-static {p2}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 639
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->m:Z

    .line 644
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 645
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 649
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 0

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)V

    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/lang/String;I)V

    return-void
.end method
