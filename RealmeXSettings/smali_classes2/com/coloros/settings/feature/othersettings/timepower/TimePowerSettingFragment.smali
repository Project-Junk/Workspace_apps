.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TimePowerSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TimePowerSettingFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "power_on_switch"

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "power_off_switch"

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500e6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
