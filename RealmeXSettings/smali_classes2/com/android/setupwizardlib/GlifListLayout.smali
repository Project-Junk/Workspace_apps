.class public Lcom/android/setupwizardlib/GlifListLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private a:Lcom/android/setupwizardlib/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifListLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 63
    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifListLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifListLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/setupwizardlib/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/setupwizardlib/b/e;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 74
    const-class p1, Lcom/android/setupwizardlib/b/e;

    iget-object p2, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/GlifListLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 76
    const-class p1, Lcom/android/setupwizardlib/b/j;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifListLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/b/j;

    .line 77
    new-instance p2, Lcom/android/setupwizardlib/b/f;

    .line 78
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/setupwizardlib/b/f;-><init>(Lcom/android/setupwizardlib/b/j;Landroid/widget/ListView;)V

    .line 1101
    iput-object p2, p1, Lcom/android/setupwizardlib/b/j;->a:Lcom/android/setupwizardlib/b/j$b;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 90
    sget p2, Lcom/android/setupwizardlib/b$e;->suw_glif_list_template:I

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x102000a

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/e;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 3222
    iget-object v0, v0, Lcom/android/setupwizardlib/b/e;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 2184
    iget v0, v0, Lcom/android/setupwizardlib/b/e;->b:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 3191
    iget v0, v0, Lcom/android/setupwizardlib/b/e;->c:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 3184
    iget v0, v0, Lcom/android/setupwizardlib/b/e;->b:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    .line 2092
    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/e;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 83
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/GlifLayout;->onLayout(ZIIII)V

    .line 84
    iget-object p1, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/b/e;->b()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/e;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->a:Lcom/android/setupwizardlib/b/e;

    const/4 v1, 0x0

    .line 2153
    invoke-virtual {v0, p1, v1}, Lcom/android/setupwizardlib/b/e;->a(II)V

    return-void
.end method
