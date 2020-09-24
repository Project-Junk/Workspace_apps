.class final Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;
.super Ljava/lang/Object;
.source "ColorMediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/storage/VolumeInfo;

.field final synthetic b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->a:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->a:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_1

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Format : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->a:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorMediaFormat"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;->b:Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->finish()V

    return-void
.end method
