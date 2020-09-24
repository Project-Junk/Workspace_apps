.class final Lcom/android/settingslib/q/b$2;
.super Landroid/media/IRemoteVolumeController$Stub;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/q/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/q/b;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/settingslib/q/b$2;->a:Lcom/android/settingslib/q/b;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final remoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/settingslib/q/b$2;->a:Lcom/android/settingslib/q/b;

    invoke-static {v0}, Lcom/android/settingslib/q/b;->b(Lcom/android/settingslib/q/b;)Lcom/android/settingslib/q/b$b;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settingslib/q/b$b;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateRemoteController(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/settingslib/q/b$2;->a:Lcom/android/settingslib/q/b;

    invoke-static {v0}, Lcom/android/settingslib/q/b;->b(Lcom/android/settingslib/q/b;)Lcom/android/settingslib/q/b$b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/q/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
