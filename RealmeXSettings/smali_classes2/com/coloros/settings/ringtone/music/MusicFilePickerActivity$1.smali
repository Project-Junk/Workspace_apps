.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;
.super Ljava/lang/Object;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->onResume()V
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

    .line 359
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coloros/settings/ringtone/g;->a:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z

    .line 364
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z

    .line 365
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    :cond_0
    return-void
.end method
