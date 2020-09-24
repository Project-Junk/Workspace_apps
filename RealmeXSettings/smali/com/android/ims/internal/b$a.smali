.class final Lcom/android/ims/internal/b$a;
.super Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/internal/b;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/b;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/b;B)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/ims/internal/b$a;-><init>(Lcom/android/ims/internal/b;)V

    return-void
.end method


# virtual methods
.method public final changeCallDataUsage(J)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final changePeerDimensions(II)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {p1}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final changeVideoQuality(I)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleCallSessionEvent(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {v0}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 97
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 98
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/android/ims/internal/b$a;->a:Lcom/android/ims/internal/b;

    invoke-static {p1}, Lcom/android/ims/internal/b;->b(Lcom/android/ims/internal/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
