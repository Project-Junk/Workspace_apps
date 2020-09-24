.class abstract Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.super Landroid/net/sip/SipAudioCall$Listener;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SipAudioCallAdapter"
.end annotation


# static fields
.field private static final SACA_DBG:Z = true

.field private static final SACA_TAG:Ljava/lang/String; = "SipAudioCallAdapter"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SipAudioCallAdapter"

    .line 1083
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 1

    .line 1038
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCallBusy: call="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    return-void
.end method

.method protected abstract onCallEnded(I)V
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 2

    .line 1030
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallEnded: call="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    return-void
.end method

.method protected abstract onError(I)V
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " code="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/16 p1, 0x24

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_1
    const/16 p1, 0xc

    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_2
    const/16 p1, 0xd

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_3
    const/4 p1, 0x7

    .line 1057
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_4
    const/16 p1, 0x8

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_5
    const/16 p1, 0xa

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_6
    const/16 p1, 0xe

    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_7
    const/16 p1, 0xb

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    :pswitch_8
    const/16 p1, 0x9

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
