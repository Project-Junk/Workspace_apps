.class public final Lcom/android/settings/applications/y;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/y$h;,
        Lcom/android/settings/applications/y$d;,
        Lcom/android/settings/applications/y$f;,
        Lcom/android/settings/applications/y$g;,
        Lcom/android/settings/applications/y$c;,
        Lcom/android/settings/applications/y$j;,
        Lcom/android/settings/applications/y$e;,
        Lcom/android/settings/applications/y$i;,
        Lcom/android/settings/applications/y$b;,
        Lcom/android/settings/applications/y$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Object;

.field static b:Lcom/android/settings/applications/y;


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$c;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field E:I

.field F:J

.field G:I

.field H:J

.field I:I

.field J:J

.field final K:Landroid/os/HandlerThread;

.field final L:Lcom/android/settings/applications/y$b;

.field final M:Landroid/os/Handler;

.field private final N:Lcom/android/settings/applications/y$i;

.field final c:Landroid/content/Context;

.field final d:Landroid/app/ActivityManager;

.field final e:Landroid/content/pm/PackageManager;

.field final f:Landroid/os/UserManager;

.field final g:I

.field final h:Z

.field i:Lcom/android/settings/applications/y$e;

.field final j:Lcom/android/settingslib/applications/c;

.field final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/y$f;",
            ">;>;"
        }
    .end annotation
.end field

.field final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final m:Lcom/android/settings/applications/y$h;

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$a;",
            ">;"
        }
    .end annotation
.end field

.field u:I

.field final v:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field final w:Ljava/lang/Object;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/y;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settingslib/applications/c;

    invoke-direct {v0}, Lcom/android/settingslib/applications/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->j:Lcom/android/settingslib/applications/c;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Lcom/android/settings/applications/y$h;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/y$h;-><init>(Lcom/android/settings/applications/y;)V

    iput-object v0, p0, Lcom/android/settings/applications/y;->m:Lcom/android/settings/applications/y$h;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->r:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->s:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/settings/applications/y;->u:I

    .line 143
    new-instance v1, Lcom/android/settings/applications/y$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/y$1;-><init>(Lcom/android/settings/applications/y;)V

    iput-object v1, p0, Lcom/android/settings/applications/y;->v:Ljava/util/Comparator;

    .line 204
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/y;->A:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/y;->B:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/y;->D:Ljava/util/ArrayList;

    .line 255
    new-instance v1, Lcom/android/settings/applications/y$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/y$2;-><init>(Lcom/android/settings/applications/y;)V

    iput-object v1, p0, Lcom/android/settings/applications/y;->M:Landroid/os/Handler;

    .line 320
    new-instance v1, Lcom/android/settings/applications/y$i;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/y$i;-><init>(Lcom/android/settings/applications/y;B)V

    iput-object v1, p0, Lcom/android/settings/applications/y;->N:Lcom/android/settings/applications/y$i;

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    .line 780
    iget-object p1, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/applications/y;->d:Landroid/app/ActivityManager;

    .line 781
    iget-object p1, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y;->e:Landroid/content/pm/PackageManager;

    .line 782
    iget-object p1, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/y;->f:Landroid/os/UserManager;

    .line 783
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/y;->g:I

    .line 784
    iget-object p1, p0, Lcom/android/settings/applications/y;->f:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/applications/y;->g:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 785
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/applications/y;->h:Z

    .line 786
    iput-boolean v0, p0, Lcom/android/settings/applications/y;->x:Z

    .line 787
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RunningState:Background"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/y;->K:Landroid/os/HandlerThread;

    .line 788
    iget-object p1, p0, Lcom/android/settings/applications/y;->K:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 789
    new-instance p1, Lcom/android/settings/applications/y$b;

    iget-object v0, p0, Lcom/android/settings/applications/y;->K:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/y$b;-><init>(Lcom/android/settings/applications/y;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    .line 790
    iget-object v2, p0, Lcom/android/settings/applications/y;->N:Lcom/android/settings/applications/y$i;

    iget-object v1, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    .line 2312
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_STOPPED"

    .line 2313
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_STARTED"

    .line 2314
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    .line 2315
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2316
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/applications/y;
    .locals 2

    .line 770
    sget-object v0, Lcom/android/settings/applications/y;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/y;->b:Lcom/android/settings/applications/y;

    if-nez v1, :cond_0

    .line 772
    new-instance v1, Lcom/android/settings/applications/y;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/y;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/y;->b:Lcom/android/settings/applications/y;

    .line 774
    :cond_0
    sget-object p0, Lcom/android/settings/applications/y;->b:Lcom/android/settings/applications/y;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 775
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p2, :cond_1

    .line 753
    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x2e

    .line 762
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 764
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/y$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$d;",
            ">;",
            "Lcom/android/settings/applications/y$d;",
            ")V"
        }
    .end annotation

    .line 870
    iget v0, p4, Lcom/android/settings/applications/y$d;->b:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/y$d;

    if-eqz v0, :cond_1

    .line 871
    iget v1, v0, Lcom/android/settings/applications/y$d;->g:I

    iget v2, p0, Lcom/android/settings/applications/y;->u:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 873
    iget-object v1, p0, Lcom/android/settings/applications/y;->f:Landroid/os/UserManager;

    iget v2, p4, Lcom/android/settings/applications/y$d;->b:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 878
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/y;->h:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 882
    new-instance v0, Lcom/android/settings/applications/y$d;

    iget v2, p4, Lcom/android/settings/applications/y$d;->b:I

    invoke-direct {v0, v2}, Lcom/android/settings/applications/y$d;-><init>(I)V

    .line 883
    iget v2, p4, Lcom/android/settings/applications/y$d;->b:I

    invoke-virtual {p3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 885
    :cond_4
    iget-object p3, v0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 887
    :goto_2
    iget p3, p0, Lcom/android/settings/applications/y;->u:I

    iput p3, v0, Lcom/android/settings/applications/y$d;->g:I

    .line 888
    new-instance p3, Lcom/android/settings/applications/y$j;

    invoke-direct {p3}, Lcom/android/settings/applications/y$j;-><init>()V

    iput-object p3, v0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    .line 889
    iget-object p3, v0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    iput-object v1, p3, Lcom/android/settings/applications/y$j;->a:Landroid/content/pm/UserInfo;

    .line 890
    iget-object p3, v0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    iget-object v2, p0, Lcom/android/settings/applications/y;->f:Landroid/os/UserManager;

    invoke-static {p1, v2, v1}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/applications/y$j;->c:Landroid/graphics/drawable/Drawable;

    .line 891
    iget-object p3, v0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    invoke-static {p1, v1}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/applications/y$j;->b:Ljava/lang/String;

    .line 892
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_5
    iget-object p1, v0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/y;)V
    .locals 1

    .line 2860
    iget-object v0, p0, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2861
    iget-object v0, p0, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2862
    iget-object v0, p0, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2863
    iget-object v0, p0, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2864
    iget-object v0, p0, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2865
    iget-object p0, p0, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    .line 846
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    .line 849
    :cond_0
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x15e

    if-ge v0, v2, :cond_1

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 900
    iget v3, v1, Lcom/android/settings/applications/y;->u:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/settings/applications/y;->u:I

    const/16 v3, 0x64

    move-object/from16 v5, p2

    .line 907
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 908
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    .line 910
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 914
    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v10, :cond_1

    iget v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v10, :cond_1

    .line 915
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 922
    :cond_1
    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2

    .line 924
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_2
    add-int/2addr v7, v4

    goto :goto_1

    .line 934
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 935
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 936
    :goto_3
    iget-object v9, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_5

    .line 938
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 939
    iget-object v11, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v13, Lcom/android/settings/applications/y$a;

    invoke-direct {v13, v10}, Lcom/android/settings/applications/y$a;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-wide/16 v10, 0x0

    if-ge v9, v8, :cond_7

    .line 945
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 946
    iget-wide v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_6

    iget v10, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v10, :cond_6

    .line 947
    iget-object v10, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    iget v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/y$a;

    if-eqz v10, :cond_6

    .line 949
    iput-boolean v4, v10, Lcom/android/settings/applications/y$a;->b:Z

    .line 950
    iget-boolean v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v11, :cond_6

    .line 951
    iput-boolean v4, v10, Lcom/android/settings/applications/y$a;->c:Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v9, v8, :cond_15

    .line 959
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 966
    iget-wide v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_c

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v14, :cond_c

    .line 967
    iget-object v14, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/y$a;

    if-eqz v14, :cond_c

    .line 968
    iget-boolean v15, v14, Lcom/android/settings/applications/y$a;->c:Z

    if-nez v15, :cond_c

    .line 974
    iget-object v15, v14, Lcom/android/settings/applications/y$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x12c

    if-ge v15, v6, :cond_c

    .line 979
    iget-object v6, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    iget-object v14, v14, Lcom/android/settings/applications/y$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/y$a;

    :goto_7
    if-eqz v6, :cond_a

    .line 981
    iget-boolean v14, v6, Lcom/android/settings/applications/y$a;->b:Z

    if-nez v14, :cond_9

    iget-object v14, v6, Lcom/android/settings/applications/y$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v14}, Lcom/android/settings/applications/y;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_8

    .line 985
    :cond_8
    iget-object v14, v1, Lcom/android/settings/applications/y;->t:Landroid/util/SparseArray;

    iget-object v6, v6, Lcom/android/settings/applications/y$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/y$a;

    goto :goto_7

    :cond_9
    :goto_8
    move v6, v4

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 p2, v5

    goto/16 :goto_d

    .line 994
    :cond_c
    :goto_a
    iget-object v6, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_d

    .line 996
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 997
    iget-object v14, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 999
    :cond_d
    iget-object v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/y$f;

    if-nez v14, :cond_e

    .line 1002
    new-instance v14, Lcom/android/settings/applications/y$f;

    iget v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v0, v12, v15}, Lcom/android/settings/applications/y$f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1003
    iget-object v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v4

    .line 1006
    :cond_e
    iget v6, v14, Lcom/android/settings/applications/y$f;->g:I

    iget v15, v1, Lcom/android/settings/applications/y;->u:I

    if-eq v6, v15, :cond_14

    move-object/from16 p2, v5

    .line 1007
    iget-wide v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_f

    iget v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    .line 1008
    :goto_b
    iget v5, v14, Lcom/android/settings/applications/y$f;->r:I

    if-eq v4, v5, :cond_13

    .line 1010
    iget v5, v14, Lcom/android/settings/applications/y$f;->r:I

    if-eq v5, v4, :cond_12

    .line 1011
    iget v5, v14, Lcom/android/settings/applications/y$f;->r:I

    if-eqz v5, :cond_10

    .line 1012
    iget-object v5, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    iget v12, v14, Lcom/android/settings/applications/y$f;->r:I

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    if-eqz v4, :cond_11

    .line 1015
    iget-object v5, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1017
    :cond_11
    iput v4, v14, Lcom/android/settings/applications/y$f;->r:I

    :cond_12
    const/4 v12, 0x1

    .line 1020
    :cond_13
    iget-object v4, v14, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1021
    iget v4, v1, Lcom/android/settings/applications/y;->u:I

    iput v4, v14, Lcom/android/settings/applications/y$f;->g:I

    goto :goto_c

    :cond_14
    move-object/from16 p2, v5

    .line 1023
    :goto_c
    invoke-virtual {v14, v0, v13}, Lcom/android/settings/applications/y$f;->a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int/2addr v12, v4

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p2

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_15
    move-object/from16 p2, v5

    move v4, v12

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v7, :cond_1a

    move-object/from16 v5, p2

    .line 1029
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1030
    iget-object v9, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/y$f;

    if-nez v9, :cond_17

    .line 1035
    iget-object v9, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/y$f;

    if-nez v9, :cond_16

    .line 1038
    new-instance v4, Lcom/android/settings/applications/y$f;

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v4, v0, v9, v12}, Lcom/android/settings/applications/y$f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1039
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v4, Lcom/android/settings/applications/y$f;->r:I

    .line 1040
    iget-object v9, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v4

    const/4 v4, 0x1

    .line 1042
    :cond_16
    iget-object v12, v9, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1045
    :cond_17
    invoke-static {v8}, Lcom/android/settings/applications/y;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1046
    iget-object v12, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 1048
    iget-object v4, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 1050
    :cond_18
    iget v12, v1, Lcom/android/settings/applications/y;->u:I

    iput v12, v9, Lcom/android/settings/applications/y$f;->g:I

    const/4 v6, 0x1

    .line 1051
    iput-boolean v6, v9, Lcom/android/settings/applications/y$f;->x:Z

    .line 1052
    invoke-virtual {v9, v2}, Lcom/android/settings/applications/y$f;->a(Landroid/content/pm/PackageManager;)V

    goto :goto_f

    :cond_19
    const/4 v12, 0x0

    .line 1054
    iput-boolean v12, v9, Lcom/android/settings/applications/y$f;->x:Z

    .line 1057
    :goto_f
    iget v12, v1, Lcom/android/settings/applications/y;->u:I

    iput v12, v9, Lcom/android/settings/applications/y$f;->u:I

    .line 1058
    iput-object v8, v9, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 p2, v5

    goto :goto_e

    .line 1063
    :cond_1a
    iget-object v3, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_10
    const/4 v7, 0x0

    if-ge v3, v4, :cond_1f

    .line 1065
    iget-object v8, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$f;

    .line 1066
    iget v9, v8, Lcom/android/settings/applications/y$f;->u:I

    iget v12, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v9, v12, :cond_1e

    .line 1067
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v9, :cond_1c

    .line 1069
    iget-object v7, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/y$f;

    if-nez v7, :cond_1b

    .line 1071
    iget-object v7, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/y$f;

    :cond_1b
    if-eqz v7, :cond_1d

    .line 1074
    iget-object v7, v7, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    iget v9, v8, Lcom/android/settings/applications/y$f;->r:I

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    .line 1080
    :cond_1c
    iput-object v7, v8, Lcom/android/settings/applications/y$f;->s:Lcom/android/settings/applications/y$f;

    :cond_1d
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1085
    :cond_1e
    iget-object v5, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto :goto_10

    .line 1091
    :cond_1f
    iget-object v3, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v4, :cond_22

    .line 1093
    iget-object v8, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$f;

    .line 1094
    iget-boolean v9, v8, Lcom/android/settings/applications/y$f;->x:Z

    if-eqz v9, :cond_20

    iget-object v9, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    iget v8, v8, Lcom/android/settings/applications/y$f;->r:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_21

    .line 1096
    :cond_20
    iget-object v5, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    :cond_21
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_12

    .line 1105
    :cond_22
    iget-object v3, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_24

    .line 1107
    iget-object v8, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$f;

    .line 1108
    iget v9, v8, Lcom/android/settings/applications/y$f;->g:I

    iget v12, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v9, v12, :cond_23

    .line 1109
    invoke-virtual {v8, v0, v2, v12}, Lcom/android/settings/applications/y$f;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    or-int/2addr v5, v8

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_24
    move-object v4, v7

    const/4 v3, 0x0

    .line 1115
    :goto_14
    iget-object v8, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2d

    .line 1116
    iget-object v8, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1117
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1118
    :cond_25
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1119
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/y$f;

    .line 1120
    iget v13, v12, Lcom/android/settings/applications/y$f;->g:I

    iget v14, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v13, v14, :cond_28

    .line 1121
    invoke-virtual {v12, v2}, Lcom/android/settings/applications/y$f;->a(Landroid/content/pm/PackageManager;)V

    .line 1122
    iget v13, v12, Lcom/android/settings/applications/y$f;->r:I

    if-nez v13, :cond_26

    .line 1125
    iget-object v13, v12, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 1141
    :cond_26
    iget-object v12, v12, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1142
    :cond_27
    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 1143
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/y$g;

    .line 1144
    iget v13, v13, Lcom/android/settings/applications/y$g;->g:I

    iget v14, v1, Lcom/android/settings/applications/y;->u:I

    if-eq v13, v14, :cond_27

    .line 1146
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    const/4 v5, 0x1

    goto :goto_16

    .line 1129
    :cond_28
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1130
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_2a

    if-nez v4, :cond_29

    .line 1132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    :cond_29
    iget-object v5, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_2a
    iget v5, v12, Lcom/android/settings/applications/y$f;->r:I

    if-eqz v5, :cond_2b

    .line 1137
    iget-object v5, v1, Lcom/android/settings/applications/y;->l:Landroid/util/SparseArray;

    iget v12, v12, Lcom/android/settings/applications/y$f;->r:I

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->remove(I)V

    :cond_2b
    const/4 v5, 0x1

    goto :goto_15

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    :cond_2d
    if-eqz v4, :cond_2e

    const/4 v2, 0x0

    .line 1153
    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1154
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1155
    iget-object v8, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    if-eqz v5, :cond_40

    .line 1161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1162
    :goto_18
    iget-object v4, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 1163
    iget-object v4, v1, Lcom/android/settings/applications/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$f;

    const/4 v9, 0x0

    .line 1164
    iput-boolean v9, v8, Lcom/android/settings/applications/y$f;->y:Z

    const/4 v6, 0x1

    .line 1165
    iput-boolean v6, v8, Lcom/android/settings/applications/y$f;->z:Z

    const-wide v12, 0x7fffffffffffffffL

    .line 1166
    iput-wide v12, v8, Lcom/android/settings/applications/y$f;->A:J

    .line 1167
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/y$g;

    .line 1168
    iget-object v13, v12, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_2f

    iget-object v13, v12, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v13, v6

    if-eqz v13, :cond_2f

    .line 1171
    iput-boolean v6, v8, Lcom/android/settings/applications/y$f;->y:Z

    .line 1173
    :cond_2f
    iget-object v13, v12, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v13, :cond_30

    iget-object v13, v12, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v13, :cond_30

    const/4 v13, 0x0

    .line 1175
    iput-boolean v13, v8, Lcom/android/settings/applications/y$f;->z:Z

    .line 1176
    iget-wide v13, v8, Lcom/android/settings/applications/y$f;->A:J

    iget-object v15, v12, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v6, v15, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v6, v13, v6

    if-lez v6, :cond_30

    .line 1177
    iget-object v6, v12, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v6, v8, Lcom/android/settings/applications/y$f;->A:J

    :cond_30
    const/4 v7, 0x0

    goto :goto_1a

    .line 1181
    :cond_31
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_19

    :cond_32
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_18

    .line 1185
    :cond_33
    iget-object v3, v1, Lcom/android/settings/applications/y;->m:Lcom/android/settings/applications/y$h;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    iget-object v6, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    .line 1190
    :goto_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_39

    .line 1191
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/y$f;

    const/4 v8, 0x0

    .line 1192
    iput-boolean v8, v6, Lcom/android/settings/applications/y$f;->l:Z

    .line 1194
    iget-object v8, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1196
    iget-object v9, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v9}, Lcom/android/settings/applications/y$f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1198
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    iget v9, v6, Lcom/android/settings/applications/y$f;->r:I

    if-lez v9, :cond_34

    .line 1200
    iget-object v9, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_34
    iget-object v9, v6, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/y$g;

    .line 1208
    iput-boolean v12, v13, Lcom/android/settings/applications/y$g;->l:Z

    .line 1210
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_1c

    .line 1224
    :cond_35
    new-instance v9, Lcom/android/settings/applications/y$d;

    iget v12, v6, Lcom/android/settings/applications/y$f;->b:I

    invoke-direct {v9, v12}, Lcom/android/settings/applications/y$d;-><init>(I)V

    .line 1225
    iget-object v12, v6, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/y$g;

    .line 1226
    iget-object v14, v9, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    iput-object v9, v13, Lcom/android/settings/applications/y$g;->q:Lcom/android/settings/applications/y$d;

    goto :goto_1d

    .line 1229
    :cond_36
    iput-object v6, v9, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    .line 1230
    iget-object v6, v9, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1231
    :goto_1e
    iget-object v6, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    add-int/lit8 v13, v6, -0x1

    if-ge v8, v13, :cond_37

    .line 1232
    iget-object v12, v9, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_37
    const/4 v8, 0x0

    .line 1236
    invoke-virtual {v9, v0, v8}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;Z)Z

    .line 1237
    iget v8, v9, Lcom/android/settings/applications/y$d;->b:I

    iget v12, v1, Lcom/android/settings/applications/y;->g:I

    if-eq v8, v12, :cond_38

    .line 1238
    iget-object v8, v1, Lcom/android/settings/applications/y;->r:Landroid/util/SparseArray;

    invoke-direct {v1, v0, v4, v8, v9}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/y$d;)V

    goto :goto_1f

    .line 1240
    :cond_38
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1b

    .line 1246
    :cond_39
    iget-object v2, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v2, :cond_3d

    .line 1248
    iget-object v8, v1, Lcom/android/settings/applications/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$f;

    .line 1249
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->s:Lcom/android/settings/applications/y$f;

    if-nez v9, :cond_3c

    iget-object v9, v8, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-gtz v9, :cond_3c

    .line 1250
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    if-nez v9, :cond_3a

    .line 1251
    new-instance v9, Lcom/android/settings/applications/y$d;

    iget v12, v8, Lcom/android/settings/applications/y$f;->b:I

    invoke-direct {v9, v12}, Lcom/android/settings/applications/y$d;-><init>(I)V

    iput-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    .line 1252
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    iput-object v8, v9, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    .line 1254
    :cond_3a
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v12}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;Z)Z

    .line 1255
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    iget v9, v9, Lcom/android/settings/applications/y$d;->b:I

    iget v13, v1, Lcom/android/settings/applications/y;->g:I

    if-eq v9, v13, :cond_3b

    .line 1256
    iget-object v9, v1, Lcom/android/settings/applications/y;->r:Landroid/util/SparseArray;

    iget-object v13, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    invoke-direct {v1, v0, v4, v9, v13}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/y$d;)V

    goto :goto_21

    .line 1259
    :cond_3b
    iget-object v9, v8, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    invoke-virtual {v4, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1261
    :goto_21
    iget-object v9, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1267
    :cond_3d
    iget-object v2, v1, Lcom/android/settings/applications/y;->r:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v2, :cond_3f

    .line 1269
    iget-object v8, v1, Lcom/android/settings/applications/y;->r:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/y$d;

    .line 1270
    iget v9, v8, Lcom/android/settings/applications/y$d;->g:I

    iget v12, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v9, v12, :cond_3e

    const/4 v9, 0x0

    .line 1271
    invoke-virtual {v8, v0, v9}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;Z)Z

    goto :goto_23

    :cond_3e
    const/4 v9, 0x0

    :goto_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_3f
    const/4 v9, 0x0

    .line 1275
    iget-object v2, v1, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 1276
    :try_start_0
    iput-object v3, v1, Lcom/android/settings/applications/y;->A:Ljava/util/ArrayList;

    .line 1277
    iput-object v4, v1, Lcom/android/settings/applications/y;->B:Ljava/util/ArrayList;

    .line 1278
    monitor-exit v2

    goto :goto_24

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_40
    const/4 v9, 0x0

    .line 1283
    :goto_24
    iget-object v2, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1284
    iget-object v2, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/settings/applications/y;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1288
    iget-object v2, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v9

    move v4, v3

    move v7, v4

    move v8, v7

    :goto_25
    const/16 v12, 0xc8

    const/16 v13, 0x190

    if-ge v3, v2, :cond_44

    .line 1290
    iget-object v14, v1, Lcom/android/settings/applications/y;->o:Landroid/util/SparseArray;

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/y$f;

    .line 1291
    iget v15, v14, Lcom/android/settings/applications/y$f;->g:I

    iget v6, v1, Lcom/android/settings/applications/y;->u:I

    if-eq v15, v6, :cond_43

    .line 1294
    iget-object v6, v14, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v13, :cond_41

    add-int/lit8 v7, v7, 0x1

    .line 1297
    iget-object v6, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1298
    :cond_41
    iget-object v6, v14, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-gt v6, v12, :cond_42

    add-int/lit8 v8, v8, 0x1

    .line 1301
    iget-object v6, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1303
    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Unknown non-service process: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v14, Lcom/android/settings/applications/y$f;->q:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " #"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v14, Lcom/android/settings/applications/y$f;->r:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "RunningState"

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_43
    add-int/lit8 v4, v4, 0x1

    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1318
    :cond_44
    :try_start_1
    iget-object v2, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1319
    new-array v3, v2, [I

    move v6, v9

    :goto_27
    if-ge v6, v2, :cond_45

    .line 1321
    iget-object v14, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/y$f;

    iget v14, v14, Lcom/android/settings/applications/y$f;->r:I

    aput v14, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 1323
    :cond_45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1324
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v16, v5

    move v5, v9

    move v6, v5

    move-wide v14, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    const/4 v11, 0x0

    move v10, v6

    .line 1326
    :goto_28
    :try_start_2
    array-length v9, v3

    if-ge v5, v9, :cond_51

    .line 1327
    iget-object v9, v1, Lcom/android/settings/applications/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/y$f;

    .line 1328
    aget-wide v21, v2, v5

    iget v12, v1, Lcom/android/settings/applications/y;->u:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    const-wide/16 v23, 0x400

    move-wide/from16 v25, v14

    mul-long v13, v21, v23

    .line 2553
    :try_start_3
    iput-wide v13, v9, Lcom/android/settings/applications/y$f;->i:J

    .line 2554
    iget v13, v9, Lcom/android/settings/applications/y$f;->g:I

    if-ne v13, v12, :cond_46

    .line 2555
    iget-wide v12, v9, Lcom/android/settings/applications/y$f;->i:J

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 2557
    iget-object v13, v9, Lcom/android/settings/applications/y$f;->j:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_46

    .line 2558
    iput-object v12, v9, Lcom/android/settings/applications/y$f;->j:Ljava/lang/String;

    :cond_46
    or-int/lit8 v16, v16, 0x0

    .line 1329
    iget v12, v9, Lcom/android/settings/applications/y$f;->g:I

    iget v13, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v12, v13, :cond_47

    .line 1330
    iget-wide v12, v9, Lcom/android/settings/applications/y$f;->i:J

    add-long v19, v19, v12

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move v2, v6

    move-wide/from16 v14, v25

    :goto_29
    const/16 v12, 0xc8

    goto/16 :goto_32

    .line 1331
    :cond_47
    iget-object v12, v9, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x190

    if-lt v12, v13, :cond_4f

    .line 1333
    iget-wide v14, v9, Lcom/android/settings/applications/y$f;->i:J
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    add-long v14, v25, v14

    if-eqz v11, :cond_49

    .line 1336
    :try_start_4
    new-instance v12, Lcom/android/settings/applications/y$d;

    iget v13, v9, Lcom/android/settings/applications/y$f;->b:I

    invoke-direct {v12, v13}, Lcom/android/settings/applications/y$d;-><init>(I)V

    iput-object v12, v9, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    .line 1337
    iget-object v13, v9, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    iput-object v9, v13, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    .line 1338
    iget v9, v12, Lcom/android/settings/applications/y$d;->b:I

    iget v13, v1, Lcom/android/settings/applications/y;->g:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    if-eq v9, v13, :cond_48

    const/4 v9, 0x1

    goto :goto_2a

    :cond_48
    const/4 v9, 0x0

    :goto_2a
    or-int/2addr v9, v10

    .line 1339
    :try_start_5
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move v3, v9

    goto :goto_2b

    :catch_0
    move v10, v9

    goto/16 :goto_33

    .line 1341
    :cond_49
    :try_start_6
    iget-object v12, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_4b

    iget-object v12, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    .line 1342
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/y$d;

    iget-object v12, v12, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-eq v12, v9, :cond_4a

    goto :goto_2c

    .line 1354
    :cond_4a
    iget-object v9, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/android/settings/applications/y$d;

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move v3, v10

    :goto_2b
    const/4 v2, 0x1

    goto :goto_30

    .line 1343
    :cond_4b
    :goto_2c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    move v11, v10

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v6, :cond_4d

    .line 1345
    :try_start_7
    iget-object v13, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/y$d;

    move-object/from16 v21, v2

    .line 1346
    iget v2, v13, Lcom/android/settings/applications/y$d;->b:I

    move-object/from16 v22, v3

    iget v3, v1, Lcom/android/settings/applications/y;->g:I

    if-eq v2, v3, :cond_4c

    const/4 v2, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v2, 0x0

    :goto_2e
    or-int/2addr v11, v2

    .line 1347
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto :goto_2d

    :cond_4d
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 1349
    new-instance v2, Lcom/android/settings/applications/y$d;

    iget v3, v9, Lcom/android/settings/applications/y$f;->b:I

    invoke-direct {v2, v3}, Lcom/android/settings/applications/y$d;-><init>(I)V

    iput-object v2, v9, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    .line 1350
    iget-object v3, v9, Lcom/android/settings/applications/y$f;->w:Lcom/android/settings/applications/y$d;

    iput-object v9, v3, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    .line 1351
    iget v3, v2, Lcom/android/settings/applications/y$d;->b:I

    iget v9, v1, Lcom/android/settings/applications/y;->g:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    if-eq v3, v9, :cond_4e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_4e
    const/4 v3, 0x0

    :goto_2f
    or-int/2addr v3, v11

    .line 1352
    :try_start_8
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v11, v12

    move-object v12, v2

    goto :goto_2b

    .line 1357
    :goto_30
    :try_start_9
    invoke-virtual {v12, v0, v2}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;Z)Z

    move v2, v6

    .line 1358
    invoke-virtual {v12, v0}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v2, v2, 0x1

    move v10, v3

    goto/16 :goto_29

    :catch_1
    move v10, v3

    goto :goto_33

    :catch_2
    move v10, v3

    goto :goto_31

    :catch_3
    move v10, v11

    :goto_31
    move-object v11, v12

    goto :goto_33

    :cond_4f
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move v2, v6

    .line 1360
    :try_start_a
    iget-object v3, v9, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-gt v3, v12, :cond_50

    .line 1362
    iget-wide v13, v9, Lcom/android/settings/applications/y$f;->i:J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    add-long v17, v17, v13

    :cond_50
    move-wide/from16 v14, v25

    :goto_32
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/16 v13, 0x190

    goto/16 :goto_28

    :cond_51
    move-wide/from16 v25, v14

    goto :goto_33

    :catch_4
    move-wide/from16 v25, v14

    :catch_5
    move-wide/from16 v14, v25

    goto :goto_33

    :catch_6
    move/from16 v16, v5

    move-wide v14, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    :catch_7
    :goto_33
    move-wide/from16 v2, v17

    move-wide/from16 v12, v19

    if-nez v11, :cond_54

    .line 1370
    iget-object v5, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_54

    .line 1371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_34
    if-ge v9, v7, :cond_53

    .line 1373
    iget-object v11, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/y$d;

    .line 1374
    iget v6, v11, Lcom/android/settings/applications/y$d;->b:I

    move-wide/from16 v17, v12

    iget v12, v1, Lcom/android/settings/applications/y;->g:I

    if-eq v6, v12, :cond_52

    const/4 v6, 0x1

    goto :goto_35

    :cond_52
    const/4 v6, 0x0

    :goto_35
    or-int/2addr v10, v6

    .line 1375
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, v17

    goto :goto_34

    :cond_53
    move-wide/from16 v17, v12

    goto :goto_36

    :cond_54
    move-wide/from16 v17, v12

    move-object v5, v11

    :goto_36
    if-eqz v5, :cond_59

    if-nez v10, :cond_55

    move-object v9, v5

    goto :goto_3a

    .line 1389
    :cond_55
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_37
    if-ge v10, v6, :cond_57

    .line 1392
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/y$d;

    .line 1393
    iget v12, v11, Lcom/android/settings/applications/y$d;->b:I

    iget v13, v1, Lcom/android/settings/applications/y;->g:I

    if-eq v12, v13, :cond_56

    .line 1394
    iget-object v12, v1, Lcom/android/settings/applications/y;->s:Landroid/util/SparseArray;

    invoke-direct {v1, v0, v9, v12, v11}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/y$d;)V

    goto :goto_38

    .line 1397
    :cond_56
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 1402
    :cond_57
    iget-object v6, v1, Lcom/android/settings/applications/y;->s:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_39
    if-ge v11, v10, :cond_5a

    .line 1404
    iget-object v6, v1, Lcom/android/settings/applications/y;->s:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/settings/applications/y$d;

    .line 1405
    iget v6, v12, Lcom/android/settings/applications/y$d;->g:I

    iget v13, v1, Lcom/android/settings/applications/y;->u:I

    if-ne v6, v13, :cond_58

    const/4 v6, 0x1

    .line 1406
    invoke-virtual {v12, v0, v6}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;Z)Z

    .line 1407
    invoke-virtual {v12, v0}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;)Z

    :cond_58
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_59
    const/4 v9, 0x0

    :cond_5a
    :goto_3a
    const/4 v10, 0x0

    .line 1413
    :goto_3b
    iget-object v11, v1, Lcom/android/settings/applications/y;->B:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5b

    .line 1414
    iget-object v11, v1, Lcom/android/settings/applications/y;->B:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/y$d;

    invoke-virtual {v11, v0}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1417
    :cond_5b
    iget-object v10, v1, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v10

    .line 1418
    :try_start_b
    iput v7, v1, Lcom/android/settings/applications/y;->E:I

    .line 1419
    iput v8, v1, Lcom/android/settings/applications/y;->G:I

    .line 1420
    iput v4, v1, Lcom/android/settings/applications/y;->I:I

    .line 1421
    iput-wide v14, v1, Lcom/android/settings/applications/y;->F:J

    .line 1422
    iput-wide v2, v1, Lcom/android/settings/applications/y;->H:J

    move-wide/from16 v2, v17

    .line 1423
    iput-wide v2, v1, Lcom/android/settings/applications/y;->J:J

    if-eqz v5, :cond_5c

    .line 1425
    iput-object v5, v1, Lcom/android/settings/applications/y;->C:Ljava/util/ArrayList;

    .line 1426
    iput-object v9, v1, Lcom/android/settings/applications/y;->D:Ljava/util/ArrayList;

    .line 1427
    iget-boolean v0, v1, Lcom/android/settings/applications/y;->z:Z

    if-eqz v0, :cond_5c

    const/16 v16, 0x1

    .line 1431
    :cond_5c
    iget-boolean v0, v1, Lcom/android/settings/applications/y;->y:Z

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    .line 1432
    iput-boolean v0, v1, Lcom/android/settings/applications/y;->y:Z

    .line 1433
    iget-object v0, v1, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    :cond_5d
    monitor-exit v10

    return v16

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/applications/y;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 816
    iget-object v1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/y$b;->sendEmptyMessage(I)Z

    .line 817
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Lcom/android/settings/applications/y$e;)V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 795
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/y;->x:Z

    .line 796
    iput-object p1, p0, Lcom/android/settings/applications/y;->i:Lcom/android/settings/applications/y$e;

    .line 797
    iget-object p1, p0, Lcom/android/settings/applications/y;->N:Lcom/android/settings/applications/y$i;

    invoke-virtual {p1}, Lcom/android/settings/applications/y$i;->a()Z

    move-result p1

    .line 798
    iget-object v2, p0, Lcom/android/settings/applications/y;->j:Lcom/android/settingslib/applications/c;

    iget-object v3, p0, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    .line 799
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/c;->a(Landroid/content/res/Resources;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 801
    iput-boolean p1, p0, Lcom/android/settings/applications/y;->y:Z

    .line 802
    iget-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 803
    iget-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 804
    iget-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/y$b;->sendEmptyMessage(I)Z

    .line 806
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/y$b;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 807
    iget-object p1, p0, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/y$b;->sendEmptyMessage(I)Z

    .line 809
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/y;->M:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 810
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()Z
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/y;->y:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 823
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final c()V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/y;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 830
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 834
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method final d()V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 839
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/y;->x:Z

    const/4 v1, 0x0

    .line 840
    iput-object v1, p0, Lcom/android/settings/applications/y;->i:Lcom/android/settings/applications/y$e;

    .line 841
    iget-object v1, p0, Lcom/android/settings/applications/y;->M:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y;->B:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1449
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 1454
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y;->D:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1455
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
