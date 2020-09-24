.class final Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;
.super Landroid/database/ContentObserver;
.source "ContextualCardLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iput-object p2, p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->a:Landroid/net/Uri;

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->forceLoad()V

    :cond_0
    return-void
.end method
