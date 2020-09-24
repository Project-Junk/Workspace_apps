.class public Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;
.super Ljava/lang/Object;
.source "VideoBeautyAppConfig.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private videoBeautyParam:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->videoBeautyParam:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->appName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVideoBeautyParam(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->videoBeautyParam:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoBeautyAppConfig{appName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", videoBeautyParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->videoBeautyParam:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
