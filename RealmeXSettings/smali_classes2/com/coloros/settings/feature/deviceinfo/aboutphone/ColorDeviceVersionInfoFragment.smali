.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;
.super Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.source "ColorDeviceVersionInfoFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceVersionInfoFragment$CdvZAccdXAXW4xbbrwgbJXkUvQg;->INSTANCE:Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceVersionInfoFragment$CdvZAccdXAXW4xbbrwgbJXkUvQg;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 126
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    .line 121
    new-instance p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;-><init>(Lcom/android/settings/dashboard/f;)V

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
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

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/i;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorHardwareVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorHardwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCotaCustomVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCotaCustomVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/a;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/f;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/h;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/g;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic lambda$CdvZAccdXAXW4xbbrwgbJXkUvQg(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 76
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/coloros/settings/utils/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSoftwareVersionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    goto :goto_0

    .line 55
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150049

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
