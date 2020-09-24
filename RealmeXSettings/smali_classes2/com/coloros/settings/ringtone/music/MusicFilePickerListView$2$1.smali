.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2$1;
.super Ljava/lang/Object;
.source "MusicFilePickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;

    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;->c:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/c;->b()V

    return-void
.end method
