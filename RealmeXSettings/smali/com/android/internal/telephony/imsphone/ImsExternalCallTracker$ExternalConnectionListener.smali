.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .locals 3

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPullExternalCall: connection = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onPullExternalCall : No call puller defined"

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    move-result v2

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result p1

    .line 90
    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPullCall;->pullExternalCall(Ljava/lang/String;II)V

    return-void
.end method
