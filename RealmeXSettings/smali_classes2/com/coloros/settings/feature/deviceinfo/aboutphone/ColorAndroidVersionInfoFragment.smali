.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAndroidVersionInfoFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorAndroidVersionInfoFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/k;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15003c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
