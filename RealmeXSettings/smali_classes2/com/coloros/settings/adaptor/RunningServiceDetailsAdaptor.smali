.class public Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "RunningServiceDetailsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/RunningServiceDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 30
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    return-void
.end method


# virtual methods
.method public addProcessesHeader()Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->addProcessesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z

    move-result v0

    return v0
.end method

.method public addSeparatorHeader()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->addSeparatorHeader(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public addServicesHeader()Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->addServicesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z

    move-result v0

    return v0
.end method

.method public getLayoutResID(I)I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->getLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public getServiceDetailLayoutResID(I)I
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->getServiceDetailLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public getServiceDetailProcessLayoutResID(I)I
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->getServiceDetailProcessLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public onCreate()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->onCreate(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->onCreateView(Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 126
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->releaseFeature(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    return-void
.end method

.method public removeHead()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->removeHead(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public setListViewStyle(Landroid/view/View;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->setListViewStyle(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public setPositionAndSize(II)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->setPositionAndSize(II)V

    return-void
.end method

.method public setRootLayoutPara(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->setRootLayoutPara(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method
