.class public Lcom/google/android/setupdesign/b/a;
.super Ljava/lang/Object;
.source "HeaderMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/setupcompat/b$e;->SucHeaderMixin:[I

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/google/android/setupcompat/b$e;->SucHeaderMixin_sucHeaderText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/b/a;->a(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    sget p2, Lcom/google/android/setupcompat/b$e;->SucHeaderMixin_sucHeaderTextColor:I

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/b/a;->a(Landroid/content/res/ColorStateList;)V

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupcompat/b$b;->suc_layout_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
