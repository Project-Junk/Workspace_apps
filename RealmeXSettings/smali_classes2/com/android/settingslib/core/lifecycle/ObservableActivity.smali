.class public Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ObservableActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field protected final g:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->g:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method
