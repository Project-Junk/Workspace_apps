.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Ja9yTBcEYPqTRBIP-hL0otixVeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/PhoneSubInfoController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Ja9yTBcEYPqTRBIP-hL0otixVeE;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Ja9yTBcEYPqTRBIP-hL0otixVeE;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getVoiceMailNumberForSubscriber$12$PhoneSubInfoController(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
