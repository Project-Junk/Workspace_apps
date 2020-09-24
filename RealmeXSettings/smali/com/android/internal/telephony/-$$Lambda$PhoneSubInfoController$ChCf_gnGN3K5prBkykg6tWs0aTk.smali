.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ChCf_gnGN3K5prBkykg6tWs0aTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ImsiEncryptionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ChCf_gnGN3K5prBkykg6tWs0aTk;->f$0:Landroid/telephony/ImsiEncryptionInfo;

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ChCf_gnGN3K5prBkykg6tWs0aTk;->f$0:Landroid/telephony/ImsiEncryptionInfo;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$setCarrierInfoForImsiEncryption$4(Landroid/telephony/ImsiEncryptionInfo;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
