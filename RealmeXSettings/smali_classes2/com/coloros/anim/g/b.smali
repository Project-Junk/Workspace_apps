.class public final Lcom/coloros/anim/g/b;
.super Ljava/lang/Object;
.source "EffectiveValueCallback.java"


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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Lcom/coloros/anim/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/g/b;->c:Lcom/coloros/anim/g/a;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/coloros/anim/g/a;

    invoke-direct {v0}, Lcom/coloros/anim/g/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/g/b;->c:Lcom/coloros/anim/g/a;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/coloros/anim/g/b;->c:Lcom/coloros/anim/g/a;

    .line 1025
    iput p1, v0, Lcom/coloros/anim/g/a;->a:F

    .line 1026
    iput p2, v0, Lcom/coloros/anim/g/a;->b:F

    .line 1027
    iput-object p3, v0, Lcom/coloros/anim/g/a;->c:Ljava/lang/Object;

    .line 1028
    iput-object p4, v0, Lcom/coloros/anim/g/a;->d:Ljava/lang/Object;

    .line 1029
    iput p5, v0, Lcom/coloros/anim/g/a;->e:F

    .line 1030
    iput p6, v0, Lcom/coloros/anim/g/a;->f:F

    .line 1031
    iput p7, v0, Lcom/coloros/anim/g/a;->g:F

    .line 1037
    iget-object p1, p0, Lcom/coloros/anim/g/b;->a:Ljava/lang/Object;

    return-object p1
.end method
