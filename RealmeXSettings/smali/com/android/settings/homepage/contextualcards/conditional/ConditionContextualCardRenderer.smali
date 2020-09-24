.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/homepage/contextualcards/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 5056
    iget v0, p2, Lcom/android/settings/homepage/contextualcards/conditional/k;->m:I

    const/16 v1, 0x178

    .line 103
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/k;->b()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p1

    .line 107
    invoke-interface {p1, p2}, Lcom/android/settings/homepage/contextualcards/c;->b(Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method

.method private synthetic b(Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    .line 6056
    iget v0, p2, Lcom/android/settings/homepage/contextualcards/conditional/k;->m:I

    const/16 v1, 0x177

    .line 78
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    .line 82
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/k;->b()I

    move-result v0

    .line 81
    invoke-virtual {p1, p3, v0}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p1

    .line 82
    invoke-interface {p1, p2}, Lcom/android/settings/homepage/contextualcards/c;->a(Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method

.method public static synthetic lambda$90rsN8nB61U8r5Eh8gtcppEu5GE(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a(Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Gr8p01H5aNS2kXYWAsGeBp5RBNw(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->b(Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 57
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 4

    .line 62
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    .line 63
    check-cast p2, Lcom/android/settings/homepage/contextualcards/conditional/k;

    .line 64
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->a:Landroid/content/Context;

    .line 1056
    iget v2, p2, Lcom/android/settings/homepage/contextualcards/conditional/k;->m:I

    const/16 v3, 0x5de

    .line 67
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;II)V

    .line 1076
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$Gr8p01H5aNS2kXYWAsGeBp5RBNw;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$Gr8p01H5aNS2kXYWAsGeBp5RBNw;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->a:Landroid/widget/ImageView;

    .line 1146
    iget-object v2, p2, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 1087
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->b:Landroid/widget/TextView;

    .line 2118
    iget-object v2, p2, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 1088
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->c:Landroid/widget/TextView;

    .line 2126
    iget-object v2, p2, Lcom/android/settings/homepage/contextualcards/b;->f:Ljava/lang/String;

    .line 1089
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4060
    iget-object v1, p2, Lcom/android/settings/homepage/contextualcards/conditional/k;->n:Ljava/lang/CharSequence;

    .line 3095
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3097
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a02a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3099
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3100
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3101
    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$90rsN8nB61U8r5Eh8gtcppEu5GE;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$90rsN8nB61U8r5Eh8gtcppEu5GE;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/homepage/contextualcards/conditional/k;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 3110
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
