.class abstract Lcom/coloros/settings/a/d;
.super Ljava/lang/Object;
.source "SmoothScrollToTopTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:Z

.field protected f:Lcom/coloros/settings/a/d$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/coloros/settings/a/d;->a:Z

    .line 30
    iput v0, p0, Lcom/coloros/settings/a/d;->d:I

    .line 31
    iput-boolean v0, p0, Lcom/coloros/settings/a/d;->e:Z

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/a/d;->b:Landroid/view/View;

    .line 43
    iput v0, p0, Lcom/coloros/settings/a/d;->c:I

    return-void
.end method

.method private synthetic e()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/a/d;->c()V

    return-void
.end method

.method public static synthetic lambda$omDPphNme8t9Bt-vPc3B8RJFrbc(Lcom/coloros/settings/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/a/d;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settings/a/d$a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/settings/a/d;->f:Lcom/coloros/settings/a/d$a;

    return-void
.end method

.method public abstract b()V
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/coloros/settings/a/d;->e:Z

    .line 70
    iput v0, p0, Lcom/coloros/settings/a/d;->d:I

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/a/d;->f:Lcom/coloros/settings/a/d$a;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/coloros/settings/a/d$a;->scrolledToTop()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/a/d;->b()V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/a/d;->b:Landroid/view/View;

    new-instance v1, Lcom/coloros/settings/a/-$$Lambda$d$omDPphNme8t9Bt-vPc3B8RJFrbc;

    invoke-direct {v1, p0}, Lcom/coloros/settings/a/-$$Lambda$d$omDPphNme8t9Bt-vPc3B8RJFrbc;-><init>(Lcom/coloros/settings/a/d;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/a/d;->d()V

    return-void
.end method
