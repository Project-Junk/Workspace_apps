.class public Lcom/android/settings/applications/ProcessStatsUiAdpator;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ProcessStatsUiAdpator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/ProcessStatsUi;",
        ">;"
    }
.end annotation


# static fields
.field private static final feature:Lcom/android/settings/applications/ProcessStatsUiFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcessStatsUiFeature;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method

.method private refreshUIAsyn(I)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsUi;)V

    return-void
.end method


# virtual methods
.method public addSpinnerHeader()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsUi;)Z

    move-result p1

    return p1
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 51
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->getUserSettingsXml(I)I

    move-result p1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->onPreferenceTreeClick(Landroidx/preference/Preference;Lcom/android/settings/applications/ProcessStatsUi;)Z

    move-result p1

    return p1
.end method

.method public refreshUi()Z
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;->feature:Lcom/android/settings/applications/ProcessStatsUiFeature;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->refreshUi(Lcom/android/settings/applications/ProcessStatsUi;)Z

    move-result v0

    return v0
.end method
