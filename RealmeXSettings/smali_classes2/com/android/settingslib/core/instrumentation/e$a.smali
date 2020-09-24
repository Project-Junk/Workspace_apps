.class final Lcom/android/settingslib/core/instrumentation/e$a;
.super Landroid/os/AsyncTask;
.source "SharedPreferencesLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/core/instrumentation/e;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/instrumentation/e;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/e$a;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/instrumentation/e;B)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/instrumentation/e$a;-><init>(Lcom/android/settingslib/core/instrumentation/e;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9

    const/4 v0, 0x0

    .line 174
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 175
    aget-object p1, p1, v1

    .line 176
    iget-object v1, p0, Lcom/android/settingslib/core/instrumentation/e$a;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/e;->a(Lcom/android/settingslib/core/instrumentation/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    :try_start_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/high16 v2, 0x400000

    .line 186
    :try_start_1
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 187
    iget-object v1, p0, Lcom/android/settingslib/core/instrumentation/e$a;->a:Lcom/android/settingslib/core/instrumentation/e;

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/settingslib/core/instrumentation/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    iget-object v3, v1, Lcom/android/settingslib/core/instrumentation/e;->b:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v4, 0x0

    const/16 v5, 0x355

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    :catch_1
    iget-object v1, p0, Lcom/android/settingslib/core/instrumentation/e$a;->a:Lcom/android/settingslib/core/instrumentation/e;

    invoke-static {v1, v0, p1}, Lcom/android/settingslib/core/instrumentation/e;->a(Lcom/android/settingslib/core/instrumentation/e;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/instrumentation/e$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
