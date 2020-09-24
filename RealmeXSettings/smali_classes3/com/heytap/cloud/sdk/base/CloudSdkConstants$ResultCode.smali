.class public Lcom/heytap/cloud/sdk/base/CloudSdkConstants$ResultCode;
.super Ljava/lang/Object;
.source "CloudSdkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/base/CloudSdkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCode"
.end annotation


# static fields
.field public static final CANCEL:Ljava/lang/String; = "CANCEL"

.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final TOKEN_INVALID:Ljava/lang/String; = "TOKEN_INVALID"

.field public static final UNSUPPORTED:Ljava/lang/String; = "UNSUPPORTED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
