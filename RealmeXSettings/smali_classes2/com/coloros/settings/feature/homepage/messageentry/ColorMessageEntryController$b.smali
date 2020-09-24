.class final Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;
.super Landroid/os/AsyncTask;
.source "ColorMessageEntryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/coloros/settings/background/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2135
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;

    if-eqz p1, :cond_1

    .line 2136
    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2139
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 126
    check-cast p1, Ljava/util/List;

    .line 1144
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;

    if-eqz v0, :cond_1

    .line 1145
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;Ljava/util/List;)Ljava/util/List;

    .line 1149
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V

    :cond_1
    :goto_0
    return-void
.end method
