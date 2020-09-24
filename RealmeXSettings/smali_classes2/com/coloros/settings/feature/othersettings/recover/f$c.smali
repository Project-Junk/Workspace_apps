.class final Lcom/coloros/settings/feature/othersettings/recover/f$c;
.super Ljava/lang/Object;
.source "RecoveryDataHelper.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/f;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/f;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$c;->a:Lcom/coloros/settings/feature/othersettings/recover/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/f;B)V
    .locals 0

    .line 1236
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f$c;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 1239
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$c;->a:Lcom/coloros/settings/feature/othersettings/recover/f;

    .line 1240
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Lcom/coloros/settings/feature/othersettings/recover/f;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    if-eqz p1, :cond_0

    .line 1242
    new-instance p2, Landroid/print/PrintServicesLoader;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$c;->a:Lcom/coloros/settings/feature/othersettings/recover/f;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Lcom/coloros/settings/feature/othersettings/recover/f;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, p1, v0, v1}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .line 1236
    check-cast p2, Ljava/util/List;

    .line 2252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/printservice/PrintServiceInfo;

    .line 2253
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 2254
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$c;->a:Lcom/coloros/settings/feature/othersettings/recover/f;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Lcom/coloros/settings/feature/othersettings/recover/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    const/4 v1, 0x1

    .line 2255
    invoke-virtual {v0, p2, v1}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
