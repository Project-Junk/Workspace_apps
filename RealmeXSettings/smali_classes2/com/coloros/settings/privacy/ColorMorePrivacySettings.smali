.class public Lcom/coloros/settings/privacy/ColorMorePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorMorePrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/coloros/settings/privacy/ColorMorePrivacySettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/privacy/ColorMorePrivacySettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/privacy/ColorMorePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorMorePrivacySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x633

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15005c

    return v0
.end method
