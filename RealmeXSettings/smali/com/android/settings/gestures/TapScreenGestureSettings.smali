.class public Lcom/android/settings/gestures/TapScreenGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TapScreenGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/android/settings/gestures/TapScreenGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/TapScreenGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/TapScreenGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TapScreenGestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x65a

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150124

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_tap_gesture_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    const-class v0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/TapScreenGestureSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/TapScreenGesturePreferenceController;

    return-void
.end method
