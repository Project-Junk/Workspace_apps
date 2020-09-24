.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;
.super Ljava/lang/Object;
.source "MusicFilePickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    .line 114
    invoke-static {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120e9c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
