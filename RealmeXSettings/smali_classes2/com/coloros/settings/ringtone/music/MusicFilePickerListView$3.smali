.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;
.super Ljava/lang/Object;
.source "MusicFilePickerListView.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/music/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Landroid/net/Uri;)V
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

    .line 208
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;ILjava/util/HashMap;)V
    .locals 0
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

    .line 213
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;

    move-result-object p2

    .line 1105
    iput-object p3, p2, Lcom/coloros/settings/ringtone/music/c;->f:Ljava/util/HashMap;

    .line 214
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;

    move-result-object p2

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coloros/settings/ringtone/music/c;->a(Ljava/lang/Object;)V

    .line 215
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/coloros/settings/ringtone/music/a;->a(Ljava/util/ArrayList;)V

    .line 216
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)I

    move-result p2

    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-static {p3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setSelectionFromTop(II)V

    return-void
.end method
