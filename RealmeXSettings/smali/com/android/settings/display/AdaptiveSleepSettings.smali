.class public Lcom/android/settings/display/AdaptiveSleepSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdaptiveSleepSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/AdaptiveSleepSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AdaptiveSleepSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AdaptiveSleepSettings"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a9e

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x65c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150010

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/display/AdaptiveSleepSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 42
    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f080802

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setIcon(I)V

    const v0, 0x7f1200df

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method
