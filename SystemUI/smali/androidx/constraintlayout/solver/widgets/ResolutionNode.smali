.class public Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.super Ljava/lang/Object;
.source "ResolutionNode.java"


# static fields
.field public static final REMOVED:I = 0x2

.field public static final RESOLVED:I = 0x1

.field public static final UNRESOLVED:I


# instance fields
.field dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/solver/widgets/ResolutionNode;",
            ">;"
        }
    .end annotation
.end field

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    return-void
.end method


# virtual methods
.method public addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public didResolve()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 70
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->resolve()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 48
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    .line 49
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidateAnchors()V
    .locals 1

    .line 54
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 57
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    .line 58
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->invalidateAnchors()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isResolved()Z
    .locals 1

    .line 76
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    .line 43
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
