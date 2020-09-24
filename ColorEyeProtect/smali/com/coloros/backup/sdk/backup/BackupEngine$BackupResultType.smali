.class public final enum Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/backup/BackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackupResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

.field public static final enum Cancel:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

.field public static final enum Error:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

.field public static final enum Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

.field public static final enum Success:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Success:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    const-string v1, "Fail"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    const-string v1, "Error"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Error:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    const-string v1, "Cancel"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Cancel:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    sget-object v1, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Success:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Error:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Cancel:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->$VALUES:[Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;
    .locals 1

    const-class v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;
    .locals 1

    sget-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->$VALUES:[Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-virtual {v0}, [Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    return-object v0
.end method
