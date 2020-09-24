.class public Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "DashboardFeatureProviderImplAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/dashboard/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreference(Landroid/content/Context;Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance p2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object p2
.end method

.method public needBindIcon(Z)Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
