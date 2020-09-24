.class public Lcom/android/internal/telephony/DriverCall;
.super Ljava/lang/Object;
.source "DriverCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DriverCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x6

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x9

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x8

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x3

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x4

.field public static final AUDIO_QUALITY_GSM_HR:I = 0x5

.field public static final AUDIO_QUALITY_UNSPECIFIED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "DriverCall"


# instance fields
.field public TOA:I

.field public als:I

.field public audioQuality:I

.field public index:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public isMT:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public isMpty:Z

.field public isVoice:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public namePresentation:I

.field public number:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public numberPresentation:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public state:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    return-void
.end method

.method static fromCLCCLine(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall;
    .locals 5

    .line 96
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 100
    new-instance v1, Lcom/android/internal/telephony/ATResponseParser;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATResponseParser;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 104
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 105
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 107
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 108
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 111
    iput v4, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 113
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 118
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 119
    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 122
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 127
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    .line 132
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid CLCC line: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DriverCall"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static presentationFromCLIP(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 183
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal presentation "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 168
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 170
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal call state "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 166
    :cond_2
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 165
    :cond_3
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 164
    :cond_4
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 163
    :cond_5
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget p1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eqz v2, :cond_0

    const-string v2, "conf"

    goto :goto_0

    :cond_0
    const-string v2, "norm"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v2, :cond_1

    const-string v2, "mt"

    goto :goto_1

    :cond_1
    const-string v2, "mo"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "voc"

    goto :goto_2

    :cond_2
    const-string v2, "nonvoc"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
