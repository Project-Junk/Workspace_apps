.class public final Lcom/android/internal/telephony/uicc/RuimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "RuimFileHandler.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RuimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected final getEFPath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4f20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_0
    const-string p1, "3F007F25"

    return-object p1

    :cond_1
    const-string p1, "3F007F105F3C"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6f30
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 14

    move-object v0, p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    move v5, p1

    move-object/from16 v3, p5

    .line 42
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 51
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x4f20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mAid:Ljava/lang/String;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected final logd(Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RuimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RuimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
