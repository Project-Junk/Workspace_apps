.class public Lcom/android/settings/print/SettingsPrintServicesLoader;
.super Landroidx/loader/content/Loader;
.source "SettingsPrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/Loader<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/print/PrintServicesLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/print/SettingsPrintServicesLoader$1;-><init>(Lcom/android/settings/print/SettingsPrintServicesLoader;Landroid/print/PrintManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    return-void
.end method


# virtual methods
.method public onAbandon()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->abandon()V

    return-void
.end method

.method public onCancelLoad()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->cancelLoad()Z

    move-result v0

    return v0
.end method

.method public onForceLoad()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->forceLoad()V

    return-void
.end method

.method public onReset()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->reset()V

    return-void
.end method

.method public onStartLoading()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->startLoading()V

    return-void
.end method

.method public onStopLoading()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader;->a:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->stopLoading()V

    return-void
.end method