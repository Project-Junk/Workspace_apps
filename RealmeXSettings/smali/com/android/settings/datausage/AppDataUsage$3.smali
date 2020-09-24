.class final Lcom/android/settings/datausage/AppDataUsage$3;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/ArraySet<",
        "Landroidx/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation

    .line 444
    new-instance p1, Lcom/android/settings/datausage/AppPrefLoader;

    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->g(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->h(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->i(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/datausage/AppPrefLoader;-><init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 441
    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_0

    .line 1450
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->j(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1451
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 1452
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->j(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
