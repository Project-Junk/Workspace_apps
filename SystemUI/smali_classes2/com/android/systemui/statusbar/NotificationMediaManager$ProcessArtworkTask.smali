.class final Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;
.super Landroid/os/AsyncTask;
.source "NotificationMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessArtworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowEnterAnimation:Z

.field private final mManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetaDataChanged:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V
    .locals 1

    .line 848
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 849
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 850
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mMetaDataChanged:Z

    .line 851
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mAllowEnterAnimation:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 857
    array-length v2, p1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 862
    aget-object v2, p1, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "NotificationMediaManager"

    const-string p1, "Why the bitmap is isRecycled ? system ui code has no logic to do it"

    .line 863
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 868
    :cond_1
    aget-object p0, p1, p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$600(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 841
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 883
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p1, :cond_1

    .line 887
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/AsyncTask;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 875
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/AsyncTask;)V

    .line 876
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mMetaDataChanged:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mAllowEnterAnimation:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$800(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZLandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
