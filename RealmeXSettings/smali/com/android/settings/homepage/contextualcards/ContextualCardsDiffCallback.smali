.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ContextualCardsDiffCallback.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->a:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/b;

    .line 1166
    iget-boolean v0, v0, Lcom/android/settings/homepage/contextualcards/b;->k:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/homepage/contextualcards/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->b:Ljava/util/List;

    .line 50
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/b;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
