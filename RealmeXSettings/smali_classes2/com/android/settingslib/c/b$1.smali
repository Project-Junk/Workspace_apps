.class final Lcom/android/settingslib/c/b$1;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/android/settingslib/c/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/c/b;Landroid/view/View;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settingslib/c/b$1;->b:Lcom/android/settingslib/c/b;

    iput-object p2, p0, Lcom/android/settingslib/c/b$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 204
    iget-object p1, p0, Lcom/android/settingslib/c/b$1;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
