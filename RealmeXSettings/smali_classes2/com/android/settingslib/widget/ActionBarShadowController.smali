.class public Lcom/android/settingslib/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/ActionBarShadowController$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settingslib/widget/ActionBarShadowController$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settingslib/widget/ActionBarShadowController$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/widget/ActionBarShadowController$a;-><init>(Lcom/android/settingslib/widget/ActionBarShadowController;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->a:Lcom/android/settingslib/widget/ActionBarShadowController$a;

    .line 65
    iput-object p3, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->b:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionBarShadowController;->attachScrollWatcher()V

    .line 67
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)Lcom/android/settingslib/widget/ActionBarShadowController;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/settingslib/widget/ActionBarShadowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/widget/ActionBarShadowController;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    return-object v0
.end method

.method private attachScrollWatcher()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->c:Z

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->a:Lcom/android/settingslib/widget/ActionBarShadowController$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->a:Lcom/android/settingslib/widget/ActionBarShadowController$a;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionBarShadowController$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private detachScrollWatcher()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->c:Z

    return-void
.end method
