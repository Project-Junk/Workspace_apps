.class final Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "diskId"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "formatDiskId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    new-instance v0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;-><init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    .line 96
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "format_final_click_settings"

    goto :goto_0

    :cond_1
    const-string v0, "format_final_click_others"

    .line 95
    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
