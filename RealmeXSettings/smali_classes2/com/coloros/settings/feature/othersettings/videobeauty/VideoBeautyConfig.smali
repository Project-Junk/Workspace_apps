.class public Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;
.super Ljava/lang/Object;
.source "VideoBeautyConfig.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private appConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private isFunctionOpen:I

.field private isParamAdjustOpen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isParamAdjustOpen:I

    return-void
.end method


# virtual methods
.method public getAppConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->appConfigList:Ljava/util/List;

    return-object v0
.end method

.method public getIsFunctionOpen()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isFunctionOpen:I

    return v0
.end method

.method public getIsParamAdjustOpen()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isParamAdjustOpen:I

    return v0
.end method

.method public setAppConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->appConfigList:Ljava/util/List;

    return-void
.end method

.method public setIsFunctionOpen(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isFunctionOpen:I

    return-void
.end method

.method public setIsSupportParamAdjust(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isParamAdjustOpen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoBeautyConfig{isFunctionOpen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isFunctionOpen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isSupportParamAdjust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->isParamAdjustOpen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "appConfigList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->appConfigList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
