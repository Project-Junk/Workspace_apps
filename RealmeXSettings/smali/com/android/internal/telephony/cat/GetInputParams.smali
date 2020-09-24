.class Lcom/android/internal/telephony/cat/GetInputParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mInput:Lcom/android/internal/telephony/cat/Input;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    if-eqz v0, :cond_0

    .line 212
    iput-object p1, v0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
