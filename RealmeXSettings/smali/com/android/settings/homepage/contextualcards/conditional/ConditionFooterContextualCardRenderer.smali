.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionFooterContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/homepage/contextualcards/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x175

    const/16 v3, 0x5de

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->a:Landroid/content/Context;

    const/4 v0, 0x5

    .line 62
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const/4 p2, 0x0

    .line 1071
    iput-boolean p2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a:Z

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a()V

    return-void
.end method

.method public static synthetic lambda$1IBcxHPk8xRazw07hB-9JrFkgfk(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->a(Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 48
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 1

    .line 53
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionFooterContextualCardRenderer$1IBcxHPk8xRazw07hB-9JrFkgfk;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionFooterContextualCardRenderer$1IBcxHPk8xRazw07hB-9JrFkgfk;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
