.class public final Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;
.super Ljava/lang/Object;
.source "InstallAppUnknownSourceController.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllSizesComputed()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)Z

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;->a:Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
