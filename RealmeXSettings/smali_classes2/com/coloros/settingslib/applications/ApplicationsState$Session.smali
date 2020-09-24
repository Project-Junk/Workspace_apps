.class public Lcom/coloros/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

.field b:Z

.field final c:Ljava/lang/Object;

.field d:Z

.field e:Z

.field f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field final synthetic k:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private final l:Z

.field private m:I


# direct methods
.method constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->c:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 862
    iput p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->m:I

    .line 866
    iput-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    if-eqz p3, :cond_0

    .line 868
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p1, 0x1

    .line 869
    iput-boolean p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->l:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 871
    iput-boolean p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settingslib/applications/ApplicationsState$Session;)I
    .locals 0

    .line 846
    iget p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->m:I

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 914
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState;->w:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 915
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/settingslib/applications/ApplicationsState$b;",
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->u:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 927
    :try_start_1
    iget-object v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 928
    iput-boolean v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->d:Z

    .line 929
    iput-boolean v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->e:Z

    .line 930
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 931
    iput-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->g:Ljava/util/Comparator;

    .line 932
    iput-boolean p3, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->j:Z

    const/4 p1, 0x0

    .line 933
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->h:Ljava/util/ArrayList;

    .line 934
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-virtual {p2, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 935
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-virtual {p2, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 937
    iget-object p3, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p3, p3, Lcom/coloros/settingslib/applications/ApplicationsState;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-virtual {p3, p2}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->sendMessage(Landroid/os/Message;)Z

    .line 939
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 939
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 942
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method final b()V
    .locals 8

    .line 948
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->d:Z

    if-nez v1, :cond_0

    .line 950
    monitor-exit v0

    return-void

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 954
    iget-object v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->g:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 955
    iput-boolean v3, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->d:Z

    const/4 v4, 0x0

    .line 956
    iput-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 957
    iput-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->g:Ljava/util/Comparator;

    .line 958
    iget-boolean v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->j:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x2

    .line 959
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 960
    iput-boolean v3, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->j:Z

    .line 962
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_2

    .line 965
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Landroid/content/Context;)V

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v4, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v4

    .line 970
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState;->w:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 971
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 973
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 975
    iget-object v5, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    move v3, v6

    :cond_3
    invoke-virtual {v5, v4, v1, v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Ljava/util/ArrayList;Lcom/coloros/settingslib/applications/ApplicationsState$b;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 979
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_5

    .line 980
    invoke-interface {v1, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 981
    :cond_5
    iget-object v5, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v5

    if-eqz v2, :cond_6

    .line 987
    :try_start_2
    iget-object v7, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 992
    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    if-eqz v2, :cond_8

    .line 1002
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1005
    :try_start_3
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1006
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1009
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_4
    iget-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->d:Z

    if-nez v1, :cond_a

    .line 1011
    iput-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->i:Ljava/util/ArrayList;

    .line 1012
    iget-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->e:Z

    if-nez v1, :cond_9

    .line 1013
    iput-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->h:Ljava/util/ArrayList;

    .line 1014
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1016
    :cond_9
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->F:Lcom/coloros/settingslib/applications/ApplicationsState$f;

    invoke-virtual {v1, v6, p0}, Lcom/coloros/settingslib/applications/ApplicationsState$f;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1017
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->F:Lcom/coloros/settingslib/applications/ApplicationsState$f;

    invoke-virtual {v1, v6, p0}, Lcom/coloros/settingslib/applications/ApplicationsState$f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1019
    iget-object v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState;->F:Lcom/coloros/settingslib/applications/ApplicationsState$f;

    invoke-virtual {v2, v1}, Lcom/coloros/settingslib/applications/ApplicationsState$f;->sendMessage(Landroid/os/Message;)Z

    .line 1023
    :cond_a
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0xa

    .line 1025
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_2
    move-exception v1

    .line 1023
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 971
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 962
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1030
    iget-boolean v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->l:Z

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1037
    iput-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    return-void

    :catchall_0
    move-exception v1

    .line 1036
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 903
    iput-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->b:Z

    .line 904
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->B:Z

    .line 905
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->p:Lcom/coloros/settingslib/applications/ApplicationsState$c;

    invoke-virtual {v1, v2, p0}, Lcom/coloros/settingslib/applications/ApplicationsState$c;->removeMessages(ILjava/lang/Object;)V

    .line 906
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->h()V

    .line 909
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 889
    iput-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->b:Z

    .line 890
    iget-object v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/coloros/settingslib/applications/ApplicationsState;->B:Z

    .line 891
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->i()V

    .line 892
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b()V

    .line 894
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
