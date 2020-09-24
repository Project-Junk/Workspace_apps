.class public Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
.super Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder<",
        "Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClirMode:I

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)Landroid/telecom/Connection$RttTextStream;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    return p0
.end method

.method public static from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 2

    .line 144
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 147
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    return-object p0
.end method

.method public static from(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->videoState:I

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    .line 156
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .locals 2

    .line 171
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;Lcom/android/internal/telephony/imsphone/ImsPhone$1;)V

    return-object v0
.end method

.method public setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    return-object p0
.end method

.method public setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object p0
.end method
