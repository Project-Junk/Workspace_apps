.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AjZFvwh3Ujx5W3fleFNksc6bLf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AjZFvwh3Ujx5W3fleFNksc6bLf0;->f$0:I

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AjZFvwh3Ujx5W3fleFNksc6bLf0;->f$0:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getCarrierInfoForImsiEncryption$3(ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method
