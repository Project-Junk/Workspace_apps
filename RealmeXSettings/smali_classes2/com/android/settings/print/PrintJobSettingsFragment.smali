.class public Lcom/android/settings/print/PrintJobSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrintJobSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PrintJobSettingsFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4e

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500f9

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 53
    const-class p1, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintJobSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/print/PrintJobPreferenceController;->init(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    .line 54
    const-class p1, Lcom/android/settings/print/PrintJobMessagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintJobSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/print/PrintJobMessagePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/print/PrintJobMessagePreferenceController;->init(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 72
    const-class p2, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintJobSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p2

    check-cast p2, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/print/PrintJobPreferenceController;->getPrintJob()Landroid/print/PrintJob;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const v0, 0x7f1210a4

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/print/PrintJob;->isFailed()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    const v0, 0x7f1210b8

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 86
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 92
    const-class v0, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/print/PrintJobPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintJobPreferenceController;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return v2

    .line 97
    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return v2

    .line 110
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    return-void
.end method
