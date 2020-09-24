.class public final Lcom/google/b/g;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field public a:Lcom/google/b/b/d;

.field public b:Lcom/google/b/t;

.field public c:Lcom/google/b/e;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/b/b/d;->a:Lcom/google/b/b/d;

    iput-object v0, p0, Lcom/google/b/g;->a:Lcom/google/b/b/d;

    .line 80
    sget-object v0, Lcom/google/b/t;->a:Lcom/google/b/t;

    iput-object v0, p0, Lcom/google/b/g;->b:Lcom/google/b/t;

    .line 81
    sget-object v0, Lcom/google/b/d;->a:Lcom/google/b/d;

    iput-object v0, p0, Lcom/google/b/g;->c:Lcom/google/b/e;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/b/g;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/g;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/b/g;->g:Z

    const/4 v1, 0x2

    .line 89
    iput v1, p0, Lcom/google/b/g;->i:I

    .line 90
    iput v1, p0, Lcom/google/b/g;->j:I

    .line 91
    iput-boolean v0, p0, Lcom/google/b/g;->k:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/b/g;->l:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/google/b/g;->m:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/b/g;->n:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/b/g;->o:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/b/g;->p:Z

    return-void
.end method
