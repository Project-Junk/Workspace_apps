.class public final Lcom/android/settings/widget/d;
.super Ljava/lang/Object;
.source "LoadingViewController.java"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/widget/d$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/d$1;-><init>(Lcom/android/settings/widget/d;)V

    iput-object v0, p0, Lcom/android/settings/widget/d;->d:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/d;->b:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/android/settings/widget/d;->c:Landroid/view/View;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/widget/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1

    xor-int/lit8 v0, p2, 0x1

    .line 74
    invoke-static {p0, v0, p3}, Lcom/android/settings/widget/d;->a(Landroid/view/View;ZZ)V

    .line 75
    invoke-static {p1, p2, p3}, Lcom/android/settings/widget/d;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method private static a(Landroid/view/View;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    const/high16 v1, 0x10a0000

    goto :goto_0

    :cond_0
    const v1, 0x10a0001

    :goto_0
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_1
    new-instance p1, Lcom/android/settings/widget/d$2;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/d$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 102
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 103
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/d;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/widget/d;->a(ZZ)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/d;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/d;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/widget/d;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method
