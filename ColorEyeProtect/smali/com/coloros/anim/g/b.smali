.class public Lcom/coloros/anim/g/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/coloros/anim/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/coloros/anim/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/g/b;->b:Lcom/coloros/anim/g/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/g/b;->b:Lcom/coloros/anim/g/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/g/b;->b:Lcom/coloros/anim/g/a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/coloros/anim/g/a;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/coloros/anim/g/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/g/b;->a(Lcom/coloros/anim/g/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/coloros/anim/g/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/a<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/coloros/anim/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/a/b/a<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/anim/g/b;->c:Lcom/coloros/anim/a/b/a;

    return-void
.end method
