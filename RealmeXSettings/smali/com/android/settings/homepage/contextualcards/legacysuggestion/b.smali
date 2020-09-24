.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;
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
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;->b:Lcom/android/settings/homepage/contextualcards/i;

    return-void
.end method

.method private synthetic a(Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;->b:Lcom/android/settings/homepage/contextualcards/i;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result v1

    .line 58
    invoke-virtual {p2, v0, v1}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p2

    .line 59
    invoke-interface {p2, p1}, Lcom/android/settings/homepage/contextualcards/c;->a(Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method

.method public static synthetic lambda$_blkUmRCBZkxffo0_UgqPTD2Smk(Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;->a(Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;)V

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
    new-instance p2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 2

    .line 53
    check-cast p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;

    .line 54
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;->a:Landroid/widget/ImageView;

    .line 1146
    iget-object v1, p2, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;->b:Landroid/widget/TextView;

    .line 2118
    iget-object v1, p2, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;->c:Landroid/widget/TextView;

    .line 2126
    iget-object v1, p2, Lcom/android/settings/homepage/contextualcards/b;->f:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b$a;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$b$_blkUmRCBZkxffo0_UgqPTD2Smk;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$b$_blkUmRCBZkxffo0_UgqPTD2Smk;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;Lcom/android/settings/homepage/contextualcards/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
