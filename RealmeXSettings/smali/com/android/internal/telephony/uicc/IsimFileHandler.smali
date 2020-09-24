.class public final Lcom/android/internal/telephony/uicc/IsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "IsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IsimFH"


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

    const/16 v0, 0x6f07

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f09

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_0
    const-string p1, "3F007FFF"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6f02
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IsimFH"

    .line 50
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IsimFH"

    .line 55
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
