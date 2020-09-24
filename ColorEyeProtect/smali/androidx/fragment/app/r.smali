.class Landroidx/fragment/app/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field private a:Landroidx/lifecycle/i;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    :cond_0
    return-void
.end method

.method a(Landroidx/lifecycle/e$a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method b()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->a()V

    iget-object p0, p0, Landroidx/fragment/app/r;->a:Landroidx/lifecycle/i;

    return-object p0
.end method
