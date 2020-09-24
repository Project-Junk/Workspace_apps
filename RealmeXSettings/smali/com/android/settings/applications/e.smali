.class public abstract Lcom/android/settings/applications/e;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/e$b;,
        Lcom/android/settings/applications/e$a;,
        Lcom/android/settings/applications/e$c;
    }
.end annotation


# instance fields
.field protected final a:Lcom/coloros/settingslib/applications/ApplicationsState;

.field protected final b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field protected final c:Lcom/android/settings/applications/e$b;

.field protected final d:Lcom/android/settings/applications/e$a;

.field protected final e:Lcom/android/settings/applications/e$c;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/e;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 41
    iget-object p1, p0, Lcom/android/settings/applications/e;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1275
    invoke-virtual {p1, p0, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    .line 41
    :cond_0
    iput-object v0, p0, Lcom/android/settings/applications/e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/e;->c:Lcom/android/settings/applications/e$b;

    .line 46
    new-instance p1, Lcom/android/settings/applications/e$a;

    iget-object p2, p0, Lcom/android/settings/applications/e;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    if-eqz p2, :cond_1

    .line 2271
    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->E:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p1, p0, p2}, Lcom/android/settings/applications/e$a;-><init>(Lcom/android/settings/applications/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/applications/e;->d:Lcom/android/settings/applications/e$a;

    .line 48
    new-instance p1, Lcom/android/settings/applications/e$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/applications/e$c;-><init>(Lcom/android/settings/applications/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/applications/e;->e:Lcom/android/settings/applications/e$c;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
.end method

.method public final b()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/e;->d:Lcom/android/settings/applications/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/e$a;->sendEmptyMessage(I)Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onResume()V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/e;->d:Lcom/android/settings/applications/e$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settings/applications/e$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onPause()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/e;->d:Lcom/android/settings/applications/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/e$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/e;->d:Lcom/android/settings/applications/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/e$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
