.class public Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ManageApplicationsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/manageapplications/ManageApplications;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 45
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    return-void
.end method

.method static shouldIgnorePackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android"

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-static {p0, p1}, Lcom/coloros/settings/romupdate/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public checkApplicationInstalled(Ljava/lang/String;I)Z
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->checkApplicationInstalled(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public filterAppEntry(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, 0xc

    if-eq p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 210
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 211
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->hasAccountAndroidTestEnterprise()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-nez p2, :cond_3

    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 214
    invoke-static {p1, v2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->shouldIgnorePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getApplicationListLabel(I)I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getApplicationListLabel(I)I

    move-result p1

    return p1
.end method

.method public getApplicationsState(Lcom/coloros/settingslib/applications/ApplicationsState;Landroid/app/Activity;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getApplicationsState(Lcom/coloros/settingslib/applications/ApplicationsState;Landroid/app/Activity;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    return-object p1
.end method

.method public getChildAdapterRealPosition(I)I
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getChildAdapterRealPosition(ILcom/android/settings/applications/manageapplications/ManageApplications;)I

    move-result p1

    return p1
.end method

.method public getDefaultComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getDefaultComparator(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutResId(I)I
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getLayoutResId(I)I

    move-result p1

    return p1
.end method

.method public getRecyclerViewAdapter(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getRecyclerViewAdapter(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    return-object p1
.end method

.method public hasAccountAndroidTestEnterprise()Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->hasAccountAndroidTestEnterprise()Z

    move-result v0

    return v0
.end method

.method public needShowTowTarget()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->needShowTowTarget(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    return v0
.end method

.method public notifyWrapperDataSetChanged()Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->notifyWrapperDataSetChanged(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onCreate(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, p2, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onCreateView(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onDestroy(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    .line 101
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->releaseFeature(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onDestroyView()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onLauncherInfoChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onOptionsItemSelected(Landroid/view/MenuItem;Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onPause(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onRebuildComplete(Ljava/util/ArrayList;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->onResume(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public performItemClick(Landroid/view/View;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;I)Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->performItemClick(Landroid/view/View;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;I)Z

    move-result p1

    return p1
.end method

.method public refreshSearchViewHint(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->refreshSearchViewHint(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setShowSystem()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public startSourcesDetailsFragment()Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->startSourcesDetailsFragment()Z

    move-result v0

    return v0
.end method

.method public updateColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, p2, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public updateOptionsMenu()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateOptionsMenu(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public updateUsageColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/k;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->mAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateUsageColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/k;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method
