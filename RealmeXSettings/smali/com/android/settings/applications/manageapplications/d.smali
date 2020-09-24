.class public final Lcom/android/settings/applications/manageapplications/d;
.super Ljava/lang/Object;
.source "MusicViewHolderController.java"

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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/d;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/d;->b:Lcom/android/settingslib/applications/f;

    .line 53
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/d;->c:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/d;->e:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/d;->b:Lcom/android/settingslib/applications/f;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/d;->e:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$c;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settingslib/applications/f$c;->b:J

    iput-wide v0, p0, Lcom/android/settings/applications/manageapplications/d;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/d;->d:J

    const-string v1, "MusicViewHolderCtrl"

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    .line 84
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.document/root"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/d;->e:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3

    const v0, 0x7f080712

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/d;->a:Landroid/content/Context;

    const v1, 0x7f120256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/d;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/d;->d:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
