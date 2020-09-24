.class public final Lcom/android/settingslib/deviceinfo/d$a;
.super Landroid/os/AsyncTask;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/deviceinfo/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/deviceinfo/d;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/deviceinfo/d;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/d$a;->a:Lcom/android/settingslib/deviceinfo/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/deviceinfo/d;B)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/d$a;-><init>(Lcom/android/settingslib/deviceinfo/d;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3135
    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/d$a;->a:Lcom/android/settingslib/deviceinfo/d;

    .line 4044
    invoke-virtual {p1}, Lcom/android/settingslib/deviceinfo/d;->a()Lcom/android/settingslib/deviceinfo/d$b;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 132
    check-cast p1, Lcom/android/settingslib/deviceinfo/d$b;

    .line 1140
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/d$a;->a:Lcom/android/settingslib/deviceinfo/d;

    .line 2044
    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/d$a;->a:Lcom/android/settingslib/deviceinfo/d;

    .line 3044
    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/d;->a:Ljava/lang/ref/WeakReference;

    .line 1140
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/d$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1142
    invoke-interface {v0, p1}, Lcom/android/settingslib/deviceinfo/d$c;->a(Lcom/android/settingslib/deviceinfo/d$b;)V

    :cond_1
    return-void
.end method
