.class public abstract Lcom/android/internal/telephony/AbstractGsmCdmaPhone;
.super Lcom/android/internal/telephony/Phone;
.source "AbstractGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbstractGsmCdmaPhone"


# instance fields
.field private final mName:Ljava/lang/String;

.field protected mPhoneReference:Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 14
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoPhoneManager()Lcom/android/internal/telephony/OppoPhoneManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/android/internal/telephony/OppoPhoneManager;->createOppoGsmCdmaPhoneReference(Lcom/android/internal/telephony/AbstractGsmCdmaPhone;)Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->mPhoneReference:Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;

    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractGsmCdmaPhone;->mPhoneReference:Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractGsmCdmaPhone$GsmCdmaPhoneReference;->dispose()V

    return-void
.end method
