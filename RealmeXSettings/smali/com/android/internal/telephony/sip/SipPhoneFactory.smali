.class public Lcom/android/internal/telephony/sip/SipPhoneFactory;
.super Ljava/lang/Object;
.source "SipPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 1

    .line 42
    :try_start_0
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v0, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object p0

    .line 43
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/sip/SipPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "SipPhoneFactory"

    const-string p2, "makePhone"

    .line 45
    invoke-static {p1, p2, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
