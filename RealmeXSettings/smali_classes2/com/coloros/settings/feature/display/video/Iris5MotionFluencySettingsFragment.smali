.class public Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "Iris5MotionFluencySettingsFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "MotionFluencySettingsFragment"

    .line 31
    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "MotionFluencySettingsFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ab

    return v0
.end method
