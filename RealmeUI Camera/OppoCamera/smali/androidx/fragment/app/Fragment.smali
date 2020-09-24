.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/t;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$a;,
        Landroidx/fragment/app/Fragment$c;,
        Landroidx/fragment/app/Fragment$b;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final j:Ljava/lang/Object;


# instance fields
.field A:Landroidx/fragment/app/i;

.field B:Landroidx/fragment/app/g;

.field C:Landroidx/fragment/app/i;

.field D:Landroidx/fragment/app/Fragment;

.field E:I

.field F:I

.field G:Ljava/lang/String;

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Landroid/view/ViewGroup;

.field O:Landroid/view/View;

.field P:Landroid/view/View;

.field Q:Z

.field R:Z

.field S:Landroidx/fragment/app/Fragment$a;

.field T:Ljava/lang/Runnable;

.field U:Z

.field V:Z

.field W:F

.field X:Landroid/view/LayoutInflater;

.field Y:Z

.field Z:Landroidx/lifecycle/e$b;

.field private a:Ljava/lang/Boolean;

.field aa:Landroidx/lifecycle/i;

.field ab:Landroidx/fragment/app/o;

.field ac:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field ad:Landroidx/savedstate/b;

.field private b:Z

.field private c:I

.field k:I

.field l:Landroid/os/Bundle;

.field m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Boolean;

.field o:Ljava/lang/String;

.field p:Landroid/os/Bundle;

.field q:Landroidx/fragment/app/Fragment;

.field r:Ljava/lang/String;

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0}, Landroidx/fragment/app/i;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    .line 221
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    .line 230
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    .line 267
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/m;

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 521
    invoke-static {p0, p1}, Landroidx/fragment/app/f;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    .line 523
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 526
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 541
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 538
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 534
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 530
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private a()V
    .locals 2

    .line 468
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    .line 469
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/g;)V

    :cond_0
    return-void
.end method

.method private am()Landroidx/fragment/app/Fragment$a;
    .locals 1

    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    .line 2876
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    return-object v0
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    .line 1686
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    return-object v0
.end method

.method public final B()Landroid/view/View;
    .locals 3

    .line 1697
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1699
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x1

    .line 1757
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x1

    .line 1828
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    .line 1867
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method F()V
    .locals 3

    .line 1877
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1879
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    .line 1880
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    .line 1881
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    .line 1882
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->w:Z

    .line 1883
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->x:Z

    .line 1884
    iput v0, p0, Landroidx/fragment/app/Fragment;->z:I

    const/4 v1, 0x0

    .line 1885
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    .line 1886
    new-instance v2, Landroidx/fragment/app/i;

    invoke-direct {v2}, Landroidx/fragment/app/i;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    .line 1887
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    .line 1888
    iput v0, p0, Landroidx/fragment/app/Fragment;->E:I

    .line 1889
    iput v0, p0, Landroidx/fragment/app/Fragment;->F:I

    .line 1890
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    .line 1891
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    .line 1892
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public H()Ljava/lang/Object;
    .locals 1

    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2101
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public I()Ljava/lang/Object;
    .locals 2

    .line 2137
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2140
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public J()Ljava/lang/Object;
    .locals 1

    .line 2177
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2180
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public K()Ljava/lang/Object;
    .locals 2

    .line 2215
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public L()Ljava/lang/Object;
    .locals 1

    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2251
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public M()Ljava/lang/Object;
    .locals 2

    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2289
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public N()Z
    .locals 1

    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public O()Z
    .locals 1

    .line 2340
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public O_()Landroidx/lifecycle/s;
    .locals 2

    .line 361
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p0}, Landroidx/fragment/app/i;->b(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/s;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P()V
    .locals 2

    .line 2431
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/i;->n:Landroidx/fragment/app/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2433
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    iget-object v1, v1, Landroidx/fragment/app/i;->n:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2434
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->n:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2441
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()V

    goto :goto_1

    .line 2432
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    :goto_1
    return-void
.end method

.method Q()V
    .locals 3

    .line 2451
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2454
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    .line 2455
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    .line 2456
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput-object v1, v2, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    :goto_0
    if-eqz v0, :cond_1

    .line 2459
    invoke-interface {v0}, Landroidx/fragment/app/Fragment$c;->a()V

    :cond_1
    return-void
.end method

.method R()V
    .locals 3

    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    new-instance v2, Landroidx/fragment/app/Fragment$4;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/g;Landroidx/fragment/app/d;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2574
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 2575
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2576
    :cond_0
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method S()V
    .locals 3

    .line 2628
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    .line 2629
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Z

    const/4 v0, 0x3

    .line 2630
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()V

    .line 2633
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2638
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    .line 2641
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->s()V

    return-void

    .line 2634
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method T()V
    .locals 3

    .line 2645
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    .line 2646
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Z

    const/4 v0, 0x4

    .line 2647
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2648
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2649
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()V

    .line 2650
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->t()V

    .line 2659
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Z

    return-void

    .line 2651
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method U()V
    .locals 1

    .line 2663
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    return-void
.end method

.method V()V
    .locals 2

    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2669
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2671
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    .line 2672
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->e(Z)V

    .line 2673
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->z()V

    :cond_1
    return-void
.end method

.method W()V
    .locals 1

    .line 2693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2694
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->y()V

    return-void
.end method

.method X()V
    .locals 3

    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->u()V

    .line 2776
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    .line 2779
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x3

    .line 2780
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2781
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()V

    .line 2783
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 2784
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method Y()V
    .locals 3

    .line 2790
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->v()V

    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x2

    .line 2795
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2796
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2797
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()V

    .line 2798
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 2799
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method Z()V
    .locals 3

    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->w()V

    .line 2806
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 2809
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2810
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()V

    .line 2812
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v1, :cond_1

    .line 2820
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/h;)Landroidx/loader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/a/a;->a()V

    .line 2821
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    return-void

    .line 2813
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1659
    iget p3, p0, Landroidx/fragment/app/Fragment;->c:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 1660
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2554
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 860
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(II)V
    .locals 1

    .line 2901
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->e:I

    .line 2906
    iput p2, v0, Landroidx/fragment/app/Fragment$a;->f:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1502
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1523
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1524
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/g;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1526
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1527
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1484
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1485
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/g;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1487
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1488
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1173
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1182
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 1185
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1183
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2688
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2689
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1603
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1604
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->j(Landroid/os/Bundle;)V

    .line 1605
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/i;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1606
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->q()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 2938
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method a(Landroidx/fragment/app/Fragment$c;)V
    .locals 2

    .line 2856
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    .line 2857
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2860
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2864
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    if-eqz v0, :cond_3

    .line 2865
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    :cond_3
    if-eqz p1, :cond_4

    .line 2868
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$c;->b()V

    :cond_4
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroidx/fragment/app/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()Landroidx/fragment/app/h;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_3

    .line 710
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->l()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_2

    .line 712
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " would create a target cycle"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez p1, :cond_5

    .line 717
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 718
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 719
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_6

    .line 721
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 722
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 725
    :cond_6
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 726
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 728
    :goto_3
    iput p2, p0, Landroidx/fragment/app/Fragment;->s:I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget v0, p0, Landroidx/fragment/app/Fragment;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2476
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget v0, p0, Landroidx/fragment/app/Fragment;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2478
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2480
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2481
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->z:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2483
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2484
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2485
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2487
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2488
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2489
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2491
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2496
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2512
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2518
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget v0, p0, Landroidx/fragment/app/Fragment;->s:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ac()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ac()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2527
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ah()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2535
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ah()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2538
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aj()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2542
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/h;)Landroidx/loader/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2544
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method aa()V
    .locals 3

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->x()V

    .line 2826
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x0

    .line 2827
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2828
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2829
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Y:Z

    .line 2830
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()V

    .line 2831
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2832
    :cond_0
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ab()V
    .locals 3

    const/4 v0, 0x0

    .line 2838
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d()V

    const/4 v0, 0x0

    .line 2840
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    .line 2841
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz v0, :cond_1

    .line 2849
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->x()V

    .line 2851
    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0}, Landroidx/fragment/app/i;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    :cond_0
    return-void

    .line 2842
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ac()I
    .locals 1

    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2883
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->d:I

    return v0
.end method

.method ad()I
    .locals 1

    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2897
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->e:I

    return v0
.end method

.method ae()I
    .locals 1

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2913
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->f:I

    return v0
.end method

.method af()Landroidx/core/app/l;
    .locals 1

    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2920
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->o:Landroidx/core/app/l;

    return-object v0
.end method

.method ag()Landroidx/core/app/l;
    .locals 1

    .line 2924
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2927
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->p:Landroidx/core/app/l;

    return-object v0
.end method

.method ah()Landroid/view/View;
    .locals 1

    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2934
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-object v0
.end method

.method ai()Landroid/animation/Animator;
    .locals 1

    .line 2946
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2949
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method aj()I
    .locals 1

    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2956
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->c:I

    return v0
.end method

.method ak()Z
    .locals 1

    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2967
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    return v0
.end method

.method al()Z
    .locals 1

    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2974
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    return v0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1380
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroidx/lifecycle/e;
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    return-object v0
.end method

.method b(I)V
    .locals 1

    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2890
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->d:I

    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    const/4 v0, 0x1

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 2599
    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0}, Landroidx/fragment/app/o;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    .line 2600
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 2601
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2603
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    invoke-virtual {p1}, Landroidx/fragment/app/o;->a()V

    .line 2605
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/m;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2607
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    invoke-virtual {p1}, Landroidx/fragment/app/o;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2611
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    :goto_0
    return-void

    .line 2608
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1102
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->M:Z

    .line 1104
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1105
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    invoke-virtual {p1}, Landroidx/fragment/app/g;->g()V

    :cond_0
    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 2708
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2709
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2711
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2713
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/i;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method c(I)V
    .locals 1

    .line 2960
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->c:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .line 2720
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2721
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2723
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)V

    .line 2725
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2731
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_1

    .line 2732
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2737
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1901
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1720
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .line 2757
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_1

    .line 2758
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2761
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2745
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_1

    .line 2746
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2749
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1746
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 552
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    .line 553
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 558
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/o;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/o;->a(Landroidx/lifecycle/e$a;)V

    :cond_1
    return-void

    .line 554
    :cond_2
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method f(Z)V
    .locals 1

    .line 2678
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Z)V

    .line 2679
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1838
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    .line 624
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    return-void
.end method

.method g(Z)V
    .locals 1

    .line 2683
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Z)V

    .line 2684
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->b(Z)V

    return-void
.end method

.method h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1413
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    .line 1414
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method h(Z)V
    .locals 1

    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->am()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-eqz p1, :cond_0

    .line 1434
    invoke-virtual {p1}, Landroidx/fragment/app/g;->e()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1435
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->C()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/g/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1431
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final i()Z
    .locals 1

    .line 563
    iget v0, p0, Landroidx/fragment/app/Fragment;->z:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    .line 636
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method j(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1624
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1627
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Landroid/os/Parcelable;)V

    .line 1628
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->q()V

    :cond_0
    return-void
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1736
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 663
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 666
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/i;->g()Z

    move-result v0

    return v0
.end method

.method public final l()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 736
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 742
    iget-object v0, v0, Landroidx/fragment/app/i;->g:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    const/4 v0, 0x1

    .line 2583
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x0

    .line 2584
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2585
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v1, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 2587
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Y:Z

    .line 2588
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz p1, :cond_0

    .line 2592
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void

    .line 2589
    :cond_0
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .line 761
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/g;->l()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    .line 2616
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->p()V

    const/4 v0, 0x2

    .line 2617
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2619
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 2620
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-eqz p1, :cond_0

    .line 2624
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->r()V

    return-void

    .line 2621
    :cond_0
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()Landroid/content/Context;
    .locals 3

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method n(Landroid/os/Bundle;)V
    .locals 2

    .line 2766
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2767
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->o()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 2770
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final o()Landroidx/fragment/app/c;
    .locals 1

    .line 788
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    :goto_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1999
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/c;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1844
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    return-void
.end method

.method public final p()Landroidx/fragment/app/c;
    .locals 3

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/g;->j()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final r()Landroid/content/res/Resources;
    .locals 1

    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final s()Landroidx/fragment/app/h;
    .locals 1

    .line 890
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/i;

    return-object v0
.end method

.method public final t()Landroidx/fragment/app/h;
    .locals 3

    .line 908
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroidx/fragment/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 910
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    invoke-static {p0, v0}, Landroidx/core/f/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroidx/fragment/app/Fragment;->E:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroidx/fragment/app/Fragment;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroidx/fragment/app/h;
    .locals 3

    .line 922
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/i;

    return-object v0

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 934
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 1

    .line 973
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1022
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    return v0
.end method
