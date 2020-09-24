.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected final getEFPath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f4b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f4c

    if-eq p1, v0, :cond_1

    const-string v0, "3F007F105F3A"

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :sswitch_0
    return-object v0

    :cond_1
    :pswitch_0
    :sswitch_1
    const-string p1, "3F007FFF"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_0
        0x6f05 -> :sswitch_1
        0x6f11 -> :sswitch_1
        0x6f31 -> :sswitch_1
        0x6f38 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f49 -> :sswitch_1
        0x6f4e -> :sswitch_1
        0x6f7b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fcd -> :sswitch_1
        0x6fd9 -> :sswitch_1
        0x6fdc -> :sswitch_1
    .end sparse-switch

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
    .packed-switch 0x6f3e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6f60
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6fc5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UsimFH"

    .line 91
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UsimFH"

    .line 96
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
