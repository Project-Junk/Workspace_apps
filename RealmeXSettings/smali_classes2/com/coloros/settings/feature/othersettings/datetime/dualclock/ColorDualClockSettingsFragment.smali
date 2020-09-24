.class public Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorDualClockSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/datetime/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;

.field private b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment$a;-><init>(B)V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

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

    const-string v0, "ColorDualClockSettingsFragment"

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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;

    .line 61
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a_()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->updateVisibility()V

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->updateVisibility()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;->a_()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15004b

    return v0
.end method
