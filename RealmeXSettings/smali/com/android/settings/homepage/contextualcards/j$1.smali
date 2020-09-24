.class final Lcom/android/settings/homepage/contextualcards/j$1;
.super Ljava/lang/Object;
.source "EligibleCardChecker.java"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/j;->a(Landroid/net/Uri;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroidx/slice/Slice;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Landroidx/slice/SliceViewManager;

.field final synthetic e:Lcom/android/settings/homepage/contextualcards/j;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/j;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroid/net/Uri;Landroidx/slice/SliceViewManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/j$1;->e:Lcom/android/settings/homepage/contextualcards/j;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/j$1;->a:[Landroidx/slice/Slice;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/j$1;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/j$1;->c:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/settings/homepage/contextualcards/j$1;->d:Landroidx/slice/SliceViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 3

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/j$1;->a:[Landroidx/slice/Slice;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 126
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/j$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/j$1;->d:Landroidx/slice/SliceViewManager;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/j$1;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, p0}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "EligibleCardChecker"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/j$1;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be indexed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/j$1;->d:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/j$1;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 131
    throw p1
.end method
