.class final Lcom/android/settingslib/applications/ApplicationsState$d;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    .line 969
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 974
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1747
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1748
    :try_start_0
    iget-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->w:Z

    if-nez v2, :cond_0

    .line 1749
    monitor-exit v1

    goto :goto_1

    .line 1751
    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 1752
    :goto_0
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1753
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1754
    iget-boolean v4, v3, Lcom/android/settingslib/applications/ApplicationsState$Session;->a:Z

    if-eqz v4, :cond_1

    .line 1755
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1758
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1036
    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1037
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_2

    .line 1028
    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1029
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void

    .line 1019
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1020
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_4

    .line 1022
    iget v1, p1, Landroid/os/Message;->arg1:I

    goto :goto_4

    :cond_5
    return-void

    .line 1011
    :pswitch_3
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_5

    :cond_6
    return-void

    .line 1002
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_7

    .line 1005
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_6

    :cond_8
    return-void

    .line 994
    :pswitch_5
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 995
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_7

    :cond_9
    return-void

    .line 986
    :pswitch_6
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 987
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_8

    :cond_a
    return-void

    .line 977
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 978
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$d;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 979
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_9

    :cond_b
    :goto_a
    return-void

    :catchall_0
    move-exception p1

    .line 1758
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
