.class Landroidx/fragment/app/j$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/j$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Landroidx/fragment/app/j;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/j$f;->d:Landroidx/fragment/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/j$f;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/fragment/app/j$f;->b:I

    iput p4, p0, Landroidx/fragment/app/j$f;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/j$f;->d:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/fragment/app/j$f;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j$f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j$f;->d:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getChildFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j$f;->d:Landroidx/fragment/app/j;

    iget-object v3, p0, Landroidx/fragment/app/j$f;->a:Ljava/lang/String;

    iget v4, p0, Landroidx/fragment/app/j$f;->b:I

    iget v5, p0, Landroidx/fragment/app/j$f;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
