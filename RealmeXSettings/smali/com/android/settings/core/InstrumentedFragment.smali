.class public abstract Lcom/android/settings/core/InstrumentedFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservableFragment;
.source "InstrumentedFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/b;


# instance fields
.field private a:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

.field public u:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 36
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->u:Lcom/android/settingslib/core/instrumentation/d;

    .line 37
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedFragment;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/core/InstrumentedFragment;->u:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/d;)V

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->a:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 1041
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->v:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 40
    iget-object v1, p0, Lcom/android/settings/core/InstrumentedFragment;->a:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2041
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->v:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 41
    new-instance v1, Lcom/android/settings/survey/SurveyMixin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/survey/SurveyMixin;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedFragment;->a:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->a(Landroid/app/Activity;)V

    .line 48
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onResume()V

    return-void
.end method
