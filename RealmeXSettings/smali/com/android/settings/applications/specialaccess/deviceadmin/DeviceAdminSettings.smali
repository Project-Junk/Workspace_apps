.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DeviceAdminSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceAdminSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x204

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150089

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 1048
    const-class p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    return-void
.end method
