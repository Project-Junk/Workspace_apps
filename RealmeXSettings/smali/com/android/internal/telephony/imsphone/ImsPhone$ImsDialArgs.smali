.class public Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
.super Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsDialArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    }
.end annotation


# instance fields
.field public final clirMode:I

.field public final rttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)V
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;-><init>(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;)V

    .line 186
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)Landroid/telecom/Connection$RttTextStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 187
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->access$200(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;Lcom/android/internal/telephony/imsphone/ImsPhone$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)V

    return-void
.end method
