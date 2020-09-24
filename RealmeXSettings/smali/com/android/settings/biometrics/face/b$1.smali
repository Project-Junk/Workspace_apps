.class final Lcom/android/settings/biometrics/face/b$1;
.super Ljava/lang/Object;
.source "FaceEnrollAnimationDrawable.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/face/b;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/b;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/biometrics/face/b$1;->a:Lcom/android/settings/biometrics/face/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b$1;->a:Lcom/android/settings/biometrics/face/b;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/b;->a(Lcom/android/settings/biometrics/face/b;)Landroid/animation/TimeAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/b$1;->a:Lcom/android/settings/biometrics/face/b;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/b;->a(Lcom/android/settings/biometrics/face/b;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b$1;->a:Lcom/android/settings/biometrics/face/b;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/b;->a(Lcom/android/settings/biometrics/face/b;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b$1;->a:Lcom/android/settings/biometrics/face/b;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/b;->b(Lcom/android/settings/biometrics/face/b;)Lcom/android/settings/biometrics/face/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/biometrics/face/c$a;->a()V

    :cond_0
    return-void
.end method
