.class public Lcom/android/internal/telephony/OemHookIndication;
.super Landroid/hardware/radio/b/a/b$a;
.source "OemHookIndication.java"


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/hardware/radio/b/a/b$a;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public oemHookRaw(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 43
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 46
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x404

    .line 45
    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
