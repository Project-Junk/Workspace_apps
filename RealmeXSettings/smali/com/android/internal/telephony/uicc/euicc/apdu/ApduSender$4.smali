.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field final synthetic val$exception:Ljava/lang/Throwable;

.field final synthetic val$response:[B

.field final synthetic val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;[B)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$exception:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$response:[B

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$000(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->access$102(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)Z

    .line 245
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$exception:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$response:[B

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 245
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 240
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method