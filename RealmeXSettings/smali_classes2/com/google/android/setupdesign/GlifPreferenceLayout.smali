.class public Lcom/google/android/setupdesign/GlifPreferenceLayout;
.super Lcom/google/android/setupdesign/GlifRecyclerLayout;
.source "GlifPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 101
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_glif_preference_template:I

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 87
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_layout_content:I

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    sget v1, Lcom/google/android/setupdesign/b$e;->sud_glif_preference_recycler_view:I

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    new-instance v1, Lcom/google/android/setupdesign/b/g;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupdesign/b/g;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;->b:Lcom/google/android/setupdesign/b/g;

    return-void
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 1143
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
