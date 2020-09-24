.class public Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilityControlTimeoutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 100
    sget-object v2, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AccessibilityControlTimeoutPreferenceFragment"

    return-object v0
.end method

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

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 47
    invoke-virtual {v1, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150002

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 110
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 63
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 67
    check-cast v1, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    const/4 v2, 0x0

    .line 2088
    iput-object v2, v1, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a:Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 57
    check-cast v1, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    .line 1088
    iput-object p0, v1, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->a:Lcom/android/settings/accessibility/AccessibilityTimeoutController$a;

    goto :goto_0

    :cond_0
    return-void
.end method
