.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSubInfoController;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput p2, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget v1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$1:I

    iget v2, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIccSimChallengeResponse$19$PhoneSubInfoController(IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
