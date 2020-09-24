.class public Lcom/coloros/settings/feature/network/ColorWirelessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorWirelessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/coloros/settings/feature/network/ColorWirelessSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/network/ColorWirelessSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/network/ColorWirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorWirelessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ea

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150073

    return v0
.end method
