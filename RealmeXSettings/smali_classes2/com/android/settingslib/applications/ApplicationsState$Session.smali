.class public Lcom/android/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field a:Z

.field final b:Ljava/lang/Object;

.field c:Z

.field d:Z

.field e:Lcom/android/settingslib/applications/ApplicationsState$b;

.field f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field final synthetic j:Lcom/android/settingslib/applications/ApplicationsState;

.field private final k:Z

.field private l:I


# direct methods
.method static synthetic a(Lcom/android/settingslib/applications/ApplicationsState$Session;)I
    .locals 0

    .line 767
    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->l:I

    return p0
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 869
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->c:Z

    if-nez v1, :cond_0

    .line 871
    monitor-exit v0

    return-void

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->e:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 875
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->f:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 876
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->c:Z

    const/4 v4, 0x0

    .line 877
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->e:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 878
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->f:Ljava/util/Comparator;

    .line 879
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->i:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x2

    .line 880
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 881
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->i:Z

    .line 883
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_2

    .line 886
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Landroid/content/Context;)V

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v3

    .line 891
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 892
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 894
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 898
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 899
    invoke-interface {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 900
    :cond_4
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v5

    if-eqz v2, :cond_5

    .line 906
    :try_start_2
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 911
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    if-eqz v2, :cond_7

    .line 920
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    :try_start_3
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 924
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 927
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_4
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->c:Z

    if-nez v1, :cond_9

    .line 929
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->h:Ljava/util/ArrayList;

    .line 930
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->d:Z

    if-nez v1, :cond_8

    .line 931
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->g:Ljava/util/ArrayList;

    .line 932
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 934
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 935
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v1, v2, p0}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 937
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z

    .line 941
    :cond_9
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0xa

    .line 943
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_2
    move-exception v1

    .line 941
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 892
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 883
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

    .line 948
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->k:Z

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 954
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 824
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    .line 825
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->w:Z

    .line 826
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    invoke-virtual {v2, v3, p0}, Lcom/android/settingslib/applications/ApplicationsState$c;->removeMessages(ILjava/lang/Object;)V

    .line 827
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1441
    iget-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->k:Z

    if-eqz v3, :cond_1

    .line 1444
    :goto_0
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1445
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v3, v3, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1449
    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->b()V

    .line 830
    :cond_1
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

    .line 808
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 810
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    .line 811
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/android/settingslib/applications/ApplicationsState;->w:Z

    .line 812
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->b()V

    .line 813
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->j:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->a()V

    .line 815
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
