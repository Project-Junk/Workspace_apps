.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionHeaderContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/homepage/contextualcards/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/i;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    return-void
.end method

.method private synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0113

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1146
    iget-object p2, p2, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x175

    const/16 v3, 0x5de

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->b:Lcom/android/settings/homepage/contextualcards/i;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a:Landroid/content/Context;

    const/4 v0, 0x4

    .line 75
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const/4 p2, 0x1

    .line 1071
    iput-boolean p2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a:Z

    .line 78
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->a()V

    return-void
.end method

.method public static synthetic lambda$KMg4fGM4WAsfSJZ_ZGfl-ioxB1w(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a(Lcom/android/settingslib/core/instrumentation/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$a0LdFpTL3LBHimbOeLYIVDkbqmI(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 51
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 2

    .line 56
    check-cast p2, Lcom/android/settings/homepage/contextualcards/conditional/g;

    .line 58
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    .line 59
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1047
    iget-object p2, p2, Lcom/android/settings/homepage/contextualcards/conditional/g;->l:Ljava/util/List;

    .line 62
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionHeaderContextualCardRenderer$a0LdFpTL3LBHimbOeLYIVDkbqmI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionHeaderContextualCardRenderer$a0LdFpTL3LBHimbOeLYIVDkbqmI;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 68
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionHeaderContextualCardRenderer$KMg4fGM4WAsfSJZ_ZGfl-ioxB1w;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionHeaderContextualCardRenderer$KMg4fGM4WAsfSJZ_ZGfl-ioxB1w;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
