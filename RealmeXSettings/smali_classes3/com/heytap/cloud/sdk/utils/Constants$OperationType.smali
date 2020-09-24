.class public Lcom/heytap/cloud/sdk/utils/Constants$OperationType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationType"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "add"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final DOWNLOAD_FILE:Ljava/lang/String; = "download"

.field public static final OVERWRITE:Ljava/lang/String; = "overwrite"

.field public static final SYNCDELETE:Ljava/lang/String; = "syncdelete"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final UPLOAD_FILE:Ljava/lang/String; = "upload"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
