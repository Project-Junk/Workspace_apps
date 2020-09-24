.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected final getEFPath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4f20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "3F007F105F3A"

    :cond_0
    return-object p1

    :cond_1
    :pswitch_0
    const-string p1, "3F007FFF"

    return-object p1

    :cond_2
    const-string p1, "3F007F105F3C"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6f30
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CsimFH"

    .line 67
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CsimFH"

    .line 72
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
