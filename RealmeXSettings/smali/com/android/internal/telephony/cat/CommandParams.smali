.class Lcom/android/internal/telephony/cat/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mLoadIconFailed:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandDetails;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method