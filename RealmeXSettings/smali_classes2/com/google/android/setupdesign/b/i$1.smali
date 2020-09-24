.class final Lcom/google/android/setupdesign/b/i$1;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/b/i;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/setupdesign/b/i;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/b/i;Z)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/android/setupdesign/b/i$1;->b:Lcom/google/android/setupdesign/b/i;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/b/i$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/setupdesign/b/i$1;->b:Lcom/google/android/setupdesign/b/i;

    invoke-static {v0}, Lcom/google/android/setupdesign/b/i;->a(Lcom/google/android/setupdesign/b/i;)Lcom/google/android/setupdesign/b/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/setupdesign/b/i$1;->b:Lcom/google/android/setupdesign/b/i;

    invoke-static {v0}, Lcom/google/android/setupdesign/b/i;->a(Lcom/google/android/setupdesign/b/i;)Lcom/google/android/setupdesign/b/i$a;

    :cond_0
    return-void
.end method
