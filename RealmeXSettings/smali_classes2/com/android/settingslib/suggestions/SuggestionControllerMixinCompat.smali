.class public Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;
.super Ljava/lang/Object;
.source "SuggestionControllerMixinCompat.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/suggestions/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;>;",
        "Lcom/android/settingslib/suggestions/a$a;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settingslib/suggestions/a;

.field private final c:Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;

.field private d:Z


# virtual methods
.method public final a()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->c:Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;

    invoke-interface {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;->a()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->c:Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;

    invoke-interface {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat$a;->a()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    .line 108
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;"
        }
    .end annotation

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->d:Z

    .line 116
    new-instance p1, Lcom/android/settingslib/suggestions/SuggestionLoaderCompat;

    iget-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->b:Lcom/android/settingslib/suggestions/a;

    invoke-direct {p1, p2, v0}, Lcom/android/settingslib/suggestions/SuggestionLoaderCompat;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/a;)V

    return-object p1

    .line 118
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "This loader id is not supported "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 1123
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->d:Z

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->d:Z

    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->b:Lcom/android/settingslib/suggestions/a;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixinCompat;->b:Lcom/android/settingslib/suggestions/a;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->b()V

    return-void
.end method
