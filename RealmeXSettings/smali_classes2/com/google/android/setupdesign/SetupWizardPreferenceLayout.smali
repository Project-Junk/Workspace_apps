.class public Lcom/google/android/setupdesign/SetupWizardPreferenceLayout;
.super Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;
.source "SetupWizardPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 100
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_preference_template:I

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 86
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_layout_content:I

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/SetupWizardRecyclerLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    sget v1, Lcom/google/android/setupdesign/b$e;->sud_preference_recycler_view:I

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    new-instance v1, Lcom/google/android/setupdesign/b/g;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupdesign/b/g;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/SetupWizardPreferenceLayout;->a:Lcom/google/android/setupdesign/b/g;

    return-void
.end method
