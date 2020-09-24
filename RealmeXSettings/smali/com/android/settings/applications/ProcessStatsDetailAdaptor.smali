.class public Lcom/android/settings/applications/ProcessStatsDetailAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ProcessStatsDetailAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/ProcessStatsDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 34
    const-class v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    return-void
.end method


# virtual methods
.method public checkForceStop()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->checkForceStop(Lcom/android/settings/applications/ProcessStatsDetail;)Z

    move-result v0

    return v0
.end method

.method public createDetails(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->createDetails(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)V

    return-void
.end method

.method public fillProcessesSection()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->fillProcessesSection(Lcom/android/settings/applications/ProcessStatsDetail;)Z

    move-result v0

    return v0
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->getUserSettingsXml(I)I

    move-result p1

    return p1
.end method

.method public onCreateOptionsMenu()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreate(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->feature:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->onViewCreate(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)Z

    move-result p1

    return p1
.end method
