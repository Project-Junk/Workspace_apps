.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected final getEFPath(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x6f11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f46

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6fad

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6fc5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6fcd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f3f

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "SIMFileHandler"

    const-string v1, "Error: EF Path being returned in null"

    .line 70
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "3F007F10"

    return-object p1

    :cond_2
    :pswitch_0
    const-string p1, "3F007F20"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6f13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6fc7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SIMFileHandler"

    .line 77
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SIMFileHandler"

    .line 82
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
