.class public Lcom/coloros/settings/feature/appmanager/d;
.super Lcom/coloros/settingslib/applications/ApplicationsState;
.source "ColorApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/appmanager/d$a;,
        Lcom/coloros/settings/feature/appmanager/d$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Boolean;

.field private static final ab:Ljava/lang/String; = "d"

.field private static ac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# instance fields
.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/coloros/settings/feature/appmanager/d;->a:Ljava/lang/Boolean;

    .line 292
    new-instance v0, Lcom/coloros/settings/feature/appmanager/d$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/appmanager/d$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/appmanager/d;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/d;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->n(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget p1, p0, Lcom/coloros/settings/feature/appmanager/d;->l:I

    const/high16 p2, 0x8000000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/appmanager/d;->b:I

    return-void

    .line 80
    :cond_0
    iget p1, p0, Lcom/coloros/settings/feature/appmanager/d;->l:I

    iput p1, p0, Lcom/coloros/settings/feature/appmanager/d;->b:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/appmanager/d;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 1

    .line 60
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/feature/appmanager/d;->a(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 65
    sget-object v0, Lcom/coloros/settings/feature/appmanager/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/appmanager/d;->e:Lcom/coloros/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/coloros/settings/feature/appmanager/d;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/d;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    .line 68
    sput-object v1, Lcom/coloros/settings/feature/appmanager/d;->e:Lcom/coloros/settingslib/applications/ApplicationsState;

    check-cast v1, Lcom/coloros/settings/feature/appmanager/d;

    .line 1086
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/coloros/settings/feature/appmanager/-$$Lambda$d$dLLJ68w2wEooR_oMKS49wLvBJGE;

    invoke-direct {p1, v1}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$d$dLLJ68w2wEooR_oMKS49wLvBJGE;-><init>(Lcom/coloros/settings/feature/appmanager/d;)V

    const-string v1, "ColorApplicationsState.parserBlackList"

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 70
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/appmanager/d;->e:Lcom/coloros/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/appmanager/d;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/coloros/settings/feature/appmanager/d;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .line 47
    sget-object v0, Lcom/coloros/settings/feature/appmanager/d;->ac:Ljava/util/ArrayList;

    return-object v0
.end method

.method private synthetic l()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/c;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/appmanager/d;->ac:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$dLLJ68w2wEooR_oMKS49wLvBJGE(Lcom/coloros/settings/feature/appmanager/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/d;->l()V

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    iget p1, p0, Lcom/coloros/settings/feature/appmanager/d;->b:I

    return p1

    :cond_0
    iget p1, p0, Lcom/coloros/settings/feature/appmanager/d;->m:I

    return p1
.end method

.method public final a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 161
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq p2, v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 162
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 93
    invoke-super {p0}, Lcom/coloros/settingslib/applications/ApplicationsState;->a()V

    .line 2051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->j:Landroid/os/UserManager;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 96
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->b(Ljava/lang/String;Z)V

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x3e7

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->d(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/d;->d(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/coloros/settingslib/applications/ApplicationsState$b;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;",
            "Lcom/coloros/settingslib/applications/ApplicationsState$b;",
            "Z)Z"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 333
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3395
    new-instance v0, Lcom/coloros/settings/feature/appmanager/d$a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/appmanager/d$a;-><init>()V

    .line 3396
    iput-object p2, v0, Lcom/coloros/settings/feature/appmanager/d$a;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 343
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 344
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p2, :cond_2

    if-nez v3, :cond_1

    .line 4389
    iget-object v4, v0, Lcom/coloros/settings/feature/appmanager/d$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iput-object v2, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 4390
    iget-object v4, v0, Lcom/coloros/settings/feature/appmanager/d$a;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    iget-object v5, v0, Lcom/coloros/settings/feature/appmanager/d$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-interface {v4, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/appmanager/d$a;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    monitor-enter v4

    if-nez v3, :cond_3

    .line 351
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/appmanager/d;->a(Landroid/content/pm/ApplicationInfo;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 354
    monitor-exit v4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 357
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/d;->f:Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 362
    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v4

    goto :goto_0

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    .line 334
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final b()V
    .locals 5

    .line 108
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/coloros/settings/feature/appmanager/d$b;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/appmanager/d$b;-><init>(Lcom/coloros/settings/feature/appmanager/d;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$g;->a()V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d;->q:Z

    .line 117
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    .line 118
    invoke-super {p0}, Lcom/coloros/settingslib/applications/ApplicationsState;->b()V

    if-eqz v0, :cond_1

    return-void

    .line 3051
    :cond_1
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    sget-object v0, Lcom/coloros/settings/feature/appmanager/d;->ab:Ljava/lang/String;

    const-string v3, "doResumeIfNeededLocked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->v:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->i:Landroid/content/pm/IPackageManager;

    .line 133
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/appmanager/d;->a(Z)I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v1

    invoke-virtual {v1}, Loppo/util/OppoMultiLauncherUtil;->getCreatedMultiApp()Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 136
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/coloros/settings/feature/appmanager/d;->ab:Ljava/lang/String;

    const-string v3, "Error during doResumeIfNeededLocked"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->x:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/coloros/settings/feature/appmanager/d;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/d;->g()V

    :cond_5
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->o:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    :cond_6
    return-void
.end method

.method final b(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x3e7

    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->e(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/d;->e(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/d;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/coloros/settings/feature/appmanager/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/appmanager/d$b;-><init>(Lcom/coloros/settings/feature/appmanager/d;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    check-cast v0, Lcom/coloros/settings/feature/appmanager/d$b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/d$b;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    instance-of v0, v0, Lcom/coloros/settings/feature/appmanager/d$b;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    check-cast v0, Lcom/coloros/settings/feature/appmanager/d$b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/d$b;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/d;->n:Lcom/coloros/settingslib/applications/ApplicationsState$g;

    :cond_1
    return-void
.end method
