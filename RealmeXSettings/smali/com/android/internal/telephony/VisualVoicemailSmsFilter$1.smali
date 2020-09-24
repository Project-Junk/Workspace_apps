.class Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"

# interfaces
.implements Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromSubId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    .line 79
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    .line 86
    :cond_1
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->access$000()Landroid/content/ComponentName;

    move-result-object v1

    .line 87
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method
