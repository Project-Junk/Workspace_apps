.class public final Lcom/coloros/settings/utils/d;
.super Landroid/os/AsyncTask;
.source "ApplyFontTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/d$a;,
        Lcom/coloros/settings/utils/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/utils/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    sget v0, Lcom/coloros/settings/utils/d$b;->a:I

    iput v0, p0, Lcom/coloros/settings/utils/d;->d:I

    .line 43
    iput-object p2, p0, Lcom/coloros/settings/utils/d;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 5

    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    sget-object v1, Lcom/coloros/settings/utils/d$1;->a:[I

    iget v2, p0, Lcom/coloros/settings/utils/d;->d:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/e;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/e;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_2
    :try_start_0
    new-instance v0, Lcom/oppo/b/a/a;

    iget-object v1, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/b/a/a;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/utils/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/utils/d;->c:Landroid/content/Context;

    const-string v2, "com.monotype.android.font.system.default.font"

    iget-object v4, p0, Lcom/coloros/settings/utils/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/coloros/settings/utils/d;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    .line 1054
    iget-object v0, p0, Lcom/coloros/settings/utils/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/utils/d$a;

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/coloros/settings/utils/d$a;->onApplyFontResult(Z)V

    :cond_0
    return-void
.end method
