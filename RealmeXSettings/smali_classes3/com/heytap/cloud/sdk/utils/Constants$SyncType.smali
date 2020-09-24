.class public Lcom/heytap/cloud/sdk/utils/Constants$SyncType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncType"
.end annotation


# static fields
.field public static final BACKUP:Ljava/lang/String; = "backup"

.field public static final BACKUP_FULL:Ljava/lang/String; = "backup_full"

.field public static final BACKUP_INCR:Ljava/lang/String; = "backup_incr"

.field public static final RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RESTORE_FULL:Ljava/lang/String; = "restore_full"

.field public static final RESTORE_INCR:Ljava/lang/String; = "restore_incr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
