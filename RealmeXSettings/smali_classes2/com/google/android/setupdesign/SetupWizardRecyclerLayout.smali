.class public Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;
.super Lcom/google/android/setupdesign/SetupWizardLayout;
.source "SetupWizardRecyclerLayout.java"


# instance fields
.field protected a:Lcom/google/android/setupdesign/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;B)V

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/b/g;->a(Landroid/util/AttributeSet;I)V

    .line 64
    const-class p1, Lcom/google/android/setupdesign/b/g;

    iget-object p2, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 66
    const-class p1, Lcom/google/android/setupdesign/b/i;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/b/i;

    .line 67
    new-instance p2, Lcom/google/android/setupdesign/b/h;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/setupdesign/b/h;-><init>(Lcom/google/android/setupdesign/b/i;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1092
    iput-object p2, p1, Lcom/google/android/setupdesign/b/i;->a:Lcom/google/android/setupdesign/b/i$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 103
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_recycler_template:I

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 95
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_recycler_view:I

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 1153
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 110
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lcom/google/android/setupdesign/b/g;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupdesign/b/g;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SetupWizardRecyclerLayout should use a template with recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/g;->b()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 2251
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 1220
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->e:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 2225
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->f:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 2220
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->e:I

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    .line 1143
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 73
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/SetupWizardLayout;->onLayout(ZIIII)V

    .line 74
    iget-object p1, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/b/g;->a()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/g;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a:Lcom/google/android/setupdesign/b/g;

    const/4 v1, 0x0

    .line 1191
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupdesign/b/g;->a(II)V

    return-void
.end method
