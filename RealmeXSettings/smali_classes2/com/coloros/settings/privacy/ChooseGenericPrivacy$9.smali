.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;
.super Landroid/os/AsyncTask;
.source "ChooseGenericPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request$Builder;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/DialogInterface;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lokhttp3/Request$Builder;ZLandroid/content/DialogInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->f:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->a:Lokhttp3/Request$Builder;

    iput-boolean p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->b:Z

    iput-object p4, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->c:Landroid/content/DialogInterface;

    iput-object p5, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    .line 769
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 770
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->a:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9$1;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseGenericPrivacy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final onPreExecute()V
    .locals 0

    .line 762
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
