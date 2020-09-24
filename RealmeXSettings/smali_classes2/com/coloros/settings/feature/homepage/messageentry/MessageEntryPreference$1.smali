.class final Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "MessageEntryPreference"

    const-string v0, "doCollapseAnim end"

    .line 307
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 311
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "MessageEntryPreference"

    const-string v0, "doCollapseAnim start"

    .line 300
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 302
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;->b:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/animation/LayoutTransition;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    return-void
.end method
