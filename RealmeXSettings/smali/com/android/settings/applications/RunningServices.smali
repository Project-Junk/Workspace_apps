.class public Lcom/android/settings/applications/RunningServices;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RunningServices.java"


# instance fields
.field protected a:Lcom/android/settings/applications/RunningProcessesView;

.field protected b:Landroid/view/View;

.field protected c:Lcom/android/settings/widget/d;

.field private d:Landroid/view/Menu;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/android/settings/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServices$1;-><init>(Lcom/android/settings/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServices;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    .line 1235
    iget-boolean v0, v0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->d:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->d:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x194

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServices;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1212bb

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/android/settings/applications/RunningServices;->d:Landroid/view/Menu;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f121494

    .line 64
    invoke-interface {p1, v0, p2, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 65
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x2

    const v1, 0x7f121479

    .line 66
    invoke-interface {p1, v0, p2, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 67
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->a()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d01b7

    const/4 p3, 0x0

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a059c

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningProcessesView;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    .line 53
    iget-object p2, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p2}, Lcom/android/settings/applications/RunningProcessesView;->a()V

    const p2, 0x7f0a03b6

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->b:Landroid/view/View;

    .line 55
    new-instance p2, Lcom/android/settings/widget/d;

    iget-object p3, p0, Lcom/android/settings/applications/RunningServices;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p2, p3, v0}, Lcom/android/settings/widget/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->c:Lcom/android/settings/widget/d;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/RunningProcessesView$b;->a(Z)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningProcessesView$b;->a(Z)V

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->a()V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->b()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;->a()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->c:Lcom/android/settings/widget/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/d;->a(ZZ)V

    return-void
.end method
