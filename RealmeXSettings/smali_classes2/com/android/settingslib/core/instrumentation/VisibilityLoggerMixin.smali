.class public Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final a:I

.field private b:Lcom/android/settingslib/core/instrumentation/d;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(ILcom/android/settingslib/core/instrumentation/d;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->c:I

    .line 45
    iput p1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->a:I

    .line 46
    iput-object p2, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->b:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    .line 69
    iget v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->c:I

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, ":settings:source_metrics"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->c:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->d:J

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->b:Lcom/android/settingslib/core/instrumentation/d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->a:I

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->d:J

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->b:Lcom/android/settingslib/core/instrumentation/d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->a:I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 53
    iget v3, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->c:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
