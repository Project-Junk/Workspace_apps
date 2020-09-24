.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;
.super Ljava/lang/Object;
.source "MusicFilePickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/b;

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;Lcom/coloros/settings/ringtone/b;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->c:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->a:Lcom/coloros/settings/ringtone/b;

    iput p3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->c:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->a:Lcom/coloros/settings/ringtone/b;

    invoke-static {v0, v1}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Lcom/coloros/settings/ringtone/b;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->a:Lcom/coloros/settings/ringtone/b;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->c:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v1, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "msg_handler_picker_button"

    if-eqz v1, :cond_1

    .line 136
    iget v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->b:I

    invoke-static {v1, v0, v2}, Lcom/coloros/settings/ringtone/d;->a(ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2$1;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    invoke-static {v2}, Lcom/coloros/settings/ringtone/d;->a(Ljava/lang/String;)V

    return-void
.end method
