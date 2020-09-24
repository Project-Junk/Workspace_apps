.class public abstract Lcom/android/settings/core/InstrumentedPreferenceFragment;
.super Lcom/coloros/settings/ColorSettingsBaseFragment;
.source "InstrumentedPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentedPrefFrag"


# instance fields
.field protected final PLACEHOLDER_METRIC:I

.field public mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;-><init>()V

    const/16 v0, 0x2710

    .line 51
    iput v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->PLACEHOLDER_METRIC:I

    return-void
.end method

.method private updateActivityTitleWithScreenTitle(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Screen title missing for fragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstrumentedPrefFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected addLoggerMixinToObServer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addPreferencesFromResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->updateActivityTitleWithScreenTitle(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method protected addSurveyMixinToObserver()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public final getPrefContext()Landroid/content/Context;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 69
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/d;)V

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addLoggerMixinToObServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addSurveyMixinToObserver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/survey/SurveyMixin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/survey/SurveyMixin;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 80
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    if-lez p1, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->a(Landroid/app/Activity;)V

    .line 86
    invoke-super {p0}, Lcom/coloros/settings/ColorSettingsBaseFragment;->onResume()V

    return-void
.end method
