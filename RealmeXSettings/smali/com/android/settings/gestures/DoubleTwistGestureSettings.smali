.class public Lcom/android/settings/gestures/DoubleTwistGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DoubleTwistGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/DoubleTwistGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DoubleTwistGesture"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2f3

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150094

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_double_twist_suggestion_complete"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
