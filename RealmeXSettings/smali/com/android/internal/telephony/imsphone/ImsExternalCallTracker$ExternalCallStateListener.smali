.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
.super Lcom/android/ims/d;
.source "ImsExternalCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {p0}, Lcom/android/ims/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    return-void
.end method
