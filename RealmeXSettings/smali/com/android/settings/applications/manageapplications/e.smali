.class public final Lcom/android/settings/applications/manageapplications/e;
.super Ljava/lang/Object;
.source "PhotosViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/settingslib/applications/f;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/e;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/e;->b:Lcom/android/settingslib/applications/f;

    .line 50
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/e;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/e;->e:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/e;->b:Lcom/android/settingslib/applications/f;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/e;->e:Landroid/os/UserHandle;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$c;

    move-result-object v0

    .line 60
    iget-wide v1, v0, Lcom/android/settingslib/applications/f$c;->d:J

    iget-wide v3, v0, Lcom/android/settingslib/applications/f$c;->c:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/e;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/e;->d:J

    const-string v1, "PhotosViewHolderCtrl"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x80000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.FROM_STORAGE"

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3

    const v0, 0x7f0807fe

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/e;->a:Landroid/content/Context;

    const v1, 0x7f121566

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/e;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/e;->d:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
