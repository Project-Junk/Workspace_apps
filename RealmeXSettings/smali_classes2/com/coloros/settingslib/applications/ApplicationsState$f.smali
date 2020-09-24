.class final Lcom/coloros/settingslib/applications/ApplicationsState$f;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 1052
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1057
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->k()V

    .line 1058
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 1126
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1127
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onLoadEntriesCompleted()V

    goto :goto_0

    .line 1117
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1118
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onLauncherInfoChanged()V

    goto :goto_1

    :cond_2
    return-void

    .line 1107
    :pswitch_2
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1108
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_3

    .line 1110
    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onRunningStateChanged(Z)V

    goto :goto_2

    :cond_5
    return-void

    .line 1098
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1099
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_6

    .line 1101
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onAllSizesComputed()V

    goto :goto_4

    :cond_7
    return-void

    .line 1088
    :pswitch_4
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1089
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_8

    .line 1091
    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    return-void

    .line 1079
    :pswitch_5
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1080
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_a

    .line 1082
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onPackageIconChanged()V

    goto :goto_6

    :cond_b
    return-void

    .line 1070
    :pswitch_6
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_c

    .line 1073
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onPackageListChanged()V

    goto :goto_7

    :cond_d
    return-void

    .line 1060
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 1061
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$f;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1062
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_e

    if-ne v1, p1, :cond_e

    .line 1064
    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    iget-object v2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->i:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState$d;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_f
    :goto_9
    return-void

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
