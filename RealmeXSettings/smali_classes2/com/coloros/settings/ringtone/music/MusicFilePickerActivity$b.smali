.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;
.super Ljava/lang/Object;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/net/Uri;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method
