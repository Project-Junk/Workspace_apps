.class final Lcom/android/ims/internal/b$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/internal/b;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/b;Landroid/os/Looper;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/b;->changeVideoQuality(I)V

    goto/16 :goto_1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/b;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/internal/b;->setCallDataUsage(J)V

    .line 210
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->f(Lcom/android/ims/internal/b;)Landroid/os/RegistrantList;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    .line 198
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 200
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-virtual {v2, v0, v1}, Lcom/android/ims/internal/b;->changePeerDimensions(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 195
    :pswitch_4
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/b;->handleCallSessionEvent(I)V

    return-void

    .line 175
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 177
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 179
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 181
    iget-object v3, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/ims/internal/b;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 184
    iget-object v3, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-static {v3}, Lcom/android/ims/internal/b;->e(Lcom/android/ims/internal/b;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/b$b;

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v4, v0, v1, v2}, Lcom/android/ims/internal/b$b;->onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 156
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 157
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->c(Lcom/android/ims/internal/b;)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 157
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    .line 158
    invoke-static {v0}, Lcom/android/ims/internal/b;->d(Lcom/android/ims/internal/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "receiveSessionModifyRequest: requestedVideoState=%s; rejecting as video is disabled."

    .line 160
    invoke-static {v0, p1, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :try_start_2
    iget-object p1, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-static {p1}, Lcom/android/ims/internal/b;->a(Lcom/android/ims/internal/b;)Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object p1

    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/ims/internal/b$2;->a:Lcom/android/ims/internal/b;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/b;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
