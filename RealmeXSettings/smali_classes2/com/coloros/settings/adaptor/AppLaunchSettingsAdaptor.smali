.class public Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "AppLaunchSettingsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/AppLaunchSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    sput-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public buildStateDropDown()Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->buildStateDropDown(Lcom/android/settings/applications/AppLaunchSettings;)Z

    move-result v0

    return v0
.end method

.method public getPreferenceResId(I)I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 31
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->getPreferenceResId(I)I

    move-result p1

    return p1
.end method

.method public initAppLinkPreference()Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->initAppLinkPreference(Lcom/android/settings/applications/AppLaunchSettings;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->onCreate(Lcom/android/settings/applications/AppLaunchSettings;)V

    return-void
.end method

.method public setAppDomainUrls([Ljava/lang/CharSequence;)Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->sAppLaunchFeature:Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppLaunchSettings;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->setAppDomainUrls([Ljava/lang/CharSequence;Lcom/android/settings/applications/AppLaunchSettings;)Z

    move-result p1

    return p1
.end method
