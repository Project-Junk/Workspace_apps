.class public Lcom/oppo/statistics/data/CommonBean;
.super Ljava/lang/Object;
.source "CommonBean.java"

# interfaces
.implements Lcom/oppo/statistics/data/StatisticBean;


# instance fields
.field private eventID:Ljava/lang/String;

.field private logMap:Ljava/lang/String;

.field private logTag:Ljava/lang/String;

.field private uploadNow:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    .line 10
    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    .line 16
    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getEventID()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMap()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadNow()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return v0
.end method

.method public setEventID(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->eventID:Ljava/lang/String;

    return-void
.end method

.method public setLogMap(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logMap:Ljava/lang/String;

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oppo/statistics/data/CommonBean;->logTag:Ljava/lang/String;

    return-void
.end method

.method public setUploadNow(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/oppo/statistics/data/CommonBean;->uploadNow:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type is :"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uploadNow is :"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getUploadNow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag is :"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventID is :"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " map is :"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogMap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
