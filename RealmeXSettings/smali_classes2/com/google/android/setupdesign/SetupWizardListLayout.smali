.class public Lcom/google/android/setupdesign/SetupWizardListLayout;
.super Lcom/google/android/setupdesign/SetupWizardLayout;
.source "SetupWizardListLayout.java"


# instance fields
.field private a:Lcom/google/android/setupdesign/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardListLayout;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;B)V

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/setupdesign/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/b/c;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 63
    const-class p1, Lcom/google/android/setupdesign/b/c;

    iget-object p2, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardListLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 65
    const-class p1, Lcom/google/android/setupdesign/b/i;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardListLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/b/i;

    .line 66
    new-instance p2, Lcom/google/android/setupdesign/b/d;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/setupdesign/b/d;-><init>(Lcom/google/android/setupdesign/b/i;Landroid/widget/ListView;)V

    .line 1092
    iput-object p2, p1, Lcom/google/android/setupdesign/b/i;->a:Lcom/google/android/setupdesign/b/i$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 73
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_list_template:I

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x102000a

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/c;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 3204
    iget-object v0, v0, Lcom/google/android/setupdesign/b/c;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 2169
    iget v0, v0, Lcom/google/android/setupdesign/b/c;->b:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 3174
    iget v0, v0, Lcom/google/android/setupdesign/b/c;->c:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 3169
    iget v0, v0, Lcom/google/android/setupdesign/b/c;->b:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    .line 2084
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/c;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 88
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/SetupWizardLayout;->onLayout(ZIIII)V

    .line 89
    iget-object p1, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/b/c;->b()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/c;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->a:Lcom/google/android/setupdesign/b/c;

    const/4 v1, 0x0

    .line 2140
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupdesign/b/c;->a(II)V

    return-void
.end method
