.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;
.super Ljava/lang/Object;
.source "MusicFilePickerListView.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/music/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Landroid/net/Uri;Landroid/net/Uri;)V
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

    .line 230
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/ringtone/b;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;

    move-result-object v0

    .line 1105
    iput-object p3, v0, Lcom/coloros/settings/ringtone/music/c;->f:Ljava/util/HashMap;

    .line 236
    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;

    move-result-object p3

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/coloros/settings/ringtone/music/c;->a(Ljava/lang/Object;)V

    .line 237
    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/a;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/coloros/settings/ringtone/music/a;->a(Ljava/util/ArrayList;)V

    .line 238
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setSelectionFromTop(II)V

    return-void
.end method
