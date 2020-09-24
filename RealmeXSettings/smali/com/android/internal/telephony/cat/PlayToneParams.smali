.class Lcom/android/internal/telephony/cat/PlayToneParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 119
    iput-object p2, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 120
    new-instance p1, Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-direct {p1, p4, p3, p5}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 126
    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
