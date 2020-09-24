.class public final Lcom/android/settings/deviceinfo/imei/a;
.super Ljava/lang/Object;
.source "ImeiInfoDialogController.java"


# instance fields
.field final a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

.field final b:Landroid/telephony/TelephonyManager;

.field final c:Landroid/telephony/SubscriptionInfo;

.field final d:I


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V
    .locals 2
    .param p1    # Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    .line 77
    iput p2, p0, Lcom/android/settings/deviceinfo/imei/a;->d:I

    .line 78
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 79
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 80
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    .line 81
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 83
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    .line 84
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    return-void

    :cond_0
    if-ltz p2, :cond_1

    .line 1166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 86
    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 61
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method
