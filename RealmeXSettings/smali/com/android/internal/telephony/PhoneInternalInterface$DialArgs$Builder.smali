.class public Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mIntentExtras:Landroid/os/Bundle;

.field protected mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field protected mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 1

    .line 92
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;-><init>(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;)V

    return-object v0
.end method

.method public setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/UUSInfo;",
            ")TT;"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object p0
.end method

.method public setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 82
    iput p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    return-object p0
.end method
