.class public abstract Lcom/android/settingslib/utils/a;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/android/settingslib/utils/a;->a:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->onStopLoading()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/settingslib/utils/a;->a:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/utils/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/a;->deliverResult(Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/utils/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/utils/a;->cancelLoad()Z

    return-void
.end method
