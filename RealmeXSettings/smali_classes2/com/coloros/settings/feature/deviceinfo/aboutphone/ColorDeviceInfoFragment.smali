.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;
.super Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.source "ColorDeviceInfoFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoFragment$Hbg40eo-pDNKbILTo0ox-_pRN_4;->INSTANCE:Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoFragment$Hbg40eo-pDNKbILTo0ox-_pRN_4;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 206
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    .line 201
    new-instance p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment$a;-><init>(Lcom/android/settings/dashboard/f;)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 110
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/c;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/i;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorFirmwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/b;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/j;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {p2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 123
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p2, Lcom/coloros/settings/feature/deviceinfo/controller/a;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p2, Lcom/coloros/settings/feature/deviceinfo/controller/f;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p2, Lcom/coloros/settings/feature/deviceinfo/controller/k;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p2, Lcom/coloros/settings/feature/controller/b$a;

    sget v1, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v2, "authentication_info"

    invoke-direct {p2, p0, v2, v1}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "ro.product.authentication"

    .line 1431
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 2146
    :goto_0
    iput-boolean v1, p2, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 136
    invoke-virtual {p2}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p2

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p2, Lcom/coloros/settings/feature/controller/b$a;

    sget v1, Lcom/coloros/settings/feature/controller/b$b;->b:I

    const-string v4, "regulatory_info"

    invoke-direct {p2, p0, v4, v1}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "android.settings.SHOW_REGULATORY_INFO"

    .line 3141
    iput-object v1, p2, Lcom/coloros/settings/feature/controller/b$a;->a:Ljava/lang/String;

    .line 142
    invoke-virtual {p2}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p2

    .line 139
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p2, Lcom/coloros/settings/feature/controller/b$a;

    sget v1, Lcom/coloros/settings/feature/controller/b$b;->b:I

    const-string v4, "safety_info"

    invoke-direct {p2, p0, v4, v1}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    .line 4141
    iput-object v1, p2, Lcom/coloros/settings/feature/controller/b$a;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {p2}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p2

    .line 144
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p2, Lcom/android/settings/deviceinfo/b;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/deviceinfo/b;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lcom/coloros/settings/feature/controller/b$a;

    sget p2, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v1, "fcc_equipment_id"

    invoke-direct {p1, p0, v1, p2}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p2, "ro.ril.fccid"

    const-string v1, ""

    .line 153
    invoke-virtual {p1, p2, v1}, Lcom/coloros/settings/feature/controller/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/settings/feature/controller/b$a;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p1

    .line 151
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Lcom/coloros/settings/feature/controller/b$a;

    sget p2, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v1, "network_access_license"

    invoke-direct {p1, p0, v1, p2}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean p2, Lcom/coloros/settings/a;->a:Z

    if-eqz p2, :cond_3

    .line 158
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/d;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v3

    .line 4146
    :goto_1
    iput-boolean p2, p1, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 159
    invoke-virtual {p1}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p1

    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Lcom/coloros/settings/feature/controller/b$a;

    sget p2, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v1, "e_label"

    invoke-direct {p1, p0, v1, p2}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a(Landroid/content/Context;)Z

    move-result p2

    .line 5146
    iput-boolean p2, p1, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 164
    invoke-virtual {p1}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p1

    .line 161
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p1, Lcom/coloros/settings/feature/controller/b$a;

    sget p2, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v1, "regulatory_info_above_coloros_six"

    invoke-direct {p1, p0, v1, p2}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean p2, Lcom/coloros/settings/a;->a:Z

    if-eqz p2, :cond_4

    .line 168
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 6146
    :goto_2
    iput-boolean v2, p1, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 169
    invoke-virtual {p1}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p0

    .line 166
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Hbg40eo-pDNKbILTo0ox-_pRN_4(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 89
    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 68
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;)V

    .line 69
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150047

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
