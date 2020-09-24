.class final Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;
.super Ljava/lang/Object;
.source "ContextualCardManager.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/homepage/contextualcards/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;>;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 383
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 385
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown loader id: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 365
    check-cast p2, Ljava/util/List;

    .line 1392
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;->a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;

    if-eqz p1, :cond_0

    .line 1393
    invoke-interface {p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
