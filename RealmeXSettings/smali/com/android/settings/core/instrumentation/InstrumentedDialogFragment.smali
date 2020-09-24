.class public abstract Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;
.source "InstrumentedDialogFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/b;


# instance fields
.field protected final c:Lcom/android/settings/e;

.field public d:I

.field public e:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;-><init>()V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->c:Lcom/android/settings/e;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->d:I

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->e:Lcom/android/settingslib/core/instrumentation/d;

    .line 51
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance v1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->getMetricsCategory()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->e:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/d;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a(Landroid/content/Context;)V

    return-void
.end method
