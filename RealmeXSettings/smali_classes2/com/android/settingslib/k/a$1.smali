.class final Lcom/android/settingslib/k/a$1;
.super Ljava/lang/Object;
.source "SignalDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/k/a;


# direct methods
.method constructor <init>(Lcom/android/settingslib/k/a;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-static {v0}, Lcom/android/settingslib/k/a;->a(Lcom/android/settingslib/k/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-static {v0}, Lcom/android/settingslib/k/a;->b(Lcom/android/settingslib/k/a;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-virtual {v0}, Lcom/android/settingslib/k/a;->invalidateSelf()V

    .line 265
    iget-object v0, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-static {v0}, Lcom/android/settingslib/k/a;->d(Lcom/android/settingslib/k/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/k/a$1;->a:Lcom/android/settingslib/k/a;

    invoke-static {v1}, Lcom/android/settingslib/k/a;->c(Lcom/android/settingslib/k/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
