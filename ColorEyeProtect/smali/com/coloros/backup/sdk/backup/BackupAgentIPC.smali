.class public abstract Lcom/coloros/backup/sdk/backup/BackupAgentIPC;
.super Lcom/coloros/backup/sdk/BackupAgent;


# static fields
.field protected static final END:I = 0x4

.field protected static final GET_COUNT_ERROR:I = 0x64

.field protected static final INIT:I = 0x1

.field protected static final IN_PROGRESS:I = 0x3

.field protected static final NONE:I = 0x0

.field protected static final START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackupAgentIPC"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/BackupAgent;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    iget p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setProgress(I)V
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    if-ge v0, p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "BackupAgentIPC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this progress is your want? Old is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method
