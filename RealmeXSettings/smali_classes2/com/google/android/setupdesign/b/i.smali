.class public Lcom/google/android/setupdesign/b/i;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/b/i$b;,
        Lcom/google/android/setupdesign/b/i$a;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/setupdesign/b/i$b;

.field private final b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/android/setupdesign/b/i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/b/i;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/google/android/setupdesign/b/i;->c:Z

    .line 77
    iput-boolean v0, p0, Lcom/google/android/setupdesign/b/i;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/setupdesign/b/i;)Lcom/google/android/setupdesign/b/i$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/setupdesign/b/i;->e:Lcom/google/android/setupdesign/b/i$a;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/google/android/setupdesign/b/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/setupdesign/b/i$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/b/i$1;-><init>(Lcom/google/android/setupdesign/b/i;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/google/android/setupdesign/b/i;->c:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 278
    iget-boolean p1, p0, Lcom/google/android/setupdesign/b/i;->d:Z

    if-nez p1, :cond_2

    .line 279
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/b/i;->b(Z)V

    .line 280
    iput-boolean v0, p0, Lcom/google/android/setupdesign/b/i;->c:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/b/i;->b(Z)V

    .line 284
    iput-boolean p1, p0, Lcom/google/android/setupdesign/b/i;->c:Z

    .line 285
    iput-boolean v0, p0, Lcom/google/android/setupdesign/b/i;->d:Z

    :cond_2
    return-void
.end method
