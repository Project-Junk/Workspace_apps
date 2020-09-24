.class final Lcom/android/settingslib/c/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppearAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/c/b;->a(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/android/settingslib/c/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/c/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settingslib/c/b$2;->b:Lcom/android/settingslib/c/b;

    iput-object p2, p0, Lcom/android/settingslib/c/b$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/android/settingslib/c/b$2;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
