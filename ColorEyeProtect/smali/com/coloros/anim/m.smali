.class public Lcom/coloros/anim/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/m$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/m;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/m;->b:Ljava/util/Map;

    new-instance v0, Lcom/coloros/anim/m$1;

    invoke-direct {v0, p0}, Lcom/coloros/anim/m$1;-><init>(Lcom/coloros/anim/m;)V

    iput-object v0, p0, Lcom/coloros/anim/m;->c:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/m;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/anim/m;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/m;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/f/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coloros/anim/f/e;

    invoke-direct {v0}, Lcom/coloros/anim/f/e;-><init>()V

    iget-object v1, p0, Lcom/coloros/anim/m;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/coloros/anim/f/e;->a(F)V

    const-string v0, "__container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/anim/m;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/m$a;

    invoke-interface {p1, p2}, Lcom/coloros/anim/m$a;->a(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/anim/m;->d:Z

    return-void
.end method
