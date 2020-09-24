.class public abstract Landroidx/recyclerview/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$s$b;,
        Landroidx/recyclerview/widget/RecyclerView$s$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/RecyclerView$i;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$s$a;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11754
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    .line 11771
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$s$a;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .line 11952
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract a()V
.end method

.method a(II)V
    .locals 5

    .line 11901
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11902
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 11903
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->f()V

    .line 11911
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_3

    .line 11912
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11913
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 11914
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 11915
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 11916
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 11914
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 11921
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    .line 11923
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 11925
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    if-ne v1, v3, :cond_4

    .line 11926
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V

    .line 11927
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11928
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->f()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    .line 11930
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11931
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11934
    :cond_5
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    if-eqz v1, :cond_6

    .line 11935
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$s;->a(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V

    .line 11936
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a()Z

    move-result p1

    .line 11937
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$s$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$s$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_6

    .line 11940
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 11941
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    .line 11942
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    :cond_6
    return-void
.end method

.method protected abstract a(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 3

    .line 11992
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 11994
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 11995
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$s$a;)V
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 2

    .line 11789
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->G:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->b()V

    .line 11791
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Z

    if-eqz v0, :cond_0

    .line 11792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11793
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    .line 11792
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11798
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11799
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11800
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 11803
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Landroidx/recyclerview/widget/RecyclerView$t;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 p1, 0x1

    .line 11804
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    .line 11805
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    .line 11806
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->i()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->e(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->a()V

    .line 11808
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->G:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    .line 11810
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Z

    return-void

    .line 11801
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .line 11979
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11980
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 11814
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    return-void
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 2

    .line 11829
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->e()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 11830
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$s$b;

    if-eqz v1, :cond_0

    .line 11831
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$s$b;

    .line 11832
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$s$b;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 11834
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$s$b;

    .line 11835
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    .line 11834
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    .line 11966
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 1

    .line 11845
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-object v0
.end method

.method protected final f()V
    .locals 3

    .line 11855
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11858
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    .line 11859
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->b()V

    .line 11860
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->J:Landroidx/recyclerview/widget/RecyclerView$t;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 v1, 0x0

    .line 11861
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:Landroid/view/View;

    .line 11862
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    .line 11863
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    .line 11865
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 11867
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11868
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public g()Z
    .locals 1

    .line 11879
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 11887
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 11897
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 11959
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v0

    return v0
.end method
