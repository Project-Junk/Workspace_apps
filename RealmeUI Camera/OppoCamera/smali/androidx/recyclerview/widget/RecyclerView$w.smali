.class public abstract Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation


# static fields
.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/RecyclerView$w;

.field i:Landroidx/recyclerview/widget/RecyclerView$w;

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroidx/recyclerview/widget/RecyclerView$p;

.field n:Z

.field o:I

.field p:Landroidx/recyclerview/widget/RecyclerView;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11053
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$w;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 11080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10947
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    .line 10948
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const-wide/16 v1, -0x1

    .line 10949
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:J

    .line 10950
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:I

    .line 10951
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    const/4 v1, 0x0

    .line 10954
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 10956
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->i:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11055
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    .line 11056
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Ljava/util/List;

    const/4 v2, 0x0

    .line 11058
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    .line 11062
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11064
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    .line 11068
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    .line 11071
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->o:I

    if-eqz p1, :cond_0

    .line 11084
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    return-void

    .line 11082
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 1

    .line 11303
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    .line 11305
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 11433
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 11434
    invoke-static {v0}, Landroidx/core/g/u;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method B()Z
    .locals 1

    .line 11442
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method C()Z
    .locals 1

    .line 11450
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method D()Z
    .locals 1

    .line 11454
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(II)V
    .locals 2

    .line 11286
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    return-void
.end method

.method a(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 11088
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->c(I)V

    .line 11089
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->a(IZ)V

    .line 11090
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    return-void
.end method

.method a(IZ)V
    .locals 2

    .line 11094
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11095
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    .line 11097
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    if-ne v0, v1, :cond_1

    .line 11098
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11101
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    .line 11103
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    .line 11104
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11105
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    :cond_3
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V
    .locals 0

    .line 11249
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11250
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 11350
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11351
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    goto :goto_0

    .line 11353
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 11354
    invoke-static {v0}, Landroidx/core/g/u;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    :goto_0
    const/4 v0, 0x4

    .line 11356
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11295
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->c(I)V

    goto :goto_0

    .line 11296
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11297
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 11298
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 11364
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    const/4 p1, 0x0

    .line 11366
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    return-void
.end method

.method b(I)Z
    .locals 1

    .line 11270
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c()V
    .locals 1

    const/4 v0, -0x1

    .line 11110
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    .line 11111
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    return-void
.end method

.method c(I)V
    .locals 1

    .line 11290
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    return-void
.end method

.method public final c(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 11408
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    .line 11409
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11410
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    .line 11415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11418
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 11419
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    if-nez p1, :cond_3

    .line 11420
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    :cond_3
    :goto_1
    return-void
.end method

.method d()V
    .locals 2

    .line 11115
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11116
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .line 11121
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11134
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    :cond_0
    return v0
.end method

.method public final g()I
    .locals 2

    .line 11160
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    :cond_0
    return v0
.end method

.method public final h()I
    .locals 1

    .line 11186
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 11189
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 11204
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    return v0
.end method

.method public final j()J
    .locals 2

    .line 11214
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:J

    return-wide v0
.end method

.method public final k()I
    .locals 1

    .line 11221
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:I

    return v0
.end method

.method l()Z
    .locals 1

    .line 11225
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m()V
    .locals 1

    .line 11229
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method n()Z
    .locals 1

    .line 11233
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method o()V
    .locals 1

    .line 11237
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    return-void
.end method

.method p()V
    .locals 1

    .line 11241
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    return-void
.end method

.method q()Z
    .locals 1

    .line 11254
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method r()Z
    .locals 1

    .line 11258
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method s()Z
    .locals 2

    .line 11262
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method t()Z
    .locals 1

    .line 11266
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11373
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11374
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11376
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11377
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    .line 11378
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11380
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11381
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->s()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11382
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11383
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11384
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11385
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11386
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->A()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11387
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11389
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    .line 11390
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Z
    .locals 1

    .line 11274
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method v()Z
    .locals 2

    .line 11278
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method w()Z
    .locals 1

    .line 11282
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method x()V
    .locals 1

    .line 11310
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11311
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11313
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    return-void
.end method

.method y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11317
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11318
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11323
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Ljava/util/List;

    return-object v0

    .line 11320
    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$w;->q:Ljava/util/List;

    return-object v0

    .line 11326
    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$w;->q:Ljava/util/List;

    return-object v0
.end method

.method z()V
    .locals 4

    const/4 v0, 0x0

    .line 11331
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:I

    const/4 v1, -0x1

    .line 11332
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    .line 11333
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const-wide/16 v2, -0x1

    .line 11334
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:J

    .line 11335
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    .line 11336
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    const/4 v2, 0x0

    .line 11337
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11338
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->i:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->x()V

    .line 11340
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    .line 11341
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->o:I

    .line 11342
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
