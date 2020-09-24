.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;

    iget-object v0, v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->g(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v0

    .line 1304
    iget-object v1, v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/print/ProgressCategory;->a(Z)V

    .line 1307
    :try_start_0
    iget-object v1, v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPrintServiceSettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
