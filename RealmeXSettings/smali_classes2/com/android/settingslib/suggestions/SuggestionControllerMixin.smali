.class public Lcom/android/settingslib/suggestions/SuggestionControllerMixin;
.super Ljava/lang/Object;
.source "SuggestionControllerMixin.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/suggestions/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;>;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/suggestions/a$a;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settingslib/suggestions/a;

.field private final c:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;

.field private d:Z


# virtual methods
.method public final a()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->c:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;

    invoke-interface {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;->a()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->c:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;

    invoke-interface {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin$a;->a()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;"
        }
    .end annotation

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->d:Z

    .line 117
    new-instance p1, Lcom/android/settingslib/suggestions/b;

    iget-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->b:Lcom/android/settingslib/suggestions/a;

    invoke-direct {p1, p2, v0}, Lcom/android/settingslib/suggestions/b;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/a;)V

    return-object p1

    .line 119
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

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 1124
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->d:Z

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->d:Z

    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->b:Lcom/android/settingslib/suggestions/a;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->b:Lcom/android/settingslib/suggestions/a;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->b()V

    return-void
.end method
