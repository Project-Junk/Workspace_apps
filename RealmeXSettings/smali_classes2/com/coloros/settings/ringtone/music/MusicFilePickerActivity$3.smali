.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;
.super Ljava/lang/Object;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/music/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/ringtone/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_1

    .line 456
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->h(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1208b4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 457
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->i(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    :cond_1
    return-void
.end method
