.class public Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;
.super Lcom/android/settings/slices/c;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteVolumeSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/c<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/settingslib/q/b$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/q/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 247
    new-instance p2, Lcom/android/settingslib/q/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/settingslib/q/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/q/b$a;)V

    iput-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->a:Lcom/android/settingslib/q/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->a:Lcom/android/settingslib/q/b;

    invoke-virtual {v0}, Lcom/android/settingslib/q/b;->a()V

    return-void
.end method

.method public final a(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->f()V

    return-void
.end method

.method public final a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->f()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->a:Lcom/android/settingslib/q/b;

    invoke-virtual {v0}, Lcom/android/settingslib/q/b;->b()V

    return-void
.end method

.method public final b(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->f()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->a:Lcom/android/settingslib/q/b;

    return-void
.end method
